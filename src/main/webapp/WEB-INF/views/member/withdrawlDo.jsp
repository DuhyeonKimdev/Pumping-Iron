<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
</style>
<script type="text/javascript">


</script>
</head>
<body>

<form action="member.withdrawal.do" method="post" onsubmit="return withdraw();">
	<div class="wrap">
		<div class="withdraw" style="border: 1px solid gray; margin-top: 70px;">
			<div class="withdraw_header mb-5">
				<h3 style="text-align: center;">회원탈퇴 신청</h3>
				<input type="hidden" name="m_email" value="${sessionScope.loginMember.m_email}">
			</div>
			<div class="withdraw_pw">
				<h4>Password</h4>
				<input type="password" name="m_pw" id="m_pw" placeholder="Password">
			</div>
			<div style="display:flex; justify-content: flex-start; width: 80%;">
				<span id="spanLoginCheck"></span>
			</div>
			<div class="mt-5" style="width:100%; display:flex; justify-content: center;">
				<button class="btn btn-warning" style="width: 160px;">회원탈퇴 신청</button>
				<button type="button" class="btn btn-secondary" style="margin-left: 10px; width: 160px;" onclick="location.href='index.go'">취소</button>
			</div>
		</div>
	</div>
</form>

</body>
</html>