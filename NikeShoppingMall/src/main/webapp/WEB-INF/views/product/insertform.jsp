<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" sizes="16x16 32x32 64x64" href="${pageContext.request.contextPath }/resources/img/nike3.png"/>
<meta charset="UTF-8">
<title>Team2 Nike Shop! 상품 추가</title>
<jsp:include page="/include/resource.jsp"></jsp:include>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<link rel="preconnect" href="https://fonts.gstatic.com"> 
<link href="https://fonts.googleapis.com/css2?family=Black+And+White+Picture&family=Black+Han+Sans&family=Cute+Font&family=Do+Hyeon&family=Dokdo&family=East+Sea+Dokdo&family=Gaegu&family=Gamja+Flower&family=Gothic+A1&family=Gugi&family=Hi+Melody&family=Jua&family=Kirang+Haerang&family=Nanum+Brush+Script&family=Nanum+Gothic&family=Nanum+Gothic+Coding&family=Nanum+Myeongjo&family=Nanum+Pen+Script&family=Noto+Sans+KR&family=Noto+Serif+KR&family=Poor+Story&family=Single+Day&family=Song+Myung&family=Stylish&family=Sunflower:wght@300&family=Yeon+Sung&display=swap" rel="stylesheet">

<style>
.container{
font-family: 'Noto Sans KR', sans-serif;
}
#productform{
   display: flex;
   flex-direction: column;
   margin: 0px 100px;
}
#productform label{
    border: none;
    padding:17px 0px;
    font-size: 17px;
    margin-top: 16.5px;
}
#productform input{
    border: none;
    padding:17px 0px;
    font-size: 17px;
    margin-top: 15px;
    width:600px;
}

.product-header{
    margin:80px 0px;
    text-align: center;
    display:flex;
    flex-direction: column;
    align-items: center;
}
.product-header__title{
    margin-bottom: 35px;
    font-size: 30px;
    font-weight: bold;
}
#productform button{
    height:65px;
    margin-top: 12px;
    padding: 13px;
    font-size: 15px;
    border: none;
    border-bottom: rgba(0,0,0,0.3);
    border-radius: 8px;
    opacity: 0.7;
    color:rgba(0,0,0,0.9);
    background-color: #4DA4D6;
    cursor: pointer;
    color:white;
}
#productform input::placeholder{
   color:rgba(0,0,0,0.3);
   font-weight: bold;
   font-size: 16px;
   text-align:center;
}
#productform input:not([type="submit"]){
    border-bottom:1.5px solid rgba(29,63,109,0.4);
    transition: border-color 0.8s ease-in-out;
}
#productform input:focus{
    border-color: yellow;
}
.c_6 input{
margin-left:40px;
}
</style>
</head>
<body>
	<div class="container">
	<header class="product-header">
		<h1 class="product-header__title">상품 정보를 넣어주세요</h1>
	</header>
		<form id="productform" action="insert.do" method="post" enctype="multipart/form-data">
			<div class="row">
				<div class="col-2"></div>
				<div class="c_8 col-6 row" style="padding-left:10px; font-weight:bold">
					<div class="col-3">
						<label for="product_lcategory">제품 대분류</label>
						<label for="product_scategory">제품 소분류</label>
						<label for="product_name">제품명</label>
						<label for="product_fullName">제품 상세명</label>
						<label for="product_color ">제품 색상</label>
						<label for="product_size">제품 사이즈</label>
						<label for="product_material">제품 소재</label>
						<label for="product_season">제품 시즌</label>
						<label for="product_price">제품 가격</label>
						<label for="product_image">제품 이미지</label>
						<label for="product_image2">제품 이미지2</label>
						<label for="product_image3">제품 이미지3</label>
					</div>
					<div class="col-8">
						<input type="text" id="product_lcategory" name="product_lcategory"/>
						<input type="text" id="product_scategory" name="product_scategory"/>
						<input type="text" id="product_name" name="product_name"/>
						<input type="text" id="product_fullName" name="product_fullName"/>
						<input type="text" id="product_color" name="product_color"/>
						<input type="text" id="product_size" name="product_size"/>
						<input type="text" id="product_material" name="product_material"/>
						<input type="text" id="product_season" name="product_season"/>
						<input type="text" id="product_price" name="product_price"/>
						<input type="file" name="product_image" id="product_image"
								accept=".jpg, .jpeg, .png, .JPG, .JPEG"/>		
						<input type="file" name="product_image2" id="product_image2"
								accept=".jpg, .jpeg, .png, .JPG, .JPEG"/>		
						<input type="file" name="product_image3" id="product_image3"
								accept=".jpg, .jpeg, .png, .JPG, .JPEG"/>		
					</div>
				</div>
				<div class="col-2"></div>
			
			
			</div>
			<button type="submit" style="margin-bottom:100px; margin-top:80px;">상품 추가</button>		
		</form>
	</div>
</body>
</html>