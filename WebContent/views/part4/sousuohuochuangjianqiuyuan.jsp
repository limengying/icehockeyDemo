<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>搜索或创建球员</title>
		<link rel="stylesheet" href="../../css/part4/sousuohuochuangjianqiuyuan.css" />
		<link rel="stylesheet" href="../../css/jqueryMobile/jquery.mobile-1.4.5.min.css"/>
		
		<script src="../../js/jQuery/jquery-2.2.3.min.js"></script>
		<script src="../../js/jqueryMobile/jquery.mobile-1.4.5.min.js"></script>	
		<script type="text/javascript">
			$(document).ready(function(){
			  $("#new_btn").click(function(){
			    window.location.href="xingbiexuanze.jsp";
			  });
			  
			  $(".shouye").click(function(){
			    window.location.href="../part1/zhukongyemian.jsp";
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
		<!--	屏幕适配	-->
		<script>
			(function(doc, win) {
				var docEl = doc.documentElement,
					resizeEvt = 'orientationchange' in window ? 'orientationchange' : 'resize',
					recalc = function() {
						var clientWidth = docEl.clientWidth;
						if(!clientWidth) return;
						docEl.style.fontSize = 16 * (clientWidth / 720) + 'px';
					};

				if(!doc.addEventListener) return;
				win.addEventListener(resizeEvt, recalc, false);
				doc.addEventListener('DOMContentLoaded', recalc, false);
			})(document, window);
		</script>

		<div data-role="page" class="sousuohuochaungjianqiuyuan main">
			<div data-role="content">
				<div class="header">
					<a href="#" onClick="javascript :history.back(-1);" data-ajax="false"></a>
					<span>添兵添将</span>
				</div>
				
	      		<div class="search">
	      			<form method="post" action="demoform.asp">
						<div data-role="fieldcontain">
							<label for="search">请输入搜索姓名：</label>
							<input data-role="" type="search" name="search" id="search" placeholder="">
						</div>
						<input type="submit" data-inline="true" value="搜索" id="btn">
					</form> 
	      		</div>
	      		
	      		<div id="new_btn">
	      			<button>创建新球员</button>
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
        
        <script src="../../js/common/common.js"></script>
		<script src="../../js/urlApi/api.js"></script>
		<script type="text/javascript" src="../../js/part4/sousuohuochuangjianqiuyuan.js" ></script>
	</body>
</html>