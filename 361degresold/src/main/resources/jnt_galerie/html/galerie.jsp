<%@ page language="java" contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="jcr" uri="http://www.jahia.org/tags/jcr" %>
<%@ taglib prefix="ui" uri="http://www.jahia.org/tags/uiComponentsLib" %>
<%@ taglib prefix="functions" uri="http://www.jahia.org/tags/functions" %>
<%@ taglib prefix="query" uri="http://www.jahia.org/tags/queryLib" %>
<%@ taglib prefix="utility" uri="http://www.jahia.org/tags/utilityLib" %>
<%@ taglib prefix="s" uri="http://www.jahia.org/tags/search" %>
<%--@elvariable id="currentNode" type="org.jahia.services.content.JCRNodeWrapper"--%>
<%--@elvariable id="out" type="java.io.PrintWriter"--%>
<%--@elvariable id="script" type="org.jahia.services.render.scripting.Script"--%>
<%--@elvariable id="scriptInfo" type="java.lang.String"--%>
<%--@elvariable id="workspace" type="java.lang.String"--%>
<%--@elvariable id="renderContext" type="org.jahia.services.render.RenderContext"--%>
<%--@elvariable id="currentResource" type="org.jahia.services.render.Resource"--%>
<%--@elvariable id="url" type="org.jahia.services.render.URLGenerator"--%>

<script>
	function getScrollXY() {
	  var scrOfX = 0, scrOfY = 0;
	  if( typeof( window.pageYOffset ) == 'number' ) {
	    //Netscape compliant
	    scrOfY = window.pageYOffset;
	    scrOfX = window.pageXOffset;
	  } else if( document.body && ( document.body.scrollLeft || document.body.scrollTop ) ) {
	    //DOM compliant
	    scrOfY = document.body.scrollTop;
	    scrOfX = document.body.scrollLeft;
	  } else if( document.documentElement && ( document.documentElement.scrollLeft || document.documentElement.scrollTop ) ) {
	    //IE6 standards compliant mode
	    scrOfY = document.documentElement.scrollTop;
	    scrOfX = document.documentElement.scrollLeft;
	  }
	  return [ scrOfX, scrOfY ];
	}
	
	var hash = window.location.hash.substring(1);
  
  function displayPic (pic) {
   document.getElementById('img_displayed').src=pic; 
   document.getElementById('img_displayed_class').style.display='block'; 
   document.getElementById('content_display').style.visibility='hidden'; 
   return false; 
  }
	
</script>

<c:if test="${renderContext.editMode}">
	<c:if test="${not empty currentNode.properties.folder}">
      <a href="${url.baseEdit}${currentNode.path}.importPictures.do">Importer les nouvelles images du dossier <strong>${currentNode.properties.folder.node.path} (cliquer ici)</strong></a>	
      <br />
      Double cliquer ici pour editer éditer la galerie (changer le répertoire des photos)
</c:if>
</c:if>

<div id="img_displayed_class" style="display:none; width:80%; height:100%; background-color:#000000; margin:auto; position:fixed; top:0;">
	<img id="img_displayed" onclick="javascript:document.getElementById('img_displayed').src=''; document.getElementById('img_displayed_class').style.display='none'; document.getElementById('content_display').style.visibility='visible'; content_display" style="height:98%; max-width: 100%; max-height:100%;">
</div>


  <div style="spacer:both;"/>
<div id="content_display" style="visibility: visible;">	
  <c:forEach items="${jcr:getChildrenOfType(currentNode, 'jnt:fileReference')}" var="picReference">
    <div style="float:left; width:207px; text-align:center;"><template:module node="${picReference}" view="renderGallery" /></div>
  </c:forEach>
</div>



<template:include view="pano" />
  <div style="spacer:both;"/>