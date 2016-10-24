<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.2.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/demo.css">
<link href="${pageContext.request.contextPath}/css/style.css" rel='stylesheet' type='text/css' />
<script type="text/javascript">
	
</script>
</head>
<body background=${pageContext.request.contextPath}/./images/bg0.jpg>

	<!--SIGN UP-->

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

		<div id="a1">
			<div id="left1">
	           <p>QQ:123456&nbsp;&nbsp;地址: Room 501 ,Unit 6,Building 20 North Donghuashi Residential</p>
			</div>
			<div id="right1"><img alt=""  src="${pageContext.request.contextPath}/images/photo-1472377521129-f4ddafa8b372.jpg"></div>
		</div>



	</div>

</body>
</html>