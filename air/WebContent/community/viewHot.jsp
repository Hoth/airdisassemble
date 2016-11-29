<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    </head>
    <body>
        <div class="container">
		
			<!-- Codrops top bar -->
            <div class="codrops-top">
                <a href="http://tympanus.net/Tutorials/ModernBlockQuoteStyles/">
                    <strong>&laquo; Previous Demo: </strong>Modern Block Quote Styles
                </a>
                <div class="clr"></div>
            </div><!--/ Codrops top bar -->
			
			<header>
			
				<h1>Photo Booth Strips</h1>
				<h2>김수진 똥멍청이 <br> <strong>Scroll with your mousewheel or finger</strong></h2>
				
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
							<li><a href="images/large/1.jpg" rel="lightbox[album1]" title="Spring"><img src="images/small/1.jpg" /></a></li>
							<li><a href="images/large/2.jpg" rel="lightbox[album1]" title="Sunshine"><img src="images/small/2.jpg" /></a></li>
							<li><a href="images/large/3.jpg" rel="lightbox[album1]" title="Summer"><img src="images/small/3.jpg" /></a></li>
							<li><a href="images/large/4.jpg" rel="lightbox[album1]" title="Delicious"><img src="images/small/4.jpg" /></a></li>
							<li><a href="images/large/5.jpg" rel="lightbox[album1]" title="Softness"><img src="images/small/5.jpg" /></a></li>
							<li><a href="images/large/6.jpg" rel="lightbox[album1]" title="Bliss"><img src="images/small/6.jpg" /></a></li>
							<li><a href="images/large/7.jpg" rel="lightbox[album1]" title="Adorable"><img src="images/small/7.jpg" /></a></li>
							<li><a href="images/large/8.jpg" rel="lightbox[album1]" title="Forever"><img src="images/small/8.jpg" /></a></li>
							<li><a href="images/large/9.jpg" rel="lightbox[album1]" title="Silence"><img src="images/small/9.jpg" /></a></li>
							<li><a href="images/large/10.jpg" rel="lightbox[album1]" title="Love"><img src="images/small/10.jpg" /></a></li>
						</ul>
					</div>
					<h3 class="pb-title">You only live once, but if you do it right, once is enough.</h3>
				</div>
				
				<div class="pb-wrapper pb-wrapper-2">
					<div class="pb-scroll">
						<ul class="pb-strip">
							<li><a href="images/large/11.jpg" rel="lightbox[album2]" title="Serenity"><img src="images/small/11.jpg" /></a></li>
							<li><a href="images/large/12.jpg" rel="lightbox[album2]" title="Color"><img src="images/small/12.jpg" /></a></li>
							<li><a href="images/large/13.jpg" rel="lightbox[album2]" title="Serendipity"><img src="images/small/13.jpg" /></a></li>
							<li><a href="images/large/14.jpg" rel="lightbox[album2]" title="Sunshine"><img src="images/small/14.jpg" /></a></li>
							<li><a href="images/large/15.jpg" rel="lightbox[album2]" title="Love"><img src="images/small/15.jpg" /></a></li>
							<li><a href="images/large/16.jpg" rel="lightbox[album2]" title="Friendship"><img src="images/small/16.jpg" /></a></li>
							<li><a href="images/large/17.jpg" rel="lightbox[album2]" title="Spring"><img src="images/small/17.jpg" /></a></li>
							<li><a href="images/large/18.jpg" rel="lightbox[album2]" title="Future"><img src="images/small/18.jpg" /></a></li>
							<li><a href="images/large/19.jpg" rel="lightbox[album2]" title="Summer"><img src="images/small/19.jpg" /></a></li>
							<li><a href="images/large/20.jpg" rel="lightbox[album2]" title="Lightness"><img src="images/small/20.jpg" /></a></li>
						</ul>
					</div>	
					<h3 class="pb-title">A good reason, is not necessarily a relevant one.</h3>
				</div>
				
				<div class="pb-wrapper pb-wrapper-3">
					<div class="pb-scroll">
						<ul class="pb-strip">
							<li><a href="images/large/20.jpg" rel="lightbox[album3]" title="Spring"><img src="images/small/20.jpg" /></a></li>
							<li><a href="images/large/10.jpg" rel="lightbox[album3]" title="Sunshine"><img src="images/small/10.jpg" /></a></li>
							<li><a href="images/large/9.jpg" rel="lightbox[album3]" title="Summer"><img src="images/small/9.jpg" /></a></li>
							<li><a href="images/large/19.jpg" rel="lightbox[album3]" title="Delicious"><img src="images/small/19.jpg" /></a></li>
							<li><a href="images/large/8.jpg" rel="lightbox[album3]" title="Softness"><img src="images/small/8.jpg" /></a></li>
							<li><a href="images/large/18.jpg" rel="lightbox[album3]" title="Bliss"><img src="images/small/18.jpg" /></a></li>
							<li><a href="images/large/4.jpg" rel="lightbox[album3]" title="Adorable"><img src="images/small/4.jpg" /></a></li>
							<li><a href="images/large/6.jpg" rel="lightbox[album3]" title="Forever"><img src="images/small/6.jpg" /></a></li>
							<li><a href="images/large/7.jpg" rel="lightbox[album3]" title="Silence"><img src="images/small/7.jpg" /></a></li>
							<li><a href="images/large/11.jpg" rel="lightbox[album3]" title="Love"><img src="images/small/11.jpg" /></a></li>
						</ul>
					</div>
					<h3 class="pb-title">Images &copy; Sherman Geronimo-Tan</h3>
				</div>
				
				<div class="pb-wrapper pb-wrapper-4">
					<div class="pb-scroll">
						<ul class="pb-strip">
							<li><a href="images/large/18.jpg" rel="lightbox[album4]" title="Spring"><img src="images/small/18.jpg" /></a></li>
							<li><a href="images/large/16.jpg" rel="lightbox[album4]" title="Sunshine"><img src="images/small/16.jpg" /></a></li>
							<li><a href="images/large/8.jpg" rel="lightbox[album4]" title="Summer"><img src="images/small/8.jpg" /></a></li>
							<li><a href="images/large/18.jpg" rel="lightbox[album4]" title="Delicious"><img src="images/small/18.jpg" /></a></li>
							<li><a href="images/large/19.jpg" rel="lightbox[album4]" title="Softness"><img src="images/small/19.jpg" /></a></li>
							<li><a href="images/large/20.jpg" rel="lightbox[album4]" title="Bliss"><img src="images/small/20.jpg" /></a></li>
							<li><a href="images/large/1.jpg" rel="lightbox[album4]" title="Adorable"><img src="images/small/1.jpg" /></a></li>
							<li><a href="images/large/5.jpg" rel="lightbox[album4]" title="Forever"><img src="images/small/5.jpg" /></a></li>
							<li><a href="images/large/3.jpg" rel="lightbox[album4]" title="Silence"><img src="images/small/3.jpg" /></a></li>
							<li><a href="images/large/6.jpg" rel="lightbox[album4]" title="Love"><img src="images/small/6.jpg" /></a></li>
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