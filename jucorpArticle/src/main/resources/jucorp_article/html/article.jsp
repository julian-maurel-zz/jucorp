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

		<div class="row" style="margin-top:25px;">
			<div class="row featurette">
				<div class="col-md-7">
					<h2 class="featurette-heading">
                      <a href="<c:url value='${currentNode.properties.link.node.url}' />">${currentNode.properties.title.string}</a>
						<span class="text-muted"> - ${currentNode.properties.date.string}</span>
					</h2>
					${currentNode.properties.description.string}
				</div>
				<div class="col-md-5">
                  <a href="<c:url value='${currentNode.properties.link.node.url}' />"><img class="featurette-image img-responsive" alt="500x500" data-src="holder.js/500x500/auto" src="<c:url value='${currentNode.properties.picture.node.url}' />"></a>
				</div>
			</div>
		</div>
		