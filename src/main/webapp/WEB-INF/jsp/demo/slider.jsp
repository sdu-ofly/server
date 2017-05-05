<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Slider</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/demo/unslider/unslider.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/demo/unslider/unslider-dots.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/demo/unslider/site.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/demo/unslider/reset.css">
	
<script type="text/javascript" src="<%=request.getContextPath()%>/js/common/jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/demo/unslider/unslider-min.js"></script>
</head>
<body>
	<ul>
		<li id="demos" data-nav="Demos <span class='amp'>&amp;</span> Usage">
			<div class="spaced">
				<div class="wrap">
					<div class="demo">
						<h2 style="text-align: center;">01.Default-Slider</h2>
						<div class="default-slider">
							<ul>
								<li><img src="<%=request.getContextPath()%>/img/demo/unslider/cat1.jpg"></img></li>
								<li><img src="<%=request.getContextPath()%>/img/demo/unslider/cat2.jpg"></img></li>
								<li><img src="<%=request.getContextPath()%>/img/demo/unslider/cat3.jpg"></img></li>
								<li><img src="<%=request.getContextPath()%>/img/demo/unslider/cat4.jpg"></img></li>
								<li><img src="<%=request.getContextPath()%>/img/demo/unslider/cat5.jpg"></img></li>
							</ul>
						</div>
					</div>
					<div class="demo">
						<h2 style="text-align: center;">02.Automatic-Slider</h2>
						<div class="automatic-slider">
							<ul>
								<li><img src="<%=request.getContextPath()%>/img/demo/unslider/cat1.jpg"></img></li>
								<li><img src="<%=request.getContextPath()%>/img/demo/unslider/cat2.jpg"></img></li>
								<li><img src="<%=request.getContextPath()%>/img/demo/unslider/cat3.jpg"></img></li>
								<li><img src="<%=request.getContextPath()%>/img/demo/unslider/cat4.jpg"></img></li>
								<li><img src="<%=request.getContextPath()%>/img/demo/unslider/cat5.jpg"></img></li>
							</ul>
						</div>
					</div>
					<div class="demo">
						<h2 style="text-align: center;">03.Vertical-Slider</h2>
						<div class="vertical-slider">
							<ul>
								<li><img src="<%=request.getContextPath()%>/img/demo/unslider/cat1.jpg"></img></li>
								<li><img src="<%=request.getContextPath()%>/img/demo/unslider/cat2.jpg"></img></li>
								<li><img src="<%=request.getContextPath()%>/img/demo/unslider/cat3.jpg"></img></li>
								<li><img src="<%=request.getContextPath()%>/img/demo/unslider/cat4.jpg"></img></li>
								<li><img src="<%=request.getContextPath()%>/img/demo/unslider/cat5.jpg"></img></li>
							</ul>
						</div>
					</div>
					<div class="demo">
						<h2 style="text-align: center;">04.Fading-Slider</h2>
						<div class="fading-slider">
							<ul>
								<li><img src="<%=request.getContextPath()%>/img/demo/unslider/cat1.jpg"></img></li>
								<li><img src="<%=request.getContextPath()%>/img/demo/unslider/cat2.jpg"></img></li>
								<li><img src="<%=request.getContextPath()%>/img/demo/unslider/cat3.jpg"></img></li>
								<li><img src="<%=request.getContextPath()%>/img/demo/unslider/cat4.jpg"></img></li>
								<li><img src="<%=request.getContextPath()%>/img/demo/unslider/cat5.jpg"></img></li>
							</ul>
						</div>
					</div>
					<div class="demo">
						<h2 style="text-align: center;">04.Manual-Slider</h2>
						<div class="manual-slider">
							<ul>
								<li><img src="<%=request.getContextPath()%>/img/demo/unslider/cat1.jpg"></img></li>
								<li><img src="<%=request.getContextPath()%>/img/demo/unslider/cat2.jpg"></img></li>
								<li><img src="<%=request.getContextPath()%>/img/demo/unslider/cat3.jpg"></img></li>
								<li><img src="<%=request.getContextPath()%>/img/demo/unslider/cat4.jpg"></img></li>
								<li><img src="<%=request.getContextPath()%>/img/demo/unslider/cat5.jpg"></img></li>
							</ul>
						</div>
						<input id="manual" placeholder="Type the slide number (or just first/last) here">
					</div>
				</div>
			</div>	
		</li>
	</ul>
	<script type="text/javascript">
		$(function() {
			//01.Automatic-Slider
			$('.default-slider').unslider();
			//02.Automatic-Slider
			$('.automatic-slider').unslider({
				autoplay: true,
				infinite: true // default false. if false, the slider will start from begin when the slider end.
			});
			//03.Vertical-Slider
			$('.vertical-slider').unslider({
				animation	: 'vertical',
				autoplay	: true,
				infinite	: true
			});
			//04.Fading-Slider
			$('.fading-slider').unslider({
				animation	: 'fade',
				autoplay	: true,
				infinite	: true
			});
			//04.Manual-Slider
			$('.manual-slider').unslider({
				keys	: false,
				arrows	: false,
				nav		: false
			});
			$('#manual').on('keyup',function(){
				$('.manual-slider').unslider('animate:'+$(this).val());
			});
			
		});
	</script>
</body>
</html>