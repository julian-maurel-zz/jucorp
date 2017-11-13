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

<div style="width:15%; float:left; text-align:left;">
  <a href="${renderContext.site.home.url}"><img src="/modules/361degresoldtemplate/images/logo.jpg"></a>
  <c:forEach items="${jcr:getChildrenOfType(renderContext.site.home, 'jnt:page')}" var="page">
    <div class="titre_categorie"><a href="${page.url}"><font color="#2697d1">${page.properties['jcr:title'].string}</font></a></div>
    <c:set var="subSection" value="false" />
    <c:forEach items="${jcr:getMeAndParentsOfType(renderContext.mainResource.node, 'jnt:page')}" var="subpage">
      	<c:if test="${subpage.path == page.path && page.path != renderContext.site.home.path}">
    		<c:forEach items="${jcr:getChildrenOfType(subpage, 'jnt:page')}" var="subpage">
              <div class="sous_categorie"><a href="${subpage.url}">${subpage.properties['jcr:title'].string}</a></div>
          	</c:forEach>
    	</c:if>
    </c:forEach>  
  </c:forEach>  
 </div>