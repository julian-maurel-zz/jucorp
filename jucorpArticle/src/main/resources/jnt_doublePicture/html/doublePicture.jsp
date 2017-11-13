<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="jcr" uri="http://www.jahia.org/tags/jcr" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--@elvariable id="currentNode" type="org.jahia.services.content.JCRNodeWrapper"--%>
<%--@elvariable id="out" type="java.io.PrintWriter"--%>
<%--@elvariable id="script" type="org.jahia.services.render.scripting.Script"--%>
<%--@elvariable id="scriptInfo" type="java.lang.String"--%>
<%--@elvariable id="workspace" type="java.lang.String"--%>
<%--@elvariable id="renderContext" type="org.jahia.services.render.RenderContext"--%>
<%--@elvariable id="currentResource" type="org.jahia.services.render.Resource"--%>
<%--@elvariable id="url" type="org.jahia.services.render.URLGenerator"--%>


<script type="text/javascript">
$(document).ready(function() {
   

	$("#${currentNode.properties.picture1.node.identifier}").fancybox({
    	openEffect	: 'elastic',
    	closeEffect	: 'elastic',
afterLoad   : function() {
           this.inner.after( '<center><a target="_blank" href="${currentNode.properties.picture1.node.url}">Télécharger l\'image en pleine résolution</a></center>' );
    },
    	helpers : {
    		title : {
    			type : 'inside'
    		}
    	}
    });
});
</script>

<script type="text/javascript">
$(document).ready(function() {
   

	$("#${currentNode.properties.picture2.node.identifier}").fancybox({
    	openEffect	: 'elastic',
    	closeEffect	: 'elastic',
afterLoad   : function() {
           this.inner.after( '<center><a target="_blank" href="${currentNode.properties.picture2.node.url}">Télécharger l\'image en pleine résolution</a></center>' );
    },
    	helpers : {
    		title : {
    			type : 'inside'
    		}
    	}
    });
});
</script>


<c:set value="${currentNode.properties.picture1.node.thumbnailUrls['w500']}" var="picture1URL" />
<c:set value="${currentNode.properties.picture2.node.thumbnailUrls['w500']}" var="picture2URL" />
<c:set value="${currentNode.properties.picture1.node.thumbnailUrls['w1900']}" var="picture1URLHD" />
<c:set value="${currentNode.properties.picture2.node.thumbnailUrls['w1900']}" var="picture2URLHD" />



		<div class="row">
			<div class="row featurette">
				<div class="col-md-5">
                  <center><a id="${currentNode.properties.picture1.node.identifier}" href="<c:url value='${picture1URLHD}' />"><img class="featurette-image img-responsive" alt="${currentNode.properties.title1.string}" data-src="holder.js/500x500/auto" src="<c:url value='${picture1URL}' />"></a></center><p><i><center>${currentNode.properties.title1.string}</center></i></p>
				</div>
              <div class="col-md-2">
              </div>
				<div class="col-md-5">
                  <center><a id="${currentNode.properties.picture2.node.identifier}" href="<c:url value='${picture2URLHD}' />"><img class="featurette-image img-responsive" alt="${currentNode.properties.title2.string}" data-src="holder.js/500x500/auto" src="<c:url value='${picture2URL}' />"></a></center><p><i><center>${currentNode.properties.title2.string}</center></i></p>
				</div>
			</div>
		</div>