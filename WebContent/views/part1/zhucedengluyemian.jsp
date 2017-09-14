<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
		<meta http-equiv="X-UA-Compatible" content="ie=edge">	
		<title>注册登录页面</title>
		<link rel="stylesheet" href="../../css/part1/zhucedengluyemain.css" />
		<link rel="stylesheet" href="../../css/jqueryMobile/jquery.mobile-1.4.5.min.css"/>
		<script src="../../js/jQuery/jquery-2.2.3.min.js"></script>
		<script src="../../js/jqueryMobile/jquery.mobile-1.4.5.min.js"></script>	
		<script type="text/javascript">
			$(document).ready(function(){
				$(".buttonone").click(function(){
			    window.location.href="";
			  });
			  $(".buttontwo").click(function(){
			    window.location.href="qitadenglufangshi.jsp";
			  });
			  $(".shouye").click(function(){
			    window.location.href="zhukongyemian.jsp";
			  });
			  $(".zhanshu").click(function(){
			    window.location.href="../part7/zhanshubanzhuyemian.jsp";
			  });
			  $(".zhandui").click(function(){
			    window.location.href="";
			  });
			  $(".wode").click(function(){
			    window.location.href="../part8/wodezhongxin.jsp";
			  });
			});
		</script>
		<!--
width=device-width ：表示宽度是设备屏幕的宽度 
initial-scale - 初始的缩放比例
minimum-scale - 允许用户缩放到的最小比例
maximum-scale - 允许用户缩放到的最大比例
user-scalable - 用户是否可以手动缩放
      -->       
	</head>
	
	<body>
        	<script>
		(function(doc, win) {
			var docEl = doc.documentElement, resizeEvt = 'orientationchange' in window ? 'orientationchange'
					: 'resize', recalc = function() {
				var clientWidth = docEl.clientWidth;
				if (!clientWidth)
					return;
				docEl.style.fontSize = 16 * (clientWidth / 720) + 'px';
			};

			if (!doc.addEventListener)
				return;
			win.addEventListener(resizeEvt, recalc, false);
			doc.addEventListener('DOMContentLoaded', recalc, false);
		})(document, window);
		</script>

   
		<div data-role="page" class="main">
				 <div data-role="content">
				 	
				 	<div  class="btn">
						  <a href="#" data-role="button"  class="buttonone">
						  	<img src="../../img/part1/weixin.png" />
						  	<span >微信登录</span></a>
						  <a href="qitadenglufangshi.jsp"  class="buttontwo" data-role="button"  data-ajax="false">其它登录方式</a>
				 	</div>
				 	
				 	<div class="button">
							<div class="shouye" onclick="shouyeClick()">
								<span>首页</span>
							</div>
							<div  class="zhanshu" onclick="zhanshuClick()">
								<span>战术</span>
							</div>
							<div  class="zhandui" onclick="zhanduiClick()">
								<span>战队</span>
							</div>
							<div class="wode" onclick="wodeClick()">
								<span>我的</span>
							</div>
				   </div>	
				</div>		  
		</div>
			

<div class="wait">

</div>
	</body>

<!--
	<script>
    setTimeout(function(){
        $('.wait').fadeOut();
    },1000);
    setTimeout(function(){
        $('.container-fluid').fadeIn();
    },1500);
        $('.other').on('click',function(){
        $('.container-fluid').fadeOut();
        this.location=''
    });
-->
	
</html>