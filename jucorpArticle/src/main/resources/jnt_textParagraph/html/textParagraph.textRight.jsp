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

<jcr:node path="${currentNode.path}/childPicture" var="pic1" />
<c:set value="${pic1.properties['j:node'].node}" var="pic1" />

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

		<div class="row">
          
			<div class="row featurette">
              <div class="col-md-5">
              	<template:module view="edit" path="childPicture">
                    <template:param value="${currentNode.properties.pictureDescription.string}" name="title" />
                  </template:module>
              </div>
				<div class="col-md-7">
					<c:if test="${not empty currentNode.properties['title']}">
					<h2 class="featurette-heading">
                      ${currentNode.properties.title.string}
                      <span class="text-muted"> <c:if test="${not empty currentNode.properties.locution}">- ${currentNode.properties.locution.string}</c:if></span>
					</h2>
                  </c:if>
					${currentNode.properties.description.string}		
              </div>
				
			</div>
		</div>