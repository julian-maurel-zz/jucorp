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
        <template:addResources type="css" resources="jquery.fancybox.css"/>
        <template:addResources type="javascript" resources="jquery.fancybox.js"/>
		<title>${renderContext.mainResource.node.properties['jcr:title'].string} - Julian Corporation</title>
      <meta property="og:title" content="${renderContext.mainResource.node.properties['jcr:title'].string}" />
        <meta property="og:site_name" content="Julian Corporation" />
      <meta property="og:url" content="<c:url value='${renderContext.mainResource.node.url}' />" />
        <meta property="og:image" content="${renderContext.mainResource.node.properties['socialPicture'].node.url}" />
        <meta property="og:description" content="${renderContext.mainResource.node.properties['socialDescription'].string}" />
      <meta property="fb:app_id" content="10151290079224381"/>
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
        <a href="http://www.julian-corporation.com">< Retour à la page d'accueil</a>
        <div class="" style="float:right; padding-top:10px; height:40px;">
          <div  class="fb-share-button" data-href="<c:url value='${renderContext.mainResource.node.url}' />" data-layout="button"></div>
        </div>
          <template:area path="pagecontent" />
        <div class="" style="float:right; padding-top:10px; height:40px;">
          <div  class="fb-share-button" data-href="<c:url value='${renderContext.mainResource.node.url}' />" data-layout="button"></div>
        </div>
        <div class="spacer"></div>
        <div class="fb-comments" data-href="<c:url value='${renderContext.mainResource.node.url}' />" data-numposts="5" data-colorscheme="light"></div>
      </div>
      
	</body>
</html>

