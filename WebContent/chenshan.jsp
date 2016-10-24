<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8" />
<title></title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/demo.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/zs.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/list.css">
<script>
	var targetPic = 1;
	function show() {
		for (var i = 1; i < 5; i++) {
			if (i == targetPic) {
				document.getElementById('img' + i).style.display = 'block';
			} else {
				document.getElementById('img' + i).style.display = 'none';
			}
		}
		if (targetPic < 4) {
			targetPic++;
		} else {
			targetPic = 1;
		}
		setTimeout("show()", 2000);
	}
</script>
</head>

<body background=${pageContext.request.contextPath}/./images/bg0.jpg onload="show()">

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
		<div><p><span style="font-family:微软雅黑;font-size: 60px;">U涂<br/><br/>
		匠心独运,诚意之作</span></p></div>
		<div id="b">
			<div id="zs1">
				<img src="${pageContext.request.contextPath}/images/qweqwe3.PNG" />
			</div>

			<div id="zs2">



				<div>
					<p>
						<img src="${pageContext.request.contextPath}/images/1200.jpg" width="100%" height="400px" id="img1" />
					</p>
					<p>
						<img src="${pageContext.request.contextPath}/images/168-g3.jpg" width="100%" height="400px" id="img2" />
					</p>
					<p>
						<img src="${pageContext.request.contextPath}/images/lb-0601-g.jpg" width="100%" height="400px"
							id="img3" />
					</p>
					<p>
						<img src="${pageContext.request.contextPath}/images/mtcs-2-0601.jpg" width="100%" height="400px"
							id="img4" />
					</p>

				</div>



			</div>
			<div id="zs3">
				<div id="content_left"></div>
				<div id="content_mid">
					<div id="content_mid_t"></div>
					<div id="content_mid_f"></div>
				</div>
				<div id="content_right">right</div>
			</div>

			<div id="zs4">
				<div class="shirt-list">
					<ul class="shirts-product-list">
					<c:forEach items="${requestScope.list}" var="pro">
						<li><a
						href="${pageContext.request.contextPath}/productAction/findById.action?proid=${pro.proid}"
						class="product-img" target="_blank" title="${pro.proname}"><img
							alt="${pro.proname}" src="/upload/${pro.prophoto}"></a> <a
						title="${pro.proname}" class="tit"
						href="${pageContext.request.contextPath}/productAction/findById.action?proid=${pro.proid}">
							${pro.proname}</a><span class="price">${pro.proprice}</span></li>
					</c:forEach>
					</ul>
					<div class="blank20"></div>
				</div>

			</div>
		</div>

	</div>

</body>

</html>