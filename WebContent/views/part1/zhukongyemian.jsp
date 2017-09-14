<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
		<meta http-equiv="X-UA-Compatible" content="ie=edge">	
		<title>主控页面</title>
		<link rel="stylesheet" href="../../css/part1/zhukongyemian.css" />
		<link rel="stylesheet" href="../../css/jqueryMobile/jquery.mobile-1.4.5.min.css"/>
		<link rel="stylesheet" href="../../css/part1/zhucedengluyemain.css"/>
		<script src="../../js/jQuery/jquery-2.2.3.min.js"></script>
		<script src="../../js/jqueryMobile/jquery.mobile-1.4.5.min.js"></script>	
		<script type="text/javascript">
			$(document).ready(function(){
			  $(".a").click(function(){
			    window.location.href="../part2/jiaobingbibaizhuyemian.jsp";
			  });
			  $(".b").click(function(){
			    window.location.href="../part3/bingtianxuedizhuyemian.jsp";
			  });
			  $(".c").click(function(){
			    window.location.href="../part4/tianbingtianjiangzhuyemian.jsp";
			  });
			  $(".d").click(function(){
			    window.location.href="";
			  });
			  $(".e").click(function(){
			    window.location.href="";
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
		<div data-role="page" class="zhukongyemian">
			<div class="zhukongyemian_top">
				<div class="backimage">
					<img src="../../img/part1/zhukongyemian.png" />
				</div>
				
				<div>
				<!--
                	<div class="a"><a href="../part2/jiaobingbibaizhuyemian.jsp"><span>骄兵<br/>必败</span></a></div>
					<div class="b"><a href="../part3/bingtianxuedizhuyemian.jsp"><span>冰天<br/>雪地</span></a></div>
					<div class="c"><a href="../part/tianbingtianjiangzhuyemian "><span>添兵<br/>添将</span></a></div>
					<div class="d"><a href="../part/binglinchengxiazhuyemian "><span>兵临<br/>城下</span></a></div>
					<div class="e"><a href="../part/bingbuxuerenzhuyemian "><span>冰步<br/>雪刃</span></a></div>
                -->
              	    <div class="a"><span>浇兵<br/>必败</span></div>
					<div class="b"><span>冰天<br/>雪地</span></div>
					<div class="c"><span>添兵<br/>添将</span></div>
					<div class="d"><a href="../part/binglinchengxiazhuyemian "><span>兵临<br/>城下</span></a></div>
					<div class="e"><a href="../part/bingbuxuerenzhuyemian "><span>冰步<br/>雪刃</span></a></div>
				</div>
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
	</body>
</html>