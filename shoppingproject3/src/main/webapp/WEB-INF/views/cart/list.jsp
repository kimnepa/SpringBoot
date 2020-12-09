<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="layoutTag" tagdir="/WEB-INF/tags"%>

<layoutTag:layout>

<!DOCTYPE html>
<html>
<head>
		<title>Cart</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="/static/assets/css/main.css" />
</head>
<body>

<div class="container">
	<h2>장바구니 목록</h2>
	
	<table class="table table-hover table-bordered">
		<thead>
			<tr>
				<th>No</th>
				<th>이미지</th>
				<th>상품명</th>
				<th>가격</th>
				<th>수량</th>
				<th>일자</th>
				<th>삭제</th>
			</tr>
		</thead>
			<c:forEach var="cart" items="${list}">
			<tr>
				<td>${cart.cartno}</td>
				<td>${cart.productimagefile}</td>
				<td>${cart.productname}</td>
				<td>${cart.productprice}</td>
				<td>${cart.productsalescnt}</td>
				<td><fmt:formatDate value="${cart.cartdate}" pattern="yyyy년 MM월 dd일 HH시 mm분 ss초"/></td>
				<td><button type="button" onclick="location.href='/cart/cartDelete/${cart.cartno}'">삭제</button></td>
			</tr>
			</c:forEach>
		<tbody>
		</tbody>
	</table>

</div>

</body>

</html>

</layoutTag:layout>





















