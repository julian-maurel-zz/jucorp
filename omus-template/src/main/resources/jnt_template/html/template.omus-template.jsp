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
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <template:addResources type="css" resources="styles.css" />
    <template:addResources type="css" resources="css_4KxqImHdaSySYrsxcRjSqPEmADtMDlFsYlDV8yCE0hg.css" />
    <template:addResources type="css" resources="css" />
    <template:addResources type="css" resources="css_JPRVGK6ejMaA-j4abEp1xltPE81NENH8KcDimcPQfnM.css" />
    <template:addResources type="css" resources="css_lQaZfjVpwP_oGNqdtWCSpJT1EMqXdMiU84ekLLxQnc4.css" />
    <template:addResources type="css" resources="css_pxN0twUbQv-eTF1PaLWZpwUZolr4_T79y0qLVdAOFrU.css" />
    <template:addResources type="css" resources="css_SZEKdZo3ILxC61We2hx9x_S-2ZNL24YIlOM0bVlL6Bc.css" />
    <template:addResources type="css" resources="css_V8_Hv_7iDN0RmMJSA1zHukLaSXAAfjy4BHuCokJb8ug.css" />
    <template:addResources type="css" resources="droidarabickufi.css" />
    <template:addResources type="css" resources="font-awesome.min.css" />
    
    
    <%-- <template:addResources type="css" resources="js_oCVMDTeSNt-_QxknevWyf6yO5OzmME3AhRz3ggZgNtg.js" />
         <template:addResources type="css" resources="js_6RfqyQ6dGB15EZV8a7SPpd5EOSSerQR7s-GxPVyVTqA.js" />
    <template:addResources type="css" resources="js_H0t_ibwBlov8MLwwN58_EOWEn0LhWDmQKam-w5OUp5c.js" />
    <template:addResources type="css" resources="js_Ex3NnUeTxx0hAl3aX83d7s_N54bsYys4hqtV-6ypEag.js" />
    <template:addResources type="css" resources="js_H0t_ibwBlov8MLwwN58_EOWEn0LhWDmQKam-w5OUp5c.js" />
    <template:addResources type="css" resources="js_i28qlYuX5wQOKzHk0jbdWq_l_u_ne8-C3CWjLS5I-0Y.js" />
    <template:addResources type="css" resources="js_B2uv6dkjoYobfQVyuXdchgrpnnx4oM0TkP_bDVf8Qrg.js" />
    <template:addResources type="css" resources="" />
    <template:addResources type="css" resources="" />
    <template:addResources type="css" resources="" /> --%>
    
    
    
    <title>${fn:escapeXml(renderContext.mainResource.node.displayableName)}</title>
  </head>
  <body class="html front not-logged-in no-sidebars page-home i18n-en">
    <div id="omus-bar" class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="container brandbar-header">
        <div class="row">
          
          <div class="col-md-4">
            <a class="omus-bar" href="./United Nations_files/United Nations.html">Bienvenue à l'Organisation Mondiale Utile et Sereine</a>
          </div>
          
          <div class="col-md-8 language-switcher">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#language-switcher">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <div class="language-title visible-xs-inline"><a href="javascript:void(0)" data-toggle="collapse" data-target="#language-switcher">Langue:</a></div>
            <div class="navbar-collapse collapse" id="language-switcher">
              <nav role="navigation">
                <ul class="language-switcher-locale-url nav navbar-nav navbar-right" role="menu">
                  <li class="fr"><a href="#" class="language-link" xml:lang="fr">Français</a></li>
                </ul> </nav>
            </div>
          </div>
        </div> 
      </div>
    </div>
    <header id="navbar" role="banner" class="navbar container navbar-default">
      <div class="container">
        <div class="navbar-header">
          <a class="logo navbar-btn pull-left flip" href="${renderContext.mainResource.node.resolveSite.home.url}" title="Home">
            <img src="${url.currentModule}/images/omus6.png" class="homeLogo" alt="Home">
          </a>
          
          <div class="un70-logo"><a href="http://www.un.org/un70/en/" title="70th Anniversary of the United Nations">70th Anniversary of the United Nations</a></div>
          <div class="search-form col-md-3 pull-right flip">
            <section class="region region-search">
              <div id="block-un-search-0" class="block block-un-search">
                <h4 class="visible-xs-block toggle"><a href="javascript:void(0);">Search</a></h4>
                <form id="searchfrm" name="gs" method="get">
                  <input type="hidden" name="ie" value="utf8">
                  <input type="hidden" name="site" value="un_org">
                  <input type="hidden" name="output" value="xml_no_dtd">
                  <input type="hidden" name="client" value="UN_Website_en">
                  <input type="hidden" name="num" value="10">
                  <input name="lr" type="hidden" value="lang_en">
                  <input type="hidden" name="proxystylesheet" id="proxystylesheet" value="UN_Website_en">
                  <input type="hidden" name="oe" value="utf8">
                  <input class="textbox form-control form-text" type="text" name="q" id="search" size="22" onfocus="this.value=&#39;&#39;;" value="Rechercher dans l'OMUS">
                  <button class="button btn-default btn btn-primary" type="submit" name="Submit" value="Search">Search</button>
                </form> </div> </section>
          </div>
        </div>
      </div>
      <div class="container"> <section class="region region-header">
        <div  class="block">
          <template:area path="menu" />
        </div>
        </header>
        <div class="main-container container">
          <div class="row">
            <div class="col-md-12 live-now">
              <section class="region region-live-now">
                <div id="block-un-home-11" class="block block-un-home"></div> </section>
            </div>
          </div>
          <div class="row">
            <section class="col-sm-12">
              <a id="main-content"></a>
              <h1 class="page-header">Home</h1>
              <div class="row"> <section class="region region-content">
                <div id="block-un-carousel-0" class="block block-un-carousel">
                  <div class="col-md-9">
                    <template:area path="mainContent" />
                  </div>
                </div><div id="block-un-home-2" class="block block-un-home">
                <div class="col-md-3 latest-news-wrapper">
                  <div class="home-news-feeds">
                    <h3>Dernières actualités</h3>
                    <ul>
                      <template:area path="dernieresActu" />
                    </ul>
                  </div>
                  <div class="menu-main-bodies">
                    <h4 class="font-bold">Main Bodies</h4>
                    <ul class="menu nav"><li class="first expanded dropdown"><a href="http://www.un.org/en/ga/">General Assembly <span class="caret"></span></a><ul class="dropdown-menu"><li class="first last leaf"><a href="http://www.un.org/en/members/" title="Member States of the United Nations">Member States</a></li>
                      </ul></li>
                      <li class="leaf"><a href="http://www.un.org/en/sc/">Security Council</a></li>
                      <li class="leaf"><a href="http://www.un.org/en/ecosoc/">Economic and Social Council</a></li>
                      <li class="leaf"><a href="http://www.un.org/en/decolonization/trusteeship.shtml">Trusteeship Council</a></li>
                      <li class="leaf"><a href="http://www.icj-cij.org/homepage/">International Court of Justice</a></li>
                      <li class="last expanded dropdown"><a href="http://www.un.org/en/sections/about-un/secretariat/index.html">Secretariat <span class="caret"></span></a><ul class="dropdown-menu"><li class="first last leaf"><a href="http://www.un.org/sg/">Secretary-General</a></li>
                        </ul></li>
                    </ul> </div>
                </div>
                </div> </section>
              </div> </section>
          </div>
          <div class="row sections-row in-focus">
            <div class="col-md-12">
              <div class="titles">
                <span class="topic">In Focus</span>
              </div>
            </div>
            <div class="col-md-7 in-focus-left">
              <section class="region region-in-focus-left">
                <div id="block-un-home-4" class="block block-un-home">
                  <div class="row">
                    <div class="col-md-4">
                      <a href="http://www.un.org/en/events/girlchild/"><img class="img-responsive lazyOwl" src="./United Nations_files/girls-india2710.jpg" alt="girls in India" title="girls in India"></a>
                    </div>
                    <div class="col-md-8">
                      <h5><a href="http://www.un.org/en/events/girlchild/">International Day of the Girl Child, 11 October</a></h5>
                      <p>&nbsp;In recognition of the importance of investing in adolescent girls’ empowerment and rights, both today and in the future, the theme of International Day of the Girl Child for 2015 is: The Power of the Adolescent Girl: Vision for 2030.</p>
                    </div>
                  </div> </div> </section>
            </div>
            <div class="col-md-5 in-focus-right">
              <section class="region region-in-focus-right">
                <div id="block-un-home-12" class="block block-un-home">
                  <div class="row">
                    <div class="col-md-6 feature feature-col-1">
                      <div class="row">
                        <div class="col-md-5 thumb">
                          <a href="http://www.un.org/en/events/postday/"><img class="img-responsive lazyOwl" src="./United Nations_files/stampse1b2.jpg" alt="stamps" title="stamps"></a>
                        </div>
                        <div class="col-md-7 title">
                          <h5><a href="http://www.un.org/en/events/postday/">World Post Day, 9 October</a></h5>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6 feature feature-col-2">
                      <div class="row">
                        <div class="col-md-5 thumb">
                          <a href="http://www.un.org/en/ga/"><img class="img-responsive lazyOwl" src="./United Nations_files/ga-705f98.jpg" alt="GA 70" title="GA 70"></a>
                        </div>
                        <div class="col-md-7 title">
                          <h5><a href="http://www.un.org/en/ga/">70th Session of the General Assembly</a></h5>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6 feature feature-col-3">
                      <div class="row">
                        <div class="col-md-5 thumb">
                          <a href="http://www.un.org/en/events/peaceday/"><img class="img-responsive lazyOwl" src="./United Nations_files/peace-dovese39c.jpg" alt="peace doves" title="peace doves"></a>
                        </div>
                        <div class="col-md-7 title">
                          <h5><a href="http://www.un.org/en/events/peaceday/">International Day of Peace (21 September)</a></h5>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6 feature feature-col-4">
                      <div class="row">
                        <div class="col-md-5 thumb">
                          <a href="http://www.un.org/en/events/democracyday/"><img class="img-responsive lazyOwl" src="./United Nations_files/representatives-civil-society-sierra-leone02b0.jpg" alt="Representatives of Civil Society, Sierra Leone. " title="Representatives of Civil Society, Sierra Leone. "></a>
                        </div>
                        <div class="col-md-7 title">
                          <h5><a href="http://www.un.org/en/events/democracyday/">International Day of Democracy (15 September)</a></h5>
                        </div>
                      </div>
                    </div>
                  </div>
                </div> </section>
            </div>
          </div>
          <div class="row sections-row">
            <div class="col-md-4">
              <section class="region region-mid-left">
                <div id="block-un-home-6" class="block block-un-home">
                  <h4 class="font-bold">In the Spotlight</h4>
                  <div class="image">
                    <a href="http://www.un.org/apps/news/story.asp?NewsID=51998"><img class="img-responsive lazyOwl" src="./United Nations_files/charlize-theron52fc.jpg" alt="charlize-theron" title="charlize-theron"></a>
                  </div>
                  <div class="text">
                    <h5><a href="http://www.un.org/apps/news/story.asp?NewsID=51998">Charlize Theron</a></h5>
                    <p>As a <a href="http://outreach.un.org/mop/">Messenger of Peace</a>, Academy Award-winning actress Charlize Theron focuses on the prevention of HIV and the elimination of violence against women. She founded the Charlize Theron Africa Outreach Project in 2007 to help African youth keep themselves safe from HIV. &nbsp;Speaking at a&nbsp;high-level panel discussion on scaling up efforts to end the epidemic by 2030, co-hosted by <a href="http://www.unaids.org/en">UNAIDS</a>,&nbsp;Ms. Theron said that the fight to end HIV/AIDS must focus on young women and girls.</p>
                  </div> </div> </section>
            </div>
            <div class="col-md-4">
              <section class="region region-mid-center">
                <div id="block-un-home-0" class="block block-un-home">
                  <h4 class="font-bold">The UN System at Work</h4>
                  <div class="image">
                    <a href="http://www.youtube.com/watch?t=1&v=xggFJv1tVco"><img class="img-responsive lazyOwl" src="./United Nations_files/faoedd3.jpg" alt="FAO" title="FAO"></a>
                  </div>
                  <div class="text">
                    <h5 class="subhead-light"><a href="http://www.fao.org/home/en/">UN Food and Agriculture Organization</a></h5>
                    <p>FAO celebrates World Food Week! Starting on 12 October with the opening of the <a href="http://www.fao.org/cfs/cfs-home/cfs42/en/">42nd Session of the Committee on World Food Security</a>, the main highlights of the week will include the launch of the new edition of FAO's flagship publication&nbsp;The State of Food and Agriculture&nbsp;on Tuesday, 13 October, and the celebration of the <a href="http://www.fao.org/world-food-day/home/en/">World Food Day 2015 ceremony</a>&nbsp;which will take place on Friday 16 October.</p>
                    <p><a href="http://www.un.org/en/aboutun/structure/pdfs/UN_System_Chart_30June2015.pdf">The UN System</a>&nbsp;</p>
                  </div> </div> </section>
            </div>
            <div class="col-md-4">
              <section class="region region-mid-right">
                <div id="block-un-home-3" class="block block-un-home">
                  <a href="http://www.un.org/sustainabledevelopment/" target="0"><img class="img-responsive lazyOwl" src="./United Nations_files/action-2015-renewable-energy5521.png" alt="Action 2015 - Renewable Energy" title="Action 2015 - Renewable Energy"></a> </div> </section>
            </div>
          </div>
          <div class="row sections-row">
            <section class="region region-after-middle">
              <div id="block-un-home-5" class="block block-un-home">
                <div class="col-md-12"><h4><a href="http://www.un.org/en/sections/priorities/index.html">Key Issues</a></h4></div>
                <div class="col-xs-6 col-md-3 priorities economic-growth-and-sustainable-development"><a href="http://www.un.org/en/sections/priorities/economic-growth-and-sustainable-development/index.html">Economic Growth and Sustainable Development</a></div>
                <div class="col-xs-6 col-md-3 priorities international-peace-and-security"><a href="http://www.un.org/en/sections/priorities/international-peace-and-security/index.html">International Peace and Security</a></div>
                <div class="col-xs-6 col-md-3 priorities development-africa"><a href="http://www.un.org/en/sections/priorities/development-africa/index.html">Development of Africa</a></div>
                <div class="col-xs-6 col-md-3 priorities human-rights"><a href="http://www.un.org/en/sections/priorities/human-rights/index.html">Human Rights</a></div>
                <div class="col-xs-6 col-md-3 priorities humanitarian-assistance"><a href="http://www.un.org/en/sections/priorities/humanitarian-assistance/index.html">Humanitarian Assistance</a></div>
                <div class="col-xs-6 col-md-3 priorities justice-and-international-law"><a href="http://www.un.org/en/sections/priorities/justice-and-international-law/index.html">Justice and International Law</a></div>
                <div class="col-xs-6 col-md-3 priorities nuclear-chemical-and-conventional-weapons-disarmament"><a href="http://www.un.org/en/sections/priorities/nuclear-chemical-and-conventional-weapons-disarmament/index.html">Nuclear, Chemical and Conventional Weapons Disarmament</a></div>
                <div class="col-xs-6 col-md-3 priorities drug-control-crime-prevention-and-counter-terrorism"><a href="http://www.un.org/en/sections/priorities/drug-control-crime-prevention-and-counter-terrorism/index.html">Drug Control, Crime Prevention and Counter-terrorism</a></div>
              </div> </section>
          </div>
          <div class="row sections-row">
            <section class="region region-before-footer">
              <div id="block-un-home-1" class="block block-un-home">
                <div class="col-md-3">
                  <h4 class="font-bold"><a href="http://www.unmultimedia.org/photo/">UN Photo</a></h4>
                  <a href="http://www.unmultimedia.org/photo/"><img class="img-responsive lazyOwl" src="./United Nations_files/malala-yousafzai8c1e.jpg" alt="Malala-Yousafzai" title="Malala-Yousafzai"></a>
                </div>
                <div class="col-md-3">
                  <h4 class="font-bold"><a href="http://www.un.org/news/">UN News Centre</a></h4>
                  <a href="http://www.un.org/news/"><img class="img-responsive lazyOwl" src="./United Nations_files/un-news-centre-interviews-unesco-director-general-irina-bokova3c1c.jpg" alt="The UN News Centre interviews UNESCO Director-General Irina Bokova" title="The UN News Centre interviews UNESCO Director-General Irina Bokova"></a>
                </div>
                <div class="col-md-3">
                  <h4 class="font-bold"><a href="http://www.unmultimedia.org/radio/">UN Radio</a></h4>
                  <a href="http://www.unmultimedia.org/radio/"><img class="img-responsive lazyOwl" src="./United Nations_files/stevie-wonder0d9f.jpg" alt="Photo of the Messenger of Peace Stevie Wonder" title="Photo of the Messenger of Peace Stevie Wonder"></a>
                </div>
                <div class="col-md-3">
                  <h4 class="font-bold"><a href="http://webtv.un.org/">UN TV</a></h4>
                  <a href="http://webtv.un.org/"><img class="img-responsive lazyOwl" src="./United Nations_files/un-tv-crew-films-feature-land-rights-indigenous-karen-people-thailand-2013b76d.jpg" alt="UN TV crew films feature on land rights for indigenous Karen people in Thailand (2013)." title="UN TV crew films feature on land rights for indigenous Karen people in Thailand (2013)."></a>
                </div>
              </div> </section>
          </div>
        </div>
        <footer class="footer container">
          <div class="row">
            <div class="col-md-3">
              <section class="region region-footer-1">
                <div id="block-menu-menu-main-bodies" class="block block-menu">
                  <h4 class="font-bold">Main Bodies</h4>
                  <ul class="menu nav"><li class="first expanded dropdown"><a href="http://www.un.org/en/ga/">General Assembly <span class="caret"></span></a><ul class="dropdown-menu"><li class="first last leaf"><a href="http://www.un.org/pga/">GA President</a></li>
                    </ul></li>
                    <li class="expanded dropdown"><a href="http://www.un.org/en/sc/">Security Council <span class="caret"></span></a><ul class="dropdown-menu"><li class="first last leaf"><a href="http://www.un.org/en/sc/presidency/">SC President</a></li>
                      </ul></li>
                    <li class="expanded dropdown"><a href="http://www.un.org/en/ecosoc/">Economic and Social Council <span class="caret"></span></a><ul class="dropdown-menu"><li class="first last leaf"><a href="http://www.un.org/en/ecosoc/president/">ECOSOC President</a></li>
                      </ul></li>
                    <li class="leaf"><a href="http://www.un.org/en/decolonization/trusteeship.shtml">Trusteeship Council</a></li>
                    <li class="leaf"><a href="http://www.icj-cij.org/homepage/index.php?lang=en">International Court of Justice</a></li>
                    <li class="last expanded dropdown"><a href="http://www.un.org/en/mainbodies/secretariat/index.shtml">Secretariat <span class="caret"></span></a><ul class="dropdown-menu"><li class="first last leaf"><a href="http://www.un.org/sg/">Secretary-General</a></li>
                      </ul></li>
                  </ul> </div><div id="block-menu-menu-departments-offices" class="block block-menu">
                <h4 class="font-bold">Departments / Offices</h4>
                <ul class="menu nav"><li class="first leaf"><a href="http://www.un.org/en/sections/about-un/secretariat/index.html">New York</a></li>
                  <li class="leaf"><a href="http://www.unog.ch/">Geneva</a></li>
                  <li class="leaf"><a href="http://www.unon.org/">Nairobi</a></li>
                  <li class="leaf"><a href="http://www.unvienna.org/">Vienna</a></li>
                  <li class="leaf"><a href="http://www.unsceb.org/directory/">UN System Directory</a></li>
                  <li class="last leaf"><a href="http://www.un.org/en/aboutun/structure/pdfs/UN_System_Chart_30June2015.pdf">UN System Chart</a></li>
                </ul> </div> </section>
            </div>
            <div class="col-md-3">
              <section class="region region-footer-2">
                <div id="block-menu-menu-resources-services" class="block block-menu">
                  <h4 class="font-bold">Resources / Services</h4>
                  <ul class="menu nav"><li class="first leaf"><a href="http://emergency.un.org/">Emergency information</a></li>
                    <li class="leaf"><a href="http://oios.un.org/page?slug=reporting-wrongdoing">Reporting Wrongdoing</a></li>
                    <li class="leaf"><a href="http://www.un.org/en/meetings-and-events/">Meetings and Events </a></li>
                    <li class="leaf"><a href="http://www.un.org/en/documents/journal.asp">UN Journal</a></li>
                    <li class="leaf"><a href="http://www.un.org/en/documents/">Documents</a></li>
                    <li class="leaf"><a href="http://www.un.org/Depts/dhl/">Library</a></li>
                    <li class="leaf"><a href="http://unp.un.org/">Publications</a></li>
                    <li class="leaf"><a href="http://unp.un.org/bookshop/">Bookshop</a></li>
                    <li class="leaf"><a href="http://www.un.org/Depts/Cartographic/english/htmain.htm">Maps</a></li>
                    <li class="leaf"><a href="http://www.un.org/en/media/accreditation/">Media Accreditation</a></li>
                    <li class="leaf"><a href="http://csonet.org/index.php?menu=34">NGO accreditation at ECOSOC </a></li>
                    <li class="leaf"><a href="http://outreach.un.org/ngorelations/membership/application/">NGO accreditation at DPI </a></li>
                    <li class="leaf"><a href="http://visit.un.org/">Visitors’ services</a></li>
                    <li class="leaf"><a href="http://www.un.org/Depts/ptd/welcome-united-nations-procurement-division-unpd">Procurement</a></li>
                    <li class="leaf"><a href="http://careers.un.org/lbw/Home.aspx">Employment</a></li>
                    <li class="leaf"><a href="http://careers.un.org/lbw/home.aspx?viewtype=IP">Internships</a></li>
                    <li class="leaf"><a href="http://outreach.un.org/mun/">Model UN</a></li>
                    <li class="leaf"><a href="http://archives.un.org/">UN Archives</a></li>
                    <li class="leaf"><a href="http://www.unmultimedia.org/avlibrary/">UN Audiovisual Library</a></li>
                    <li class="last leaf"><a href="http://www.un.org/en/aboutun/pdf/2014%20E%20UN%20Card.pdf">Ten Facts About the United Nations</a></li>
                  </ul> </div> </section>
            </div>
            <div class="col-md-3">
              <section class="region region-footer-3">
                <div id="block-menu-menu-key-documents" class="block block-menu">
                  <h4 class="font-bold">Key Documents</h4>
                  <ul class="menu nav"><li class="first leaf"><a href="http://www.un.org/en/documents/charter/">UN Charter</a></li>
                    <li class="leaf"><a href="http://www.un.org/en/universal-declaration-human-rights/index.html">Universal Declaration of Human Rights</a></li>
                    <li class="leaf"><a href="http://www.unicef.org/crc/">Convention on the Rights of the Child </a></li>
                    <li class="last leaf"><a href="http://www.icj-cij.org/documents/index.php?p1=4&p2=2&p3=0">Statute of the International Court of Justice</a></li>
                  </ul> </div><div id="block-menu-menu-news" class="block block-menu">
                <h4 class="font-bold">News and Media</h4>
                <ul class="menu nav"><li class="first leaf"><a href="http://www.un.org/news/">News Centre</a></li>
                  <li class="leaf"><a href="http://www.un.org/press/en/">Press Releases</a></li>
                  <li class="leaf"><a href="http://www.un.org/press/en/content/noon-briefings">Briefings</a></li>
                  <li class="leaf"><a href="http://www.un.org/sg/spokesperson/">Spokesperson</a></li>
                  <li class="leaf"><a href="http://www.unmultimedia.org/radio/english/">Radio</a></li>
                  <li class="leaf"><a href="http://www.unmultimedia.org/audio_by_phone.html">Audio by Phone </a></li>
                  <li class="leaf"><a href="http://www.unmultimedia.org/photo/">Photos</a></li>
                  <li class="leaf"><a href="http://www.unmultimedia.org/tv/unifeed/">UNIfeed</a></li>
                  <li class="leaf"><a href="http://webtv.un.org/">Webcast</a></li>
                  <li class="leaf"><a href="http://blogs.un.org/unstories/">UNStories</a></li>
                  <li class="leaf"><a href="http://www.unmultimedia.org/tv/unia/">UN in Action</a></li>
                  <li class="leaf"><a href="http://www.unmultimedia.org/tv/21stcentury/">21st Century</a></li>
                  <li class="leaf"><a href="http://www.unmultimedia.org/tv/blog/">Diaries from the field</a></li>
                  <li class="last leaf"><a href="http://www.un.org/en/social-media/index.html">Social Media</a></li>
                </ul> </div> </section>
            </div>
            <div class="col-md-3">
              <section class="region region-footer-4">
                <div id="block-menu-menu-issues-campaigns" class="block block-menu">
                  <h4 class="font-bold">Issues / Campaigns</h4>
                  <ul class="menu nav"><li class="first leaf"><a href="http://www.un.org/en/globalissues/democracy/index.shtml">Democracy</a></li>
                    <li class="leaf"><a href="http://www.un.org/en/decolonization/">Decolonization</a></li>
                    <li class="leaf"><a href="http://www.un.org/en/ruleoflaw/index.shtml">Rule of Law</a></li>
                    <li class="leaf"><a href="http://www.un.org/en/preventgenocide/adviser/">Prevention of Genocide and the Responsibility to Protect</a></li>
                    <li class="leaf"><a href="http://www.un.org/en/holocaustremembrance/">The Holocaust</a></li>
                    <li class="leaf"><a href="http://unispal.un.org/unispal.nsf/home.htm">The Question of Palestine</a></li>
                    <li class="leaf"><a href="http://www.un.org/en/preventgenocide/rwanda/">The Rwanda Genocide</a></li>
                    <li class="leaf"><a href="http://www.un.org/victimsofterrorism/en">Victims of Terrorism</a></li>
                    <li class="leaf"><a href="http://childrenandarmedconflict.un.org/">Children and Armed Conflict</a></li>
                    <li class="leaf"><a href="http://www.un.org/en/women/endviolence/">UNiTE to End Violence Against Women</a></li>
                    <li class="leaf"><a href="http://outreach.un.org/mop/">Messengers of Peace</a></li>
                    <li class="leaf"><a href="http://www.un.org/millenniumgoals/">Millennium Development Goals</a></li>
                    <li class="leaf"><a href="http://www.un.org/sustainabledevelopment/">Sustainable Development</a></li>
                    <li class="leaf"><a href="http://www.un.org/climatechange/">Climate Change</a></li>
                    <li class="leaf"><a href="http://www.un.org/en/zerohunger/">Zero Hunger Challenge</a></li>
                    <li class="leaf"><a href="http://www.un.org/en/globalissues/">Global Issues</a></li>
                    <li class="leaf"><a href="http://www.un.org/en/sections/observances/united-nations-observances/index.html">Observances</a></li>
                    <li class="last leaf"><a href="http://www.un.org/en/sections/nobel-peace-prize/united-nations-and-nobel-peace-prize/index.html">Nobel Peace Prize </a></li>
                  </ul> </div> </section>
            </div>
          </div>
          <div class="row list-inline">
            <div class="col-md-12">
              <div class="pull-left flip footer-brand"><a href="./United Nations_files/United Nations.html" title="Home"><span class="site-name">United Nations</span></a></div>
              <div class="pull-right flip"> <section class="region region-footer-5">
                <div id="block-menu-menu-footer-links" class="block block-menu">
                  <h4 class="font-bold">Footer Links</h4>
                  <ul class="menu nav"><li class="first leaf"><a href="http://www.un.org/en/contactus/">Contact</a></li>
                    <li class="leaf"><a href="http://www.un.org/en/aboutun/copyright/index.html">Copyright </a></li>
                    <li class="leaf"><a href="http://www.un.org/en/sections/about-website/fraud-alert/index.html">Fraud Alert</a></li>
                    <li class="leaf"><a href="http://www.un.org/en/sections/about-website/privacy-notice/index.html">Privacy Notice</a></li>
                    <li class="leaf"><a href="http://www.un.org/en/siteindex/index.html">Site Index</a></li>
                    <li class="last leaf"><a href="http://www.un.org/en/sections/about-website/terms-use/index.html">Terms of Use</a></li>
                  </ul> </div> </section>
              </div>
            </div>
          </div>
        </footer>
        <div class="social-media" style="top: 145px;">
          <section class="region region-closure">
            <div id="block-block-1" class="block block-block">
              <ul><li class="facebook"><a href="http://www.facebook.com/unitednations">Facebook</a></li>
                <li class="twitter"><a href="http://twitter.com/un">Twitter</a></li>
                <li class="youtube"><a href="http://www.youtube.com/unitednations">YouTube</a></li>
                <li class="pinterest"><a href="http://pinterest.com/unitednations">Pinterest</a></li>
                <li class="google"><a href="http://gplus.to/unitednations">Google+</a></li>
                <li class="flickr"><a href="http://www.flickr.com/photos/un_photo/">Flickr</a></li>
                <li class="tumblr"><a href="http://united-nations.tumblr.com/">Tumblr</a></li>
                <li class="instagram"><a href="http://instagram.com/unitednations">Instagram</a></li>
                <li class="more"><a href="http://www.un.org/en/sections/about-website/un-social-media/index.html">UN Social Media</a></li>
              </ul> </div> </section>
        </div>
        <h6 style="display: none;">Drupal template developed by DPI Web Services Section</h6> <script src="./United Nations_files/js_i28qlYuX5wQOKzHk0jbdWq_l_u_ne8-C3CWjLS5I-0Y.js"></script>
        <script src="./United Nations_files/js_B2uv6dkjoYobfQVyuXdchgrpnnx4oM0TkP_bDVf8Qrg.js"></script>
        
        
      </body></html>
    