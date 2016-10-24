<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/xiangqing.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/base.css" />
<script src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript">
	function jia() {
		var count = parseInt(document.getElementById("count").value);
		document.getElementById("count").value = count + 1;
	}
	function jian() {
		var count = parseInt(document.getElementById("count").value);
		if (count > 0) {
			document.getElementById("count").value = count - 1;
		}
	}

/* 	 function pinglun() {
		var pingjia = document.getElementById("txt");
		if (pingjia.style.display == "none") {
			pingjia.style.display = "block";

			$.ajax({
				type:'post',
				url:'${pageContext.request.contextPath}/talkAction/findAll.action',
				success:function(list){
						var html="";
					    $.each(list,function(n,value){    
					    	html += '<div class ="pingjia_content"><img src="${pageContext.request.contextPath}/images/123123.png"><div class="pingjia_cot"><h3>'+value.talkusername+':</h3>'
					    	+value.talkneirong+'</div></div>'
					    });
					    $('#txt').html(html);

					
				}
			});
		} else {
			pingjia.style.display = "none"
		}

	}  */

	$(function(){
		$(".biaoti").click(function(){
			$("#txt").fadeToggle(400);
		})
		$.ajax({
			type:'post',
			url:'${pageContext.request.contextPath}/talkAction/findAll.action',
			success:function(list){
					var html="";
				    $.each(list,function(n,value){    
				    	html += '<div class ="pingjia_content"><img src="${pageContext.request.contextPath}/images/123123.png"><div class="pingjia_cot"><h3>'+value.talkusername+':</h3>'
				    	+value.talkneirong+'</div></div>'
				    });
				    $('#txt').html(html);				
			}
		});
	})
</script>

</head>

<body> 
<style type="text/css" >
.header {
    font-family: 'Arial Narrow', Arial, sans-serif;
    line-height: 24px;
    font-size: 11px;
    background: #000;
    opacity: 0.9;
    text-transform: uppercase;
    z-index: 9999;
    position: relative;
    -moz-box-shadow: 1px 0px 2px #000;
    -webkit-box-shadow: 1px 0px 2px #000;
    box-shadow: 1px 0px 2px #000;
}
</style>
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

	<div class="wrap">
		<div class="top">
			<div class="top-lift">
				<img src="/upload/${product.prophoto}" width="430px" height="430px" />
			</div>
			<div class="top-right">
				<div class="top-right-1">
					<h1>${product.proname}</h1>
					<br> 新疆精梳棉，吸汗不闷无惧苏
				</div>
				<div class="top-right-2">
					售价 &nbsp; <span class="price">${product.proprice}元</span><br />  &nbsp;&nbsp;<span class="mianfei"></span> <span
						class="jilv"></span><br /> 服务 &nbsp;30天无忧退货
					48小时快速退款 满88元包邮
				</div>
				<form
					action="${pageContext.request.contextPath}/cartItemAction/addd.action"
					method="post">
					<input type="hidden" name="cartItid" value="${product.proid}" /> <input
						type="hidden" name="cartItname" value="${product.proname}" /> <input
						type="hidden" name="cartItprice" value="${product.proprice}" /> <input
						type="hidden" name="userid" value="${sessionScope.user.userid }" />
					<input type="hidden" name="cartItpho" value="${product.prophoto}" />

					<!-- 尺码 -->
					<div class="top-right-3">
						<div class="sys_item_spec">
							<dl class="clearfix iteminfo_parameter sys_item_specpara"
								data-sid="2">
								<dt>尺码</dt>
								<dd>
									<input type="radio" name="cartItsize" value="S">S <input
										type="radio" name="cartItsize" value="M">M <input
										type="radio" name="cartItsize" value="L">L <input
										type="radio" name="cartItsize" value="XL">XL
								</dd>
							</dl>
						</div>
					</div>
					<!-- 数量 -->
					<div class="top-right-4">
						<span class="shuliang">数量</span> <input type="button" value="-"
							onclick="jian()" /> <input type="text" value="1"
							name="cartItnum" id="count" size="1" /> <input type="button"
							value="+" onclick="jia()" />
					</div>

					<!-- 购买 -->
					<div class="top-right-5">
						<input type="submit" id="btn" value="购买" />
					</div>
				</form>


			</div>
		</div>

		<div class="mid">
			<div class="biaoti" onclick="">评价</div>
			<div class="pingjia" id="txt" style="display: none">
			<%-- 	<div class="pingjia_content">
					<img alt=""
						src="${pageContext.request.contextPath}/images/123123.png">
					<div class="pingjia_cot">
						<h3>zhangsan:</h3>
						这款衣服很棒!!给儿子买的 他很喜欢这款衣服很棒!!给儿子买的 他很喜欢这款衣服很棒!!给儿子买的
						他很喜欢这款衣服很棒!!给儿子买的 他很喜欢这款衣服很棒!!给儿子买的 他很喜欢这款衣服很棒!!给儿子买的
						他很喜欢这款衣服很棒!!给儿子买的 他很喜欢这款衣服很棒!!给儿子买的 他很喜欢这款衣服很棒!!给儿子买的
						他很喜欢这款衣服很棒!!给儿子买的 他很喜欢这款衣服很棒!!给儿子买的 他很喜欢这款衣服很棒!!给儿子买的
						他很喜欢这款衣服很棒!!给儿子买的 他很喜欢
					</div>
				</div> --%>
			<%-- 	<c:forEach items="${list}" var="tk">
				<div class="pingjia_content">${tk.talkneirong }</div>
				</c:forEach>
				<div class="pingjia_content"></div> --%>
			</div>
		</div>
	</div>
	<div class="foot">
		<div class="foot-top">
			<ul>
				<li>30天无忧退货</li>
				<li>优美明信片</li>
				<li>U涂品质保证</li>
			</ul>
		</div>

		<div class="foot-bottom">

			<nav class="nav">
				<a class="text" href="#">关于我们</a> <b class="split">|</b> <a
					class="text" href="#">帮助中心</a> <b class="split">|</b> <a
					class="text" href="#">售后服务</a> <b class="split">|</b> <a
					class="text" href="#">配送与验收</a> <b class="split">|</b> <a
					class="text" href="#">商务合作</a> <b class="split">|</b> <a
					class="text" href="#">企业采购</a>
			</nav>
			<p class="copyright">U涂公司版权所有 © 1997- 20162016 ICP证：京B2-20160106
				&nbsp;京ICP备15041168号</p>
		</div>
	</div>
	</div>

</body>

</html>