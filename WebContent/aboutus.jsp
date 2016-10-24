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
					<a onmouseover="musics()"><img src="${pageContext.request.contextPath}/images/pause.PNG" width="24px" height="24px"/></a>
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
		<div id="a">
			<div id="left">
				<span id="sp1">Who are we?</span>
			</div>
			<div id="right"><br><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;u涂（ utu）
				是世界知名奢侈品牌，1975年由时尚设计大师<a href="${pageContext.request.contextPath}/author.jsp" style="color: yellow;">乔治·u涂·胡益珲（Giorgio
				utu·huyihui）</a>创立于意大利米兰，乔治·u涂是在美国销量最大的欧洲设计师品<br><br>牌，他以使用新型面料及优良制作而闻名。
				1974年，GiorgioArmani与朋友Sergio Galeotti合资，毅然成立以Giorgio utu为名字的男装品牌。甫一出
				utu大片欣<br><br>赏(19张) 道，Giorgio
				utu的男装系列，因其独特的风格深受时装买手和传媒的注视。西装上衣是其signature
				piece，剪裁秀丽，潇洒易穿。1975年，增设女装<br><br>线。值得一提，其妹Rosanna Armani是意大利Top
				model，她运用自己的影响力，令Giorgio Armani备受认识。 1981年，Emporio
				Armani正式成立，于米兰开<br><br>设首间Emporio
				Armani专门店。“Emporio”是意大利文，意思是“百货公司”。从其名字可想像到Emporio
				Armani就是一间Armani百货公司，货品种类林林总<br><br>总：有男装女装、鞋履、香水以至眼镜饰物等等。 1975~1981年
				陆续推出Giorgio utu Le Collezioni，Mani Uomo and Donna ，Armani Junior
				，Armani <br><br>Underwear，Armani Swinwear，Emporio Armani,Armani Jeans系列
				1982年 成为 Dior 继后第2位上了封面的时装设计师，同年推出香水Armani 1987~1997年<br><br>
				推出眼镜，连身袜，滑水服，高尔夫配件，表等配件系列 1984年 推出香水Armani men's cologne 1991年
				获皇家艺术学院声誉博士称号 1992年 推出香水Gio<br><br> 1995年 推出香水Aqua di Gio 1998 推出香水Emporio
				Armani 2013年11月，乔治·u涂 (Giorgio utu) 加入意大利国家时装商会 (National Chamber Of
				<br><br>Italian Fashion) 。</div>
		</div>



	</div>

</body>
</html>