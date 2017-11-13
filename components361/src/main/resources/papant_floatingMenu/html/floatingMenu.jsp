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

<jcr:sql var="sections" sql="select * from [papant:361Section] as section  where isdescendantnode(section,['${renderContext.mainResource.node.path}'])"  />
                        

<div style="width: 100%; z-index: 95; text-align:center; height: border-bottom:solid 1px #ffffff; 30px; padding:5px; color:#ffffff; background-color: rgb(0, 0, 0); margin: auto; position: fixed; top: 0px;">
  
  <c:forEach items="${sections.nodes}" var="section" varStatus="status">
    <a href="#${section.properties['j:nodename'].string}">${section.properties['jcr:title'].string}</a>  <c:if test="${!status.last}"> - </c:if>
  </c:forEach>
</div>