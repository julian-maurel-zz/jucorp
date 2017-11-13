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

<c:set var="temps" value="1s" />
<c:if test="${currentNode.properties['temps'].string != ''}">
  <c:set var="temps" value="${currentNode.properties['temps'].string}" />
</c:if>
<!-- https://youtu.be/ -->
<template:addResources type="css" resources="depeche.css"/>
<div style="float:left;">
<blockquote>
  ${currentNode.properties['depeche'].string}
  <cite>${currentNode.properties['auteur'].string}</cite>
</blockquote>
</div>
<div style="float:left;"><iframe class="youtube-player" type="text/html" width="200" height="200" autoplay="true" src="https://www.youtube.com/embed/${currentNode.properties['video'].string}?start=${temps}&autoplay=1" style="visibility:visible;" frameborder="0" allowfullscreen></iframe>
</div>
<div style="clear:both; margin-top:100px;"> </div>
<template:tokenizedForm>
<form id="depeche-form" class="depeche-form" action="${url.base}${currentNode.parent.path}/*" method="post">
  <input type="hidden" name="jcrNodeType" value="jnt:depeche"/>
  <%-- Define the output format for the new node by default html or by redirectTo--%>
  <input type="hidden" name="jcrNewNodeOutputFormat" value="html"/>
  <fieldset>
    <p class="field">
      Depeche : <input value="" name="depeche" size="75"/> (&lt;br/&gt; autorisés)
    </p>
    <p class="field">
      Auteur : <input value="" name="auteur"/> 
    </p>
    <p class="field">
      Video : <input value="" name="video" /> (Uniquement le code. Ex : zq54msMu3Sc)
    </p>
    <p class="field">
      Seconde de départ : <input value="1" name="temps"> (ex : 85 = 1mn25)
    </p>
    
    <p class="forum_button">
      <input type="submit" value="Valider" class="button" tabindex="4"/>
    </p>
  </fieldset>
</form> 
</template:tokenizedForm>
<center><a href="#" onclick="document.getElementById('depeche-form').style.visibility='visible'" >Créer une depêche</a></center>