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
	<div id="product_selector" class="container">
		<input type="button" value="보충제">
		<input type="button" value="그립/스트랩">
		<input type="button" value="팔꿈치 보호대">
		<input type="button" value="등/허리">
		<input type="button" value="무릅 보호대">
		<input type="button" value="신발">
	</div>
	<div id="product_detail_div" class="container">
		<div id="product_detail_img_div"><img id="product_detail_img" src="resources/img/products/${productDetail.p_img }.jpg"></div>
		<div id="product_info">
			<div id="product_name">${productDetail.p_name }</div>
			<div id="product_star">별점</div>
			<div id="product_price_div">${productDetail.p_price }<input id="product_price" type="hidden" value="${productDetail.p_price }"></div>
			<div id="product_quantity">수량<p><input class="container" type="text" value="1" id='quantity'></div>
			<input id="member_addr" type="hidden" value="${sessionScope.loginMember.m_addr }">
			<input id="member_email" type="hidden" value="${sessionScope.loginMember.m_email }">
			<input id="member_name" type="hidden" value="${sessionScope.loginMember.m_name }">			
			<input id="member_phone" type="hidden" value="${sessionScope.loginMember.m_phone }">			
			<div><img id="kakao_pay" src="resources/img/products/payment_icon_yellow_small.png"></div>
		</div>
	</div>
	<div style="clear: both;"></div>
	<div id="#product_detail_info" class="container">
		${sessionScope.loginMember.m_addr }
	</div>
</body>
</html>