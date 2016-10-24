<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>u涂服饰</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/demo.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/style1.css">


</head>
<body background=${pageContext.request.contextPath}/./images/bg0.jpg>
	<div class="container">
		<div class="header">

			<a href=""> Home </a>
			<c:if test="${sessionScope.user.username==null}">
			请登录
			 </c:if>
			<c:if test="${sessionScope.user.username!=null}">
			 当前用户是:${sessionScope.user.username}
			 </c:if>

			<div class="pause" id="pause">
				<a onmouseover="musics()"><img
					src="${pageContext.request.contextPath}/images/pause.PNG"
					width="23px" height="22px" /></a>
			</div>
		</div>
		<div id="nav">
			<!--音乐盒-->
			<div class="h1">
				<img alt="u涂"
					src="${pageContext.request.contextPath}/img/1475053650915131.png">
			</div>
			<div class="embed" id="emb" style="display: none">
				<embed height=55 width=350
					src="${pageContext.request.contextPath}/img/asdfwqe1.mp3"></embed>

			</div>
		</div>
		<script>
			var music = document.getElementById("emb");
			function musics() {
				if (music.style.display == "none") {
					music.style.display = "block";
				} else {
					music.style.display = "none";
				}
			}
		</script>
		<div class="content">
			<ul class="bmenu">
				<li><a
					href="${pageContext.request.contextPath}/productAction/findAllPro1.action">衬衫</a></li>
				<li><a
					href="${pageContext.request.contextPath}/productAction/findAllPro.action">风衣</a></li>
				<li><a
					href="${pageContext.request.contextPath}/productAction/findAllPro1.action">内衣</a></li>
				<li><a
					href="${pageContext.request.contextPath}/productAction/findAllPro.action">T恤</a></li>
				<li><a
					href="${pageContext.request.contextPath}/productAction/findAllPro1.action">夹克</a></li>
				<li><a
					href="${pageContext.request.contextPath}/productAction/findAllPro.action">针织外套</a></li>
			</ul>


			<div class="more">
				<ul>
					<li>ヽ(ˋ▽ˊ)ノ:</li>
					<c:if test="${sessionScope.user.username==null}">
					<li ><a id="example" href="login.jsp">
							&nbsp;&nbsp;&nbsp;登&nbsp;&nbsp;录&nbsp;&nbsp;&nbsp; </a></li>
					<li><a href="regist.jsp">&nbsp;&nbsp;&nbsp;注&nbsp;&nbsp;册&nbsp;&nbsp;&nbsp;
					</a></li>
					</c:if>
					<c:if test="${sessionScope.user.username!=null}">
			 			<li><a
						href="${pageContext.request.contextPath}/cartItemAction/findproById.action?userid=${sessionScope.user.userid}">&nbsp;购&nbsp;物&nbsp;车&nbsp;
					</a></li>
			 		</c:if>

					<li><a href="aboutus.jsp">关于我们 </a></li>
					<li><a href="contus.jsp">联系我们 </a></li>
				</ul>
			</div>

		</div>
	</div>


</body>
</html>