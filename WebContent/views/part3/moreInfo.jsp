<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />

<title>更详细的信息</title>

<script src="../../js/jQuery/jquery-2.2.3.min.js"></script>
<script src="../../js/jqueryMobile/jquery.mobile-1.4.5.min.js"></script>
<link rel="stylesheet"
	href="../../css/jqueryMobile/jquery.mobile-1.4.5.min.css" />
<link rel="stylesheet" href="../../css/part1/allpagesame.css" />
</head>

<body>
	<div data-role="page" class="allpage">
		<div class="top">
			<div onClick="javascript :history.back(-1);"
				data-ajax="false" class="back">
				<img src="../../img/part1/back.png" />
			</div>
			<div class="biaoti">详细信息</div>
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

		<script src="../../js/common/common.js"></script>
		<script src="../../js/urlApi/api.js"></script>
</body>

</html>