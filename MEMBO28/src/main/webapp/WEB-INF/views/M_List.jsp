<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Arsha Bootstrap Template - Index</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="resources/assets/img/favicon.png" rel="icon">
  <link href="resources/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Jost:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="resources/assets//endor/aos/aos.css" rel="stylesheet">
  <link href="resources/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="resources/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="resources/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="resources/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="resources/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="resources/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="resources/assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Arsha - v4.7.1
  * Template URL: https://bootstrapmade.com/arsha-free-bootstrap-html-template-corporate/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>
<body>
 <!-- ======= Team Section ======= -->
    <section id="team" class="team section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>가입된 회원목록</h2>
        </div>

        <div class="row">
		<c:forEach var="mem" items="${mlist}">
          <div class="col-lg-6">
            <div class="member d-flex align-items-start" data-aos="zoom-in" data-aos-delay="100">
              <div class="pic"><img src="resources/profile/${mem.mProfileName}" width="200px" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4>${mem.mName}</h4>
                <span>${mem.mBirth}</span>
                <p>${mem.mEmail}</p>
                
              </div>
            </div>
          </div>

		</c:forEach>
        </div>

      </div>
    </section><!-- End Team Section -->
    <c:if test="${paging.page <= 1}">[이전] </c:if>
	<c:if test="${paging.page > 1}">
		<a href="mList?page=${paging.page-1}&limit=${paging.limit}">[이전] </a>
	</c:if>


	<!-- [페이지번호]에 대한 페이징 처리 -->
	<c:forEach var="i" begin="${paging.startPage}" end="${paging.endPage}"
		step="1">
		<c:choose>

			<c:when test="${paging.page eq i}"> [${i}] </c:when>

			<c:otherwise>
				<a href="mList?page=${i}&limit=${paging.limit}">${i}</a>
			</c:otherwise>
		</c:choose>
	</c:forEach>


	<!-- [다음]페이지로 에 대한 페이징 처리 -->
	<c:if test="${paging.page >= paging.maxPage}"> [다음]</c:if>
	<c:if test="${paging.page < paging.maxPage}">
		<a href="mList?page=${paging.page+1}&limit=${paging.limit}"> [다음]</a>
	</c:if>
</body>
</html>