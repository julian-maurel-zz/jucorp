package org.jahia.modules.degresold.actions;

import org.jahia.bin.Action;
import org.jahia.bin.ActionResult;
import org.jahia.services.content.JCRNodeWrapper;
import org.jahia.services.content.JCRSessionWrapper;
import org.jahia.services.render.RenderContext;
import org.jahia.services.render.Resource;
import org.jahia.services.render.URLResolver;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.jcr.NodeIterator;
import javax.jcr.query.Query;
import javax.jcr.query.QueryResult;
import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

public class ImportPictures extends Action {
    @Override
    public String getName() {
        return name;
    }

    @Override
    public void setName(String name) {
        this.name = name;
    }

    private String name;
    private static Logger logger = LoggerFactory.getLogger(ImportPictures.class);

    @Override
    public ActionResult doExecute(HttpServletRequest req, RenderContext renderContext, Resource resource, JCRSessionWrapper session, Map<String, List<String>> parameters, URLResolver urlResolver) throws Exception {
        QueryResult queryResult = null;
        Query q = session.getWorkspace().getQueryManager().createQuery("select * from [jmix:image] as file where ISDESCENDANTNODE(file, '"+resource.getNode().getProperty("folder").getNode().getPath()+"') order by file.[j:nodename]", Query.JCR_SQL2);
        queryResult = q.execute();

        NodeIterator iterator = queryResult.getNodes();

        JCRNodeWrapper newImage;
        int i=0;
        while(iterator.hasNext()) {
            JCRNodeWrapper node = (JCRNodeWrapper) iterator.nextNode();
            logger.info("found picture:" + node.getPath());
            if (!session.nodeExists(resource.getNode().getPath()+"/"+node.getName())) {
                logger.info("## adding new picture:" + node.getPath());
                JCRNodeWrapper newReference = resource.getNode().addNode(node.getName(), "jnt:fileReference");
                newReference.setProperty("j:node", node.getIdentifier());
                newReference.save();
            }
        }
        return new ActionResult(200, resource.getNode().getParent().getParent().getPath());
    }
}
