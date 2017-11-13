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
<c:if test="${!renderContext.editMode}">
  
  	<div id="my-chart" style="height:300px; width:100%;">
      <div style="position:absolute; margin-left:75px; margin-top:30px;"><span style="color:red;"> ----- Julian Corporation</span><br /><span style="color:green;"> ----- Groupe Br</span></div></div>
  <center>
    <strong>Performances boursière NASDAQ sur les 30 derniers jours glissants</strong>
  </center>
  <script>
    <template:addResources type="javascript" resources="chartist.min.js"/>
    <template:addResources type="css" resources="chartist.min.css"/>

/* Initialize the chart with the above settings */
new Chartist.Line('#my-chart', {
  labels: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30],
  series: [
    
    <c:forEach items="${currentNode.nodes}"   varStatus="status" var="share">
    <c:if test="${!empty share.properties.name}">
    {
    // ${share.properties.name.string}     
      data:
      
    	<template:module node="${share}" />
    },
  </c:if>
  </c:forEach>
    ]
}, {
  low: 382,
  high:600
  
});
  </script>
  
</c:if>
<c:if test="${renderContext.editMode}">
  <template:module path="*" />
  
</c:if>

