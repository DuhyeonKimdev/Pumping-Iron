<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="resources/css/tips.css">
<link rel="stylesheet" href="resources/css/index.css">



</head>
<body style="z-index: 0;">
<div class="title-center text-center">

<a href="tips/tips.jsp">
<span class="prompt-h1">Q/A</span>
</a>
</div>



<table class="table container">
  <thead>
    <tr>
      <th scope="col" style="width: 10%">번호</th>
      <th scope="col" style="width: 60%">글 제목</th>
      <th scope="col" style="width: 10%">작성자</th>
      <th scope="col" style="width: 10%">날짜</th>
      <th scope="col" style="width: 5%">조회수</th>
      <th scope="col" style="width: 5%">추천수</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td><a href="watchContents.go"><span>Mark</span></a></td>
      <td>Otto</td>
      <td>2022-02-15</td>
      <td>0</td>
      <td>0</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>2022-02-15</td>
      <td>0</td>
      <td>0</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Larry the Bird</td>
      <td>LeBrone</td>
      <td>2022-02-15</td>
      <td>0</td>
      <td>0</td>
    </tr>
  </tbody>
</table>

<nav aria-label="Page navigation example">
  <ul class="pagination justify-content-center">
    <li class="page-item disabled">
      <a class="page-link" href="#" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    <li class="page-item"><a class="page-link" href="#">1</a></li>
    <li class="page-item"><a class="page-link" href="#">2</a></li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item">
      <a class="page-link" href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
</nav>

<div class="viewer-bottom d-flex align-items-center justify-content-between mt-4 mb-5">
<div class="viewer-bottom-left"></div>
<button class="background-b-btn board-btn noto-h4"
 type="button" name="button" data-category-id="8"
  data-auth-write="1" 
  onclick= "location.href='write.go'">글쓰기</button>


</div>





<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>