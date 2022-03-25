<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<script type="text/javascript">
	$(function() {

		$("#search").keyup(function(e) {
			if (e.keyCode == 13) {
				$('#searchBtn').trigger('click');
			}
		});

		$('#searchBtn').bind("click", function() {

			let searchName = document.getElementById('search').value;
			console.log(searchName);
			let admin_check = document.getElementById('adminCheck').value;

			if (searchName == '') {
				alert("검색어를 입력해주세요.");
				return false;
			} else { // 정상적인 입력 시
//				alert(searchName + ' 검색!');

				location.href = 'priceInfo.search?pi_name=' + searchName;

			} // else
				
		}); // #searchBtn click
		
		

		$('#addInfo').click(function() {

			$('#infoReg').modal("show");

		}); // #addBtn click
		
		$('#modalClose1').click(function() {
			$('#infoReg').click();
		});
		
		

		$(document).on("click", "#info_delete_btn", function() {
			
			let numForDelete = $(this).attr("value");
			console.log(numForDelete);
			
			if (confirm("정말로 삭제하시겠습니까?")) {
				$.ajax({
					type: "GET",
					url: "priceInfo.del",
					data: {'pi_no': numForDelete},
					success: function(data) {
						alert('success.');
						location.reload();
					} // success
				}); // ajax
			} else {
				return false;
			}
			
		});	//info_delete_btn
		
		
		
		
		$(document).on("click", "#info_update_btn", function() {
			
			let numForDelete = $(this).attr("value");
			console.log(numForDelete);
			
			$('#infoUpdate').modal('show');
			
			$('#modalClose2').click(function() {
				$('#infoUpdate').click();
			});
			
		});
		

		var enter = document.querySelector('textarea');
		enter = enter.value.replace('\r\n', '<br>');

	}); // ready
</script>


<meta charset="UTF-8">
<title>Insert title here</title>

</head>

<body>

	<input id="adminCheck" type="hidden"
		value="${sessionScope.loginMember.m_email}">

	<div class="input-group mb-3 container" style="margin-top: 100px;">

		<input id="search" name="pi_name" type="text" class="form-control" placeholder="헬스장 검색..." style="width: 75%"
			aria-label="search fitnessClub" aria-describedby="button-addon2">
		<button id="searchBtn" class="btn btn-outline-secondary" type="button" style="width: 100px;">검색</button>

		<c:if test="${sessionScope.loginMember.m_email == 'admin'}">
			<button class="btn btn-outline-secondary" style="width: 100px;" id="addInfo">정보 등록</button>
		</c:if>

	</div>


	<c:forEach items="${priceInfo}" var="p">
		<div id="priceInfo_DIV" class="centerInfo container bg-light bg-gradient" style="width: 100%; border: 1px ridge; border-radius: 5px;">

			<input name="pi_no" id="primary_num" type="hidden" value="${p.pi_no}">
			
			<div class="row">

				<div class="centerInfo_fhoto ratio" style="width: 450px;">
						<img class="img-fluid" style="border-radius: 5px 0px 0px 5px; border-right: 1px solid;" src="resources/img/${p.pi_img}">
				</div>

				<div class="centerInfo_info mt-1 mb-1 p-3 col " style="font-size: 14pt;">

					<c:if test="${p.pi_partner == 'Y'}">
						<b class="partnership_center">▷ with PUMPING IRON◁</b>
						<br> <br>
					</c:if>

					▷업체명<br> ${p.pi_name}
					<p>
						<br> ▷위 치<br> ${p.pi_loc}
					<p>
						▷가격 정보<br> ${p.pi_price}
					<p>
					
					<c:if test="${sessionScope.loginMember.m_email == 'admin'}">
					<div style="text-align: right;">
						<button id="info_update_btn" style="background-color: white;" value="${p.pi_no}">수정</button>
						<button id="info_delete_btn" style="background-color: white;" value="${p.pi_no}">삭제</button>
					</div>
					</c:if>
					
				</div>

			</div>

		</div>

		<p>
	</c:forEach>

	<c:if test="${priceInfo == null}">
		<div class="pb-5 pt-3"></div>
		<div class="pb-5 pt-5" style="text-align: center;">
			<span style="font-family: facon; font-size: 50pt;">Pumping Iron</span>
		</div>
	</c:if>





<!--------------------------------------------------------------------------------------------------------------------------------------->

		<!--  Reg Modal -->
	<form action="priceInfo.reg" method="post" enctype="multipart/form-data">
	
		<input type="hidden" name="token" value="${token }">
		<div class="modal fade" id="infoReg" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">헬스장 정보 수정</h5>
					</div>

					<div class="modal-body">
						<div class="form-group">
							<label for="taskId" class="col-form-label">업체명</label>
							 <input class="form-control" id="info_name" name="pi_name" required="required">
							  <label for="taskId" class="col-form-label"> 위치 정보</label>
							<textarea class="form-control" id="info_location" name="pi_loc" placeholder="지도에서 복사해서 붙여넣기" required="required"></textarea>
							<label for="taskId" class="col-form-label">가격 정보</label>
							<textarea class="form-control" id="info_price" name="pi_price" style="height: 150px;"> </textarea>
							<label for="taskId" class="col-form-label">제휴 여부</label> 
							<input type="radio" id="info_partner" name="pi_partner" value="Y" /> Yes
							<input type="radio" id="info_partner" name="pi_partner" value="N"> No <br> 
							<label for="taskId" class="col-form-label">업체 제공 사진</label>
							 <input type="file" name="pi_img" id="info_image" required="required">
						</div>
					</div>
					<div class="modal-footer">
						<button class="btn btn-warning" id="addBtn">추가</button>
						<button type="button" class="btn btn-secondary" data-dismiss="modal" id="modalClose1" onclick="">취소</button>
					</div>

				</div>
			</div>
		</div>
		
	</form>





		<!--  UPDATE Modal -->
	<form action="priceInfo.update" method="post" enctype="multipart/form-data">
	
		<input type="hidden" name="token" value="${token }">
		<div class="modal fade" id="infoUpdate" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">헬스장 정보 등록</h5>
					</div>

					<div class="modal-body">
						<div class="form-group">
							<label for="taskId" class="col-form-label">업체명</label> <input
								class="form-control" id="info_name" name="pi_name"
								required="required"> <label for="taskId"
								class="col-form-label">위치 정보</label>
							<textarea class="form-control" id="info_location" name="pi_loc"
								placeholder="지도에서 복사해서 붙여넣기" required="required"></textarea>
							<label for="taskId" class="col-form-label">가격 정보</label>

							<textarea class="form-control" id="info_price" name="pi_price"
								style="height: 150px;">
1일권 : 
1개월 : 
3개월 : 
5개월 : 
12개월 : </textarea>
							<label for="taskId" class="col-form-label">제휴 여부</label> <input
								type="radio" id="info_partner" name="pi_partner" value="Y" />
							Yes <input type="radio" id="info_partner" name="pi_partner"
								value="N"> No <br> <label for="taskId"
								class="col-form-label">업체 제공 사진</label> <input type="file"
								name="pi_img" id="info_image" required="required">
						</div>
					</div>
					<div class="modal-footer">
						<button class="btn btn-warning" id="addBtn">추가</button>
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal" id="modalClose2" onclick="">취소</button>
					</div>

				</div>
			</div>
		</div>
		
	</form>



</body>
</html>

