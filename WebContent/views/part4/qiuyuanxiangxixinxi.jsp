<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
<title>球员详细信息</title>
<link rel="stylesheet" href="../../css/part1/allpagesame.css" />
<link rel="stylesheet"
	href="../../css/jqueryMobile/jquery.mobile-1.4.5.min.css" />
<link rel="stylesheet" href="../../css/part4/qiuyuanxiangxixinxi.css" />

<script src="../../js/jQuery/jquery-2.2.3.min.js"></script>
<script src="../../js/jqueryMobile/jquery.mobile-1.4.5.min.js"></script>
</head>
<body>
	<div data-role="page" class="allpage">
		<div class="top">
			<div onClick="javascript :history.back(-1);" data-ajax="false"
				class="back">
				<img src="../../img/part1/back.png" />
			</div>
			<div class="biaoti">添兵添将</div>
			<input type="hidden" value="${player.playerId}" class="playerId" />
			<div class="jiechubingding">
				<input type="button" data-role='none' value="取消关注"
					class="jiechubangding"></input>
			</div>
		</div>
		<div class="jiben">
			<div class="a ">基本信息</div>
			<div class="everyone">
				<div class="day">所属俱乐部：${club.clubName}</div>
				<div class="team">
					<div class="content_left">
						<div class="image">
							<img src="../../img/part5/a.jpg" />
						</div>
					</div>
					<div class="content_mid">
						<div class="name">姓名:${player.name}</div>
						<div class="sex">
							性别:
							<c:if test="${player.sex eq true}">男</c:if>
							<c:if test="${player.sex eq false}">女</c:if>
						</div>
						<div class="countryId">国籍:${country.nameChinese}</div>
						<div class="cityId">城市:${city.cityName}</div>
						<div class="height">身高:${player.height}</div>
						<div class="weight">体重:${player.weight}</div>
						<div class="position">位置:${player.position}</div>
						<div class="roleId">角色:${role.roleName}</div>
						<div class="birthday">出生日期:${player.birthday}</div>
						<div class="firstLearnAge">初学年龄:${player.firstLearnAge}岁</div>
						<div class="handlingId">持杆方式:${handling.handlingName}</div>
						<div class="creatMeld">谁创建我:${creatMeUser.userName}</div>
					</div>
				</div>
			</div>
		</div>

		<div class="shujv">
			<div class="a">数据信息</div>
			<div class="everyone">
				<div class="day">个人数据（最近三场比赛）</div>
				<div class="team">
					<div class="shujv_content_mid">
						<div class="jinqiu">进球:无</div>
						<div class="laqiu">拉球:无</div>
						<div class="chuanqiu">传球:无</div>
					</div>
				</div>
			</div>
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
	<script src="../../js/common/common.js"></script>
	<script src="../../js/urlApi/api.js"></script>
	<script type="text/javascript"
		src="../../js/part4/qiuyuanxiangxixinxi.js"></script>
</body>
</html>