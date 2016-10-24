<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import= " java.util.*" import= "com.huyihui.*"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<title>购物车</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/demo.css">

		<style>
			* {
				margin: 0;
				padding: 0;
			}
			
			.topDiv {
				font-size: 14px;
				color: darkgrey;
				font-family: "微软雅黑";
				background-color: #FFFFFF;
				border: 1px solid #747474;
				position: fixed;
				z-index: 9999;
				display: none;
				width: 500px;
				height: 300px;
				margin-top: 13%;
				margin-left: 30%;
				padding: 10px;
				text-align: center;
				border-radius: 10px;
			}
			
			.button {
				background-color: #008000;
				margin: 8px auto;
				font-size: 30px;
				padding: 8px 20px;
				width: 80px;
				border-radius: 10px;
			}
			
			.button a:link,
			.button a:hover {
				text-decoration: none;
				color: white;
				margin-left: 8px;
			}
			
			.button a:active,
			.button a:visited {
				text-decoration: none;
				color: white;
				text-align: center;
			}
			
			#show {
				Z-INDEX: 8888;
				position: absolute;
				-moz-opacity: 0.50;
				opacity: 0.3;
				filter: alpha(opacity=30);
				background-color: #000;
				display: none;
			}
			
			.shop_mainbody {
				width: 1200px;
				margin: 0 auto;
			}
			
			.shop_content_top {
				width: 1200px;
				margin-top: 50px;
				font-family: 微软雅黑;
				border: 1px solid steelblue;
				font-weight: bold;
			}
			
			.shop_content_top td {
				padding: 20px 80px;
			}
			
			.shop_content_medium_1 {
				width: 1200px;
				margin-top: 20px;
				border: 1px solid steelblue;
				font-weight: bold;
				filter: alpha(opacity=50);
				/*支持 IE 浏览器*/
				-moz-opacity: 0.50;
				/*支持 FireFox 浏览器*/
				opacity: 0.50;
				/*支持 Chrome, Opera, Safari 等浏览器*/
				background-color: black;
			}
			
			.shop_content_medium_1 td {
				padding: 20px 60px;
			}
			
			.shop_content_medium_2 {
				border: 1px solid steelblue;
				margin-top: 20px;
				padding: 10px 60px;
				font-weight: bold;
				font-family: 微软雅黑;
			}
			
			.shop_content_medium_2 span {
				background-color: darkred;
				color: white;
				font-weight: bold;
			}
			
			.shop_content_foot {
				border: 1px solid steelblue;
				margin-top: 20px;
				padding: 10px 60px;
				font-family: 微软雅黑;
				font-weight: bold;
			}
			
			.shop_content_foot_lt {
				text-align: left;
			}
			
			.shop_content_foot_rt {
				text-align: right;
			}
			
			.shop_content_foot_rt span {
				background-color: lightseagreen;
				color: white;
				padding: 5px 10px;
				font-size: 20px;
			}
		</style>
		<script type="text/javascript">
			function change() {
				//获取所有子项复选框对象
				var chs = document.getElementsByName("ch");
				//获取全选复选框对象
				var chall = document.getElementById("chall");

				for(var i = 0; i < chs.length; i++) {
					chs[i].checked = chall.checked;
				}

			}
		 
		 
	        function showDiv(){
			 var winWidth;
			 var winHeight;
				if (document.body && document.body.clientHeight && document.body.clientWidth)
					{
						winHeight = document.body.clientHeight;
						winWidth = document.body.clientWidth;
					}
			    document.getElementById('show').style.display="block";
			    document.getElementById('show_win').style.display="block";
				document.getElementById('show').style.width=winWidth+"px";
				document.getElementById('show').style.height=winHeight+"px";
			}
		</script>
	</head>

	<body background=${pageContext.request.contextPath}/./images/bg0.jpg>
		
		<div id="show"></div>
		<div class="topDiv" id="show_win">
			<p>扫码付款</p><br>
			<img src="${pageContext.request.contextPath}/images/123123.JPG" width="200px" height="200px" />
			<div class="button">
				<a href="${pageContext.request.contextPath}/orderAction/adddd.action?userid=${sessionScope.user.userid}">确认</a>
			</div>
		</div>
		
		<div class="container">
			<div class="header">
				<a href="${pageContext.request.contextPath}/index.jsp"> Home </a>
				<div class="pause" id="pause">
					<a onmouseover="musics()"><img src="${pageContext.request.contextPath}/images/pause.PNG" width="24px" height="20px"/></a>
				</div>
			</div>
			<div id="nav">
				<div class="embed" id="emb" style="display: none">
				<embed height=55 width=350 src="${pageContext.request.contextPath}/img/asdfwqe1.mp3"></embed>
			
			</div>
			</div>
			<script>
			var music=document.getElementById("emb");
			function musics(){
				if(music.style.display=="none"){
					music.style.display="block";	
				}else{
					music.style.display="none";
				}
			}
			</script>
		</div>
		</div>

		<div class="shop_mainbody">
			<div class="shop_content_top">
			
				<table id="1" style="">
					<tr>
						<td><font color="black" >全选</font></td>
						<td><font color="black" >名称</font></td>
						<td><font color="black" >单价</font></td>
						<td><font color="black" >数量</font></td>
						<td><font color="black" >小计</font></td>
						<td><font color="black" >尺码</font></td>
					</tr></table>
				</div>
				
			<div class="shop_content_medium_1">
				<table>

					<c:forEach items="${requestScope.list}" var="car">
					<tr>
						<td><input type="checkbox" name="ch"/><img src="/upload/${car.cartItpho}" width="100px"></td>
						<td>${car.cartItname}</td>
						<td>${car.cartItprice}元</td>
						<td>${car.cartItnum }</td>
						<td>${car.cartItprice*car.cartItnum}元</td>
						<td>${car.cartItsize}</td>
						<td><a href="${pageContext.request.contextPath}/cartItemAction/dellll.action?cartItid=${car.cartItid}">移除</a><br/><br/></td>
					</tr>
					</c:forEach>
				</table>
			</div>
			<div class="shop_content_medium_2">
				<span>满赠劵</span>&nbsp;&nbsp;再加0.1元【全场】【买就送G20特惠包邮劵】
			</div>
			<div class="shop_content_foot">
				<div class="shop_content_foot_lt"><input type="checkbox" id="chall" onclick="change()" /><font color="black" size="3px">全选</font>&nbsp;
				<div class="shop_content_foot_rt">

					<%=new java.text.SimpleDateFormat("yyyy年MM月dd号").format(new Date())%>
				<!-- <a href="${pageContext.request.contextPath}/orderAction/adddd.action?userid=${sessionScope.user.userid}&ordertime=<%=new java.text.SimpleDateFormat("yyyy/MM/dd hh:mm:ss").format(new Date())%>&ordername=<%=new java.text.SimpleDateFormat("yyyyMMddhhmmss").format(new Date())%>">立即购买</a>
				 -->	
				  <span onclick="showDiv()">下单</span>
				</div>
			</div>
		</div>
		<div class="shop_footer"></div>
	</body>
</html>