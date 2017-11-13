<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="jcr" uri="http://www.jahia.org/tags/jcr" %>
<%--@elvariable id="currentNode" type="org.jahia.services.content.JCRNodeWrapper"--%>
<%--@elvariable id="out" type="java.io.PrintWriter"--%>
<%--@elvariable id="script" type="org.jahia.services.render.scripting.Script"--%>
<%--@elvariable id="scriptInfo" type="java.lang.String"--%>
<%--@elvariable id="workspace" type="java.lang.String"--%>
<%--@elvariable id="renderContext" type="org.jahia.services.render.RenderContext"--%>
<%--@elvariable id="currentResource" type="org.jahia.services.render.Resource"--%>
<%--@elvariable id="url" type="org.jahia.services.render.URLGenerator"--%>
<html>
	<head>

		<template:addResources type="css" resources="bootstrap.min.css"/>
		<template:addResources type="javascript" resources="jquery-2.1.0.min.js"/>
      	<template:addResources type="javascript" resources="bootstrap.min.js"/>
      <title>${renderContext.mainResource.node.properties['jcr:title'].string} - Julian Corporation</title>
	</head>
	<body>
      <script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-8905364-1', 'auto');
  ga('send', 'pageview');

</script>
            <div id="fb-root"></div>
      <script>(function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.0";
        fjs.parentNode.insertBefore(js, fjs);
      }(document, 'script', 'facebook-jssdk'));</script>
	
	<div class="container">
		<div class="row">
			<div class="row featurette">
				<div class="col-md-12">
					<h2 class="featurette-heading">
						Portail de la Julian Corporation
						<span class="text-muted"> - Bienvenue</span>
					</h2>
					<p class="lead">Le portail de la Julian Corporation évolue et s'allège.</p>
					<p>Retrouvez la section récit de voyages, où nous vous raconterons nos aventures épiques et trépidantes. Vous trouverez également les différents projets sur lesquels travaille la Julian Corporation ainsi que divers liens au centre de l'activité du groupe.<p>
				</div>
			</div>
		</div>
      <template:area path="homeContent" />
      
	</div>
      
	</body>
</html>

