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




<c:set value="${currentNode.properties.picture.node.thumbnailUrls['w500']}" var="pictureURL" />
<c:if test="${currentNode.properties.HDpreview.boolean}"><c:set value="${currentNode.properties.picture.node.thumbnailUrls['w1900']}" var="pictureURL" /></c:if>
<c:set value="${currentNode.properties.picture.node.thumbnailUrls['w1900']}" var="pictureURLHD" />



<c:set var="opacity" value="1" />
<c:if test="${renderContext.editMode}">
 	<c:set var="opacity" value="1" /> 
</c:if>

<div class="imgwrap" style="opacity: ${opacity};"><a onClick="displayFullsizePicture('${pictureURLHD}'); return false;" title="test"><img pagespeed_url_hash="" alt="s" src="<c:url value='${pictureURL}' />" style="opacity: 1;"></a></div>
