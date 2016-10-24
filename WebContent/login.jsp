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

 <div class="container" >
 <div class="header">
				<a href="${pageContext.request.contextPath}/index.jsp"> Back </a>
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
		 <h1>欢迎登陆</h1>
		
<div class="login-form">
	<div class="close"><a href="${pageContext.request.contextPath}/index.jsp"><img alt="" src="${pageContext.request.contextPath}/images/close.png"></a> </div>
		<div class="head-info">
			<label class="lbl-1"> </label>
			<label class="lbl-2"> </label>
			<label class="lbl-3"> </label>
		</div>
			<div class="clear"> </div>
	<div class="avtar">
		<img src="${pageContext.request.contextPath}/images/avtar.png" />
	</div>
			<form action="${pageContext.request.contextPath}/userAction/login.action" method="post">
					<input type="text" class="text" name="username" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Username';}" >
						<div class="key">
					<input type="password" name="userpwd" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}">
						</div>
							<input type="submit" value="login" >
			</form>
</div>
 </div>

</body>
</html>