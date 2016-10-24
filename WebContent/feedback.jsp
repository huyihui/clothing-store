<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>u涂服饰</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/demo.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style1.css">

	</head>

	<body background=${pageContext.request.contextPath}/./images/bg0.jpg>
		<div class="container">
			<div class="header">
				<a href="${pageContext.request.contextPath}/index.jsp"> Home </a>
				<div class="embed" id="emb" style="display: none">
				<embed height=55 width=350 src="${pageContext.request.contextPath}/img/asdfwqe1.mp3"></embed>
			
			</div>
			</div>
			<div id="nav">
				<div class="embed" id="emb" style="display: none">
				<embed src="${pageContext.request.contextPath}/img/asdfwqe1.mp3"></embed>
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
			<!--<div class="shuaxin_img">
				<a href=""><img src="images/shuaxin01.png" width="40px" height="40px" ></a>
			</div> -->
			<div class="clicker" id="clicker" onmouseover="show()"><img src="${pageContext.request.contextPath}/images/pinglun.png" /></div>
			<form action="${pageContext.request.contextPath}/talkAction/add.action" method="post" id="pinglun" style="display: none;">
				<input type="hidden" name="talkusername" value="${sessionScope.user.username }" />
				<table border="1" align="center">
					<tr>
						<td colspan="2">
							<h3>感&nbsp;谢&nbsp;购&nbsp;买</h3></td>
					</tr>
					<tr>
						<td colspan="2"><textarea rows="4" cols="40" name="talkneirong"></textarea></td>
					</tr>
					<tr>
						<td><input type="submit" value="发&nbsp;表&nbsp;评&nbsp;论" /></td>
						<td style="text-align: right;">
							<a href="${pageContext.request.contextPath}/contus.jsp"><input type="button" value="不了，谢谢" /></a>
						</td>
					</tr>
				</table>
			</form>
			<script>
				var shower = document.getElementById("pinglun");

				function show() {
					if(shower.style.display == "none") {
						shower.style.display = "block";
					} else {
						shower.style.display = "none";
					}
				}
			</script>

		</div>
	</body>

</html>