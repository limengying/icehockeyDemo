<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
<title>基本信息</title>
<link rel="stylesheet" href="../../css/part1/allpagesame.css"/>
<link rel="stylesheet"
	href="../../css/jqueryMobile/jquery.mobile-1.4.5.min.css" />
<link rel="stylesheet" href="../../css/part4/jibenxinxi.css"/>

<script src="../../js/jQuery/jquery-2.2.3.min.js"></script>
<script src="../../js/jqueryMobile/jquery.mobile-1.4.5.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

		$(".jiechubangding").click(function() {
			alert("您确认要解除绑定吗？");
		});
		$(".xinxione").click(function() {
			window.location.href = "xiangxixinxi.jsp";
		});
		$(".xinxitwo").click(function() {
			window.location.href = "shujvxinxi2.jsp";
		});
		
		
		$(".jiben").click(function() {
			window.location.href = "jibenxinxi.jsp";
		});
		
		$(".shujv").click(function() {
			window.location.href = "shujvxinxi.jspp";
		});
	});
</script>
</head>

<body>


	<div data-role="page" class="allpage">		
				<div class="top">	
					 <div href="#" onClick="javascript :history.back(-1);" data-ajax="false" class="back">	
                    	<img src="../../img/part1/back.png" />
				    </div>
					<div class="biaoti">
						添兵添将
					</div>
					
				</div>
				
            
			
			<div class="jiben" >
				<div class="a ">
					基本信息
				</div>
		
					<div class="everyone">
						<div class="day">所属俱乐部：</div>
						
						<div class="team">
							<div class="content_left">
											<div class="image">
												<img src="../../img/part5/a.jpg" />
											</div>
							</div>
			
							<div class="content_mid">
											<div class="name">姓名</div>
											<div class="sex">性别</div>
											<div class="countryId">身份证号</div>
											
							</div>
							
						</div>
						
						
			
							<div class="next">
								            <div class="cityId">城市</div>
											<div class="height">身高</div>
											<div class="weight">体重</div>
											<div class="position">位置</div>
							             	<div class="roleId">角色</div>
											<div class="birthday">出生日期</div>
											<div class="firstLearnAge">初学年龄</div>
											<div class="roleId">角色编号</div>
											<div class="handlingId">持杆方式</div>
											<div class="creatMeld">谁创建我</div>
											<div class="">当前组别</div>
											<div class="">师从教练</div>
									
											
							</div>		
							
					</div>
			</div>
			
			<div class="bianji">
				<input type="button" value="编辑"/>
		    </div>

			
	
			
			<div class="button">
				<div class="shouye" onclick="shouyeClick()">
					<span>首页</span>
				</div>
				<div class="zhanshu" onclick="zhanshuClick()">
					<span>战术</span>
				</div>
				<div class="zhandui" onclick="zhanduiClick()">
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
	<script type="text/javascript" src="../../js/part4/zuoyoushougan.js"></script>
</body>
</html>