<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${sessionScope.loginMember.m_email eq '1234@gmail.com'}">
		<div id="product_controll" class="container">
			<input id="p_no" type="hidden" value="${productDetail.p_no }">
			<button id="delBtn">삭제</button>
			<button id="updateBtn" onclick="location.href='updateProduct.go?p_no='+${productDetail.p_no }">수정</button>
		</div>
	</c:if>
	<div id="product_detail_div" class="container">
		<div id="product_detail_img_div"><img id="product_detail_img" src="resources/file/${productDetail.p_img }"></div>
		<div id="product_info">
			<div id="product_name">${productDetail.p_name }</div>
			<div id="product_star">별점</div>
			<div id="product_price_div">${productDetail.p_price }<input id="product_price" type="hidden" value="${productDetail.p_price }"></div>
			<div id="product_quantity">수량<p><input class="container" type="text" value="1" id='quantity'></div>
			<input id="product_no" type="hidden" value="${productDetail.p_no }">
			<input id="member_addr" type="hidden" value="${sessionScope.loginMember.m_addr }">
			<input id="member_email" type="hidden" value="${sessionScope.loginMember.m_email }">
			<input id="member_name" type="hidden" value="${sessionScope.loginMember.m_name }">			
			<input id="member_phone" type="hidden" value="${sessionScope.loginMember.m_phone }">			
			<div><img id="kakao_pay" src="resources/img/products/payment_icon_yellow_small.png"></div>
		</div>
	</div>
	<div style="clear: both;"></div>
	<div id="#product_detail_info" class="container">
		<h1>${productDetail.p_info }</h1>
	</div>
</body>
</html>