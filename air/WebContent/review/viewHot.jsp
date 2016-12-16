<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
ArrayList<String> best=(ArrayList)request.getAttribute("best");

%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
      <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
        <title>Photo Booth Strips with Lightbox</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta name="description" content="Photo Booth Strips with Lightbox 2 Integration" />
        <meta name="keywords" content="photo booth, strips, photo strip, css3, rotation, scroll, thumbs, swipe, touch, jquery, mobile, lightbox" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="/air/pb/css/demo.css" />
      <link rel="stylesheet" type="text/css" href="/air/pb/css/lightbox.css"/>
      <link rel="stylesheet" type="text/css" href="/air/pb/css/style.css" />
      <link href='http://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
      <script type="text/javascript" src="/air/pb/js/modernizr.custom.52731.js"></script> 
      <!--[if lte IE 8]><style>.main{display:none;} .support-note .note-ie{display:block;}</style><![endif]-->
   
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
   function button3_click(){
         //alert("클릭했음요");
         //var target=$(this).attr("href");
         $("#frame").load("/air/main.do");   
   }      

</script>

    </head>
    <body>
        <div class="container">
      
         <!-- Codrops top bar -->
           
                <div class="clr"></div>
            <!--/ Codrops top bar -->
         
         <header>
         
            <h1>kim su jin mae rong</h1>
            <h2>김수진 똥멍청이 <br> <strong>스크롤해보세욘!</strong></h2>
            <input type="button" class="myButton" value="이름바꾸셈 뒤로" onclick="button3_click()"/>
            
            <div class="support-note"><!-- let's check browser support with modernizr -->
               <!--span class="no-cssanimations">CSS animations are not supported in your browser</span-->
               <span class="no-csstransforms">CSS transforms are not supported in your browser</span>
               <!--span class="no-csstransforms3d">CSS 3D transforms are not supported in your browser</span-->
               <!--span class="no-csstransitions">CSS transitions are not supported in your browser</span-->
               <span class="no-generatedcontent">CSS generated content is not supported in your browser</span>
               <span class="note-ie">Sorry, only modern browsers.</span>
            </div>
            
         </header>
         
         <section id="main" class="main">
            
            <div class="pb-wrapper pb-wrapper-1">
               <div class="pb-scroll">
                  <ul class="pb-strip">
                     <%for (int i=1;i<19;i=i+3){ %>      
                     <%if(best.get(i).contains("asp/contents")){ %>
                     <li><a href="http://www.hanatour.com<%=best.get(i)%>"rel="lightbox[album1]" title=<%=best.get(i+2)%>>
                     <%}else{ %>
                     <li><a href="http://www.hanatour.com/asp/contents/vote_tour/<%=best.get(i)%>" rel="lightbox[album1]" title=<%=best.get(i+2)%>>
                         <%} %>
                         
                         <img src=<%=best.get(i+1)%> width=140 /></a></li>
                    <%} %>
                  </ul>
               </div>
               <h3 class="pb-title">You only live once, but if you do it right, once is enough.</h3>
            </div>
            
            <div class="pb-wrapper pb-wrapper-2">
               <div class="pb-scroll">
                  <ul class="pb-strip">
                     <%for (int i=19;i<38;i=i+3){ %>      
                     <%if(best.get(i).contains("asp/contents")){ %>
                     <li><a href="http://www.hanatour.com<%=best.get(i)%>"rel="lightbox[album1]" title=<%=best.get(i+2)%>>
                     <%}else{ %>
                     <li><a href="http://www.hanatour.com/asp/contents/vote_tour/<%=best.get(i)%>" rel="lightbox[album1]" title=<%=best.get(i+2)%>>
                         <%} %>
                         <img src=<%=best.get(i+1)%> width=140 /></a></li>
                    <%} %>
                  </ul>
               </div>   
               <h3 class="pb-title">A good reason, is not necessarily a relevant one.</h3>
            </div>
            
            <div class="pb-wrapper pb-wrapper-3">
               <div class="pb-scroll">
                  <ul class="pb-strip">
                  <%for (int i=37;i<58;i=i+3){ %>      
                     <%if(best.get(i).contains("asp/contents")){ %>
                     <li><a href="http://www.hanatour.com<%=best.get(i)%>"rel="lightbox[album1]" title=<%=best.get(i+2)%>>
                     <%}else{ %>
                     <li><a href="http://www.hanatour.com/asp/contents/vote_tour/<%=best.get(i)%>" rel="lightbox[album1]" title=<%=best.get(i+2)%>>
                         <%} %>
                         <img src=<%=best.get(i+1)%> width=140 /></a></li>
                    <%} %>   
                     
                  </ul>
               </div>
               <h3 class="pb-title">Images &copy; Sherman Geronimo-Tan</h3>
            </div>
            
            <div class="pb-wrapper pb-wrapper-4">
               <div class="pb-scroll">
                  <ul class="pb-strip">
                  <%for (int i=58;i<76;i=i+3){ %>      
                     <%if(best.get(i).contains("asp/contents")){ %>
                     <li><a href="http://www.hanatour.com<%=best.get(i)%>"rel="lightbox[album1]" title=<%=best.get(i+2)%>>
                     <%}else{ %>
                     <li><a href="http://www.hanatour.com/asp/contents/vote_tour/<%=best.get(i)%>" rel="lightbox[album1]" title=<%=best.get(i+2)%>>
                         <%} %>
                         <img src=<%=best.get(i+1)%> width=140 /></a></li>
                    <%} %>   
                     
                  </ul>
               </div>
               <h3 class="pb-title">Happiness is a direction, not a destination.</h3>
            </div>
            
         </section>
        </div>
      <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
      <script src="js/lightbox.js"></script>
    </body>
</html>