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
				<pre><h3>胡益珲</h3><h5>先生</h5>
				
 
 
 
 
                         				
1994年里根总统授予的国家级技术勋章    （获奖）    				

1996年 杰斐逊公众服务奖    （获奖）    

1997年 十年企业家    （提名）    

1997年 最成功的管理者    （提名）    

2006年位列时代周刊“十大风云人物”第七。

2007年 年度最伟大商人    （提名）    

2009年 时代周刊年度风云人物之一、美国最佳CEO    （提名）    

2012年 美国最具影响力20人    （提名）    

2011年11月04日入选华尔街日报新闻人物。

2012年入选2012中国青年领袖候选人。

2014年《南方人物周刊》魅力人物之“任性之魅”。
								
								
								 -----"我不是为了输赢,我就是认真。"
								 
								 -----"'永远年轻,永远热泪盈眶'当你试图放弃你认为正确事情的时候,看看这句话。"
								 
								 -----"所有的细节都决定成败。"
								 
								 -----"失败只有一种,那就是半途而废。"
</pre>
			</div>
			<div id="right1" style=""><img src="${pageContext.request.contextPath}/images/NEWIMG_1742.png"></div>
		</div>



	</div>

</body>
</html>