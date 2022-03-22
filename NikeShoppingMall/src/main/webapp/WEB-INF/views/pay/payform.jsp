<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pay/payform.jsp</title>
</head>
<body>
<div class="container">
	<h1>주문/결제 페이지 입니다.</h1>
	<form action="pay.do" method="post">
		<h2>구매자 확인</h2>
		<table>
			<tbody>
				<tr>
					<th>구매자 성함</th>
					<td>${tmp.user_name }</td>
				</tr>
				<tr>
					<th>구매자 연락처</th>
					<td>${tmp.user_phoneNum }</td>
				</tr>
				<tr>
					<th>구매자 주소</th>
					<td>${tmp.user_addr }</td>
				</tr>
			</tbody>
		</table>
		
		<h2>주문상품 확인</h2>
		<table>
			<thead>
				<tr>
					<th>전체 갯수</th>
					<th>이미지</th>
					<th>상품명</th>
					<th>가격</th>
					<th>포인트</th>
					<th>수량</th>
					<th>삭제</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach var="tmp" items="${list }">
				<tr>
					<td>${tmp.rnum }</td>
					<td><img src="${pageContext.request.contextPath }${tmp.product_imagePath}" alt="" /></td>
					<td>${tmp.product_name }</td>
					<td>${tmp.product_price }</td>
					<td>${tmp.product_point }</td>
					<td>${tmp.cart_count }</td>
					<td><a href="delete.do?cart_id=${tmp.cart_id}">삭제</a></td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
		
		<div class="row" style="text-align: center; margin: 80px 0;">
			<h1 class="page-header">결제수단 확인</h1>
			<div style="text-align: center;">
				<input type="radio" name="cal_info" value="transfer"><label style="margin-right: 50px;">&nbsp;계좌이체</label>
				<input type="radio" name="cal_info" value="no_bankingBook"><label style="margin-right: 50px;">&nbsp;무통장 입금</label>
				<input type="radio" name="cal_info" value="tel_billing"><label style="margin-right: 50px;">&nbsp;핸드폰 결제</label>
				<input type="radio" name="cal_info" value="card"><label>&nbsp;카드 결제</label>
			</div>
		
		<p>최종 주문 금액</p>
		
		
		<button type="submit">주문 완료하기</button>
	</form>
</div>
</body>
</html>