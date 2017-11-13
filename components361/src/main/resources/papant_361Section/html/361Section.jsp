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

<article id="${currentNode.properties['j:nodename'].string}" class="container ${currentNode.properties.couleur.string} clearfix">

   <section class="row imgrow">
      <div class="twelvecol last">
         <div class="ninecol last">
            <header>
              <h2>${currentNode.properties['jcr:title'].string}</h2>
            </header>
        </div>        
      </div>
   </section>
   
	<c:forEach items="${jcr:getChildrenOfType(currentNode, 'papamix:conteneur')}" var="conteneur" varStatus="status">
      	<template:module node="${conteneur}" editable="true" /> 
    </c:forEach>

    <c:if test="${renderContext.editMode}">
      	<div class="spacer"></div>
      <template:module path="*" nodeTypes="papamix:conteneur"/>
  	</c:if>
</article>