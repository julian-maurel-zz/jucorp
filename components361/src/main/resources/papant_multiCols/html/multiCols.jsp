<%@ page language="java" contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="jcr" uri="http://www.jahia.org/tags/jcr" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="functions" uri="http://www.jahia.org/tags/functions" %>
<%--@elvariable id="currentNode" type="org.jahia.services.content.JCRNodeWrapper"--%>
<%--@elvariable id="out" type="java.io.PrintWriter"--%>
<%--@elvariable id="script" type="org.jahia.services.render.scripting.Script"--%>
<%--@elvariable id="scriptInfo" type="java.lang.String"--%>
<%--@elvariable id="workspace" type="java.lang.String"--%>
<%--@elvariable id="renderContext" type="org.jahia.services.render.RenderContext"--%>
<%--@elvariable id="currentResource" type="org.jahia.services.render.Resource"--%>
<%--@elvariable id="url" type="org.jahia.services.render.URLGenerator"--%>

<c:set var="colNumber" value="${currentNode.properties.colNumber.string}" />

<c:set var="itemNumber" value="${currentNode.nodes.size}" />

<c:set var="itemPerCol" value="${functions:round(functions:ceil(itemNumber / colNumber))}" />

<c:set var="className" value="" />

<c:if test="${colNumber eq '1'}">
  	<c:set var="className" value="twelvecol" />
</c:if>

<c:if test="${colNumber eq '2'}">
  	<c:set var="className" value="sixcol" />
</c:if>

<c:if test="${colNumber eq '3'}">
  	<c:set var="className" value="fourcol" />
</c:if>


<c:if test="${colNumber eq '4'}">
  	<c:set var="className" value="threecol" />
</c:if>

<c:if test="${itemNumber gt 0}">
  <section class="row imgrow">
    <c:forEach var="entry" begin="0" varStatus="stat" end="${colNumber-1}">
      <c:set var="lastClass" value="" /><c:if test="${stat.last}"><c:set var="lastClass" value="last" /></c:if>
      <div class="${className} o ${lastClass}">
        <c:forEach items="${jcr:getChildrenOfType(currentNode, 'papamix:contenu')}" begin="${itemPerCol*(entry)}" end="${(itemPerCol)*(entry+1)-1}" var="contenu" varStatus="status">
          <template:module node="${contenu}" editable="true"/>
        </c:forEach>
      </div>
    </c:forEach>
  </section>
</c:if>
<c:if test="${renderContext.editMode}">
    <div class="spacer"></div>
  	<template:module path="*" nodeTypes="papamix:contenu"/>
</c:if>

