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
<!DOCTYPE html>
            <html style="" class=" js flexbox canvas canvastext webgl no-touch geolocation postmessage no-websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients no-cssreflections csstransforms csstransforms3d csstransitions fontface video audio localstorage sessionstorage webworkers applicationcache svg inlinesvg smil svgclippaths" lang="en">
               <!--<![endif]-->
               <head>
                  <meta http-equiv="content-type" content="text/html; charset=UTF-8">
                  <meta charset="UTF-8">
                  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
                  <title>${fn:escapeXml(renderContext.mainResource.node.displayableName)}</title>
                  <meta name="viewport" content="width=device-width, initial-scale=1.0">
                  <template:addResources type="css" resources="boiler.css, 1140.css, style.css, images.css"/>
				   <c:if test="${renderContext.editMode}"><template:addResources type="css" resources="361edit.css"/></c:if>
               </head>
               <body>
                  <div id="header-container" class="container">
                     <div id="top"><a name="top"></a></div>
                     <header id="page-header" class="row">
                        <div class="fivecol">
                           <h1 id="title">361degres.fr</h1>
                        </div>
                     </header>
                  </div>
                 
               
                  <div id="main" class="wrapper clearfix" style="clear:both">
                     <div id="article-container">
                        <template:area path="pagecontent" />
                     </div>
                     <!-- article-container -->
                  </div>
                  <footer id="page-footer">
                     <div class="container">
                        <div class="row">
                           <div class="sixcol">
                              <ul class="nodot">
                                 <li><strong>Photographies par François Maurel (sauf mention contraire)</strong></li>
                              </ul>
                           </div>
                           <div class="sixcol last" style="text-align: right">
                             <a href="${jcr:getParentOfType(renderContext.mainResource.node,'jnt:page').url}#${renderContext.mainResource.node.identifier}">Revenir à la page précédente</a>
                           </div>
                        </div>
                     </div>
                  </footer>

                  <script></script>
                  <script>//<![CDATA[
                     (function(){var d=encodeURIComponent,f=window,g=document,h="documentElement",k="length",l="prototype",m="body",p="&",s="&ci=",t=",",u="?",v="Content-Type",w="Microsoft.XMLHTTP",x="Msxml2.XMLHTTP",y="POST",z="application/x-www-form-urlencoded",A="img",B="input",C="load",D="oh=",E="on",F="pagespeed_url_hash",G="url=";f.pagespeed=f.pagespeed||{};var H=f.pagespeed,I=function(a,b,c){this.c=a;this.e=b;this.d=c;this.b=this.f();this.a={}};I[l].f=function(){return{height:f.innerHeight||g[h].clientHeight||g[m].clientHeight,width:f.innerWidth||g[h].clientWidth||g[m].clientWidth}};I[l].g=function(a){a=a.getBoundingClientRect();return{top:a.top+(void 0!==f.pageYOffset?f.pageYOffset:(g[h]||g[m].parentNode||g[m]).scrollTop),left:a.left+(void 0!==f.pageXOffset?f.pageXOffset:(g[h]||g[m].parentNode||g[m]).scrollLeft)}};I[l].h=function(a){if(0>=a.offsetWidth&&0>=a.offsetHeight)return!1;a=this.g(a);var b=a.top.toString()+t+a.left.toString();if(this.a.hasOwnProperty(b))return!1;this.a[b]=!0;return a.top<=this.b.height&&a.left<=this.b.width};I[l].i=function(a){var b;if(f.XMLHttpRequest)b=new XMLHttpRequest;else if(f.ActiveXObject)try{b=new ActiveXObject(x)}catch(c){try{b=new ActiveXObject(w)}catch(e){}}if(!b)return!1;b.open(y,this.c+(-1==this.c.indexOf(u)?u:p)+G+d(this.e));b.setRequestHeader(v,z);b.send(a);return!0};I[l].k=function(){for(var a=[A,B],b=[],c={},e=0;e<a[k];++e)for(var q=g.getElementsByTagName(a[e]),n=0;n<q[k];++n){var r=q[n].getAttribute(F);r&&(q[n].getBoundingClientRect&&this.h(q[n]))&&!(r in c)&&(b.push(r),c[r]=!0)}if(0!=b[k]){a=D+this.d;a+=s+d(b[0]);for(e=1;e<b[k];++e){c=t+d(b[e]);if(131072<a[k]+c[k])break;a+=c}H.criticalImagesBeaconData=a;this.i(a)}};H.j=function(a,b,c){if(a.addEventListener)a.addEventListener(b,c,!1);else if(a.attachEvent)a.attachEvent(E+b,c);else{var e=a[E+b];a[E+b]=function(){c.call(this);e&&e.call(this)}}};H.l=function(a,b,c){var e=new I(a,b,c);H.j(f,C,function(){f.setTimeout(function(){e.k()},0)})};H.criticalImagesBeaconInit=H.l;})();pagespeed.criticalImagesBeaconInit('/mod_pagespeed_beacon','','MdS2SoDqBL');
                     //]]>
                  </script>
               </body>
            </html>