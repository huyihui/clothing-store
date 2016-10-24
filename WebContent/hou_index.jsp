<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<title>欢迎您管理员</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/lanrenzhijia.css">
</head>
<body>
<!-- 代码部分begin -->
<div class="meny">
  <h2>后台页面</h2>
  <ul>
  	<li><a href="">返回首页</a></li>
    <li><a href="${pageContext.request.contextPath }/userAction/findAlll.action?userstatus=2">普通用户管理</a></li>
    <li><a href="${pageContext.request.contextPath }/talkAction/findAll1.action">评论管理</a></li>
    <li><a href="${pageContext.request.contextPath }/orderAction/findAll.action">订单管理</a></li>
    <li><a href="${pageContext.request.contextPath }/hou_pro.jsp">商品管理</a></li>
    <li><a href="${pageContext.request.contextPath }/userAction/findAlll1.action?userstatus=1">管理员管理</a></li>
  </ul>
</div>
<div class="meny-arrow"></div>
<div class="contents">
   <canvas  id="cas" style="height: 600px;"></canvas>
	<script src="js/canvas_index.js"></script>	 
   
   
   
   
   
   
  <div class="sharing"> <a href="#" class="twitter-share-button" data-text="lanrenzhijia" data-url="#" data-count="small" data-related="hakimel"></a> </div>
</div>
<script src="${pageContext.request.contextPath }/js/meny.min.js"></script>
<script>
	var meny = Meny.create({
		menuElement: document.querySelector( '.meny' ),
		contentsElement: document.querySelector( '.contents' ),
		position: Meny.getQuery().p || 'left',
		height: 200,
		width: 260,
		threshold: 40,
		mouse: true,
		touch: true
	});
	if( Meny.getQuery().u && Meny.getQuery().u.match( /^http/gi ) ) {
		var contents = document.querySelector( '.contents' );
		contents.style.padding = '0px';
		contents.innerHTML = '<div class="cover"></div><iframe src="${pageContext.request.contextPath }/'+ Meny.getQuery().u +'" style="width: 100%; height: 100%; border: 0; position: absolute;"></iframe>';
	}
</script>
<!-- 代码部分end -->
</body>
</html>