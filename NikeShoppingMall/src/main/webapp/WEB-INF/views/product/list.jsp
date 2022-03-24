<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<link rel="preconnect" href="https://fonts.gstatic.com"> 
<link href="https://fonts.googleapis.com/css2?family=Black+And+White+Picture&family=Black+Han+Sans&family=Cute+Font&family=Do+Hyeon&family=Dokdo&family=East+Sea+Dokdo&family=Gaegu&family=Gamja+Flower&family=Gothic+A1&family=Gugi&family=Hi+Melody&family=Jua&family=Kirang+Haerang&family=Nanum+Brush+Script&family=Nanum+Gothic&family=Nanum+Gothic+Coding&family=Nanum+Myeongjo&family=Nanum+Pen+Script&family=Noto+Sans+KR&family=Noto+Serif+KR&family=Poor+Story&family=Single+Day&family=Song+Myung&family=Stylish&family=Sunflower:wght@300&family=Yeon+Sung&display=swap" rel="stylesheet">

<link rel="shortcut icon" sizes="16x16 32x32 64x64" href="${pageContext.request.contextPath }/resources/img/nike3.png"/>
<meta charset="UTF-8">
<title>Team2 Nike Shop! list</title>

<style>
html, body{
width:2400px;
}
.container{
font-family: 'Noto Sans KR', sans-serif;
font-size:12px;
font-weight:none;
width:1500px;
height:100%;
}
</style>
</head>
<body>
	<div class="container" style="width:2000px; padding-left:40px; margin-left:80px; margin-right: 80px;" >
	<div style="display:flex; margin-top:50px;">
		<h1 style="margin-bottom: 30px; display:inline-block; ">상품 목록</h1> 
		<a href="insertform.do" style="display:inline-block;"><p align="left"><img src="https://cdn.iconscout.com/icon/free/png-256/cloth-1456963-1228881.png" style="height:50px; width:50px;" alt="" /></p></a>
	</div>
	<table class="table table-dark table-hover" border="1" style="width:1900px;" >
		<thead>
			<tr style="height:60px; line-height:60px; text-align:center;">
				<th style="width:80px;">제품 번호</th>
				<th style="width:80px;">제품 대분류</th>
				<th style="width:80px;">제품 소분류</th>
				<th style="width:130px;">제품 간단명</th>
				<th style="width:130px;">제품 상세명</th>
				<th style="width:80px;">제품 색상</th>
				<th style="width:60px;">제품 사이즈</th>
				<th style="width:80px;">제품 소재</th>
				<th style="width:80px;">제품 시즌</th>
				<th style="width:80px;">제품 가격</th>
				<th style="width:100px;">제품 적립금</th>
				<th style="width:80px;">제품 재고</th>
				<th style="width:100px;">제품 조회수</th>
				<th style="width:140px;">제품 등록일</th>
				<th style="width:80px;">제품 이미지</th>
				<th style="width:90px;">제품 이미지2</th>
				<th style="width:90px;">제품 이미지3</th>
				<th style="width:80px;">삭제</th>
			</tr>
		</thead>
		<tbody style="background-color:#828282;">
		<c:forEach var="tmp" items="${alist }">
			<tr style="height:30px; line-height:30px; text-align:center;">
				<td>${tmp.product_id }</td>
				<td>${tmp.product_lcategory }</td>
				<td>${tmp.product_scategory }</td>
				<td>${tmp.product_name }</td>
				<td>${tmp.product_fullName }</td>
				<td>${tmp.product_color }</td>
				<td style="width:60px;">${tmp.product_size }</td>
				<td>${tmp.product_material }</td>
				<td>${tmp.product_season }</td>
				<td>${tmp.product_price }</td>
				<td>${tmp.product_point }</td>
				<td>${tmp.product_stock }</td>
				<td>${tmp.product_views }</td>
				<td>${tmp.product_regdate }</td>
				<td><img src="${pageContext.request.contextPath }${tmp.product_imagePath}" alt="" /></td>
				<td><img src="${pageContext.request.contextPath }${tmp.product_imagePath2}" alt="" /></td>
				<td><img src="${pageContext.request.contextPath }${tmp.product_imagePath3}" alt="" /></td>
				<td style="border-left:1px solid white;">
					<a href="delete.do?product_id=${tmp.product_id }">
						<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="yellow" class="bi bi-trash" viewBox="0 0 16 16">
  							<path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
  							<path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
						</svg>		
					</a>
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	</div>
</body>
</html>