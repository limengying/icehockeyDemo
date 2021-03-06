<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
<title>冰天雪地主页面</title>
<link rel="stylesheet" href="../../css/part1/allpagesame.css" />
<link rel="stylesheet" href="../../css/part3/bingtianxuedizhuyemian.css" />
<script src="../../js/jQuery/jquery-2.2.3.min.js" type="text/javascript"></script>
<link rel="stylesheet"
	href="../../css/jqueryMobile/jquery.mobile-1.4.5.min.css" />
<script src="../../js/jqueryMobile/jquery.mobile-1.4.5.min.js"
	type="text/javascript"></script>
</head>

<body style='overflow: scroll; overflow-x: hidden'>
	<div data-role="page" class="allpage">
		<!--标题-->
		<div class="top">
			<div onClick="javascript :history.back(-1);" data-ajax="false"
				class="back">
				<img src="../../img/part1/back.png" />
			</div>
			<div class="biaoti">冰天雪地</div>
		</div>
		<!--查询框-->
		<div class="search_a">
			<div class="search_c">
				<input type="submit" data-role='none' value="添加" class="clubAddBtn"></input>
			</div>
			<div class="search_b">
				<input type="text" data-role='none' class="search" name="search" id="clubSearch" placeholder="模糊查询">
			</div>
			<div class="search_d">
				<input type="submit" data-role='none' value="搜索" class="submitBtn"
					id="clubSubmitBtn"></input>
			</div>
		</div>


		<!--导航栏-->
		<div class="navbar">
			<div class="club">
				<div>
					<img src="../../img/part3/xiehui.png">
				</div>
				<div>俱乐部</div>
			</div>
			<div class="schoolTeam">
				<img src="../../img/part3/xuexiao.png">
				<div>校队</div>
			</div>
			<div class="competition">
				<img src="../../img/part3/qiuyuan.png">
				<div>赛事</div>
			</div>
		</div>

		<!--导航栏下面内容-->
		<div data-role="content" class="all">
			<c:choose>
				<c:when test="${!empty clubs}">
					<c:forEach items="${clubs}" var="club" varStatus="st">
						<input type="hidden" id="clubId" value="${club.clubId}" />
						<div class="everyone" id="club" onclick="goto1('${club.clubId}','club')">
							<div class="name">${club.clubName}</div>
							<div class="introduce">成立时间： ${club.buildTime}</div>
						</div>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<P>没有记录</P>
				</c:otherwise>
			</c:choose>
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
</body>

<script src="../../js/common/common.js"></script>
<script src="../../js/urlApi/api.js"></script>
<script src="../../js/part3/bingtianxuedi.js"></script>
</html>
