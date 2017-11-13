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


<jcr:node path="${currentNode.path}/childPicture1" var="pic1" />
<c:set value="${pic1.properties['j:node'].node}" var="pic1" />

<jcr:node path="${currentNode.path}/childPicture2" var="pic2" />
<c:set value="${pic2.properties['j:node'].node}" var="pic2" />

<jcr:node path="${currentNode.path}/childPicture3" var="pic3" />
<c:set value="${pic3.properties['j:node'].node}" var="pic3" />

<c:if test="${pic1 != null}">
<script type="text/javascript">
$(document).ready(function() {
   

	$("#${pic1.identifier}").fancybox({
    	openEffect	: 'elastic',
    	closeEffect	: 'elastic',
afterLoad   : function() {
           this.inner.after( '<center><a target="_blank" href="${pic1.url}">Télécharger l\'image en pleine résolution</a></center>' );
    },
    	helpers : {
    		title : {
    			type : 'inside'
    		}
    	}
    });
});
</script>
</c:if>


<c:if test="${pic2 != null}">

<script type="text/javascript">
$(document).ready(function() {
   

	$("#${pic2.identifier}").fancybox({
    	openEffect	: 'elastic',
    	closeEffect	: 'elastic',
afterLoad   : function() {
           this.inner.after( '<center><a target="_blank" href="${pic2.url}">Télécharger l\'image en pleine résolution</a></center>' );
    },
    	helpers : {
    		title : {
    			type : 'inside'
    		}
    	}
    });
});
</script>
  </c:if>
<c:if test="${pic3 != null}">

<script type="text/javascript">
$(document).ready(function() {
   

	$("#${pic3.identifier}").fancybox({
    	openEffect	: 'elastic',
    	closeEffect	: 'elastic',
afterLoad   : function() {
           this.inner.after( '<center><a target="_blank" href="${pic3.url}">Télécharger l\'image en pleine résolution</a></center>' );
    },
    	helpers : {
    		title : {
    			type : 'inside'
    		}
    	}
    });
});
</script>
</c:if>



<c:set value="${pic1.thumbnailUrls['w500']}" var="picture1URL" />
<c:set value="${pic2.thumbnailUrls['w500']}" var="picture2URL" />
<c:set value="${pic3.thumbnailUrls['w500']}" var="picture3URL" />

<c:set value="${pic1.thumbnailUrls['w1900']}" var="picture1URLHD" />
<c:set value="${pic2.thumbnailUrls['w1900']}" var="picture2URLHD" />
<c:set value="${pic3.thumbnailUrls['w1900']}" var="picture3URLHD" />

		<div class="row">
			<div class="row featurette">
				<div class="col-md-4">
                  <template:module view="edit" path="childPicture1">
                    <template:param value="${currentNode.properties.title1.string}" name="title" />
                  </template:module>
                </div>
             	<div class="col-md-4">
                  <template:module view="edit" path="childPicture2">
                    <template:param value="${currentNode.properties.title2.string}" name="title" />
                  </template:module>
                </div>				
              
             	<div class="col-md-4">
                  <template:module view="edit" path="childPicture3">
                    <template:param value="${currentNode.properties.title3.string}" name="title" />
                  </template:module>
                </div>	
			</div>
		</div>
              <template:module view="edit" path="childPicture4"/>
