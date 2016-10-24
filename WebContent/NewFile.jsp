<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8" />
<title>衣服</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/demo.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/zs.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/list.css">
</head>
<body background=${pageContext.request.contextPath}/./images/bg0.jpg>

	<div class="container">
		<div class="header">
			<a href="${pageContext.request.contextPath}/index.jsp"> Home </a>
			<c:if test="${sessionScope.user.username==null}">
			请登录
			 </c:if>
			<c:if test="${sessionScope.user.username!=null}">
			 当前用户是:${sessionScope.user.username}
			 </c:if>
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
	<div id="yoshirotten">
		<table>
			<tr>
				<td><img src="${pageContext.request.contextPath}/images/tt.jpg"/ ></td>
			</tr>
			<tr>
				<td><img src="${pageContext.request.contextPath}/images/nk.jpg" />

				</td>
			</tr>
		</table>
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
		</div>
	</div>
</body>
</html>