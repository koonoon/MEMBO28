<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

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

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top ">
    <div class="container d-flex align-items-center">

      <h1 class="logo me-auto">Arsha</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo me-auto"><img src="resources/assets//img/logo.png" alt="" class="img-fluid"></a>-->

      <nav id="navbar" class="navbar bg-info">
        <ul>
          <li><a class="nav-link scrollto" onclick="location.href='mList'">회원목록</a></li>
          <li><a class="nav-link   scrollto" onclick="location.href='bList'">게시글 목록</a></li> 
          <li><a class="nav-link   scrollto" onclick="location.href='bWriteForm'">게시글 작성</a></li>
          <li><a class="getstarted scrollto" onclick="location.href='mViewme'">내정보</a></li>
          <li><a class="getstarted scrollto" onclick="location.href='mLogout'">로그아웃</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

  <main id="main">

   

    <!-- ======= Portfolio Section ======= -->
    <section id="portfolio" class="portfolio">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>게시글 목록</h2>
        </div>


        <div class="row portfolio-container" data-aos="fade-up" data-aos-delay="200">
		<c:forEach var="bor" items="${blist}">
          <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <div class="portfolio-img"><img src="resources/fileUpload/${bor.bFileName}" class="img-fluid" alt=""></div>
            <div class="portfolio-info">
              <h4><a href="bView?bNum=${bor.bNum}">제목 : ${bor.bTitle}</a></h4>
              <p>작성자 : ${bor.bWriter}</p>
              <p>조회수 : ${bor.bHit}</p>
            </div>
          </div>

		</c:forEach>
        </div>

      </div>
    </section><!-- End Portfolio Section -->


  </main><!-- End #main -->

 

  <div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="resources/assets/vendor/aos/aos.js"></script>
  <script src="resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="resources/assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="resources/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="resources/assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="resources/assets/vendor/waypoints/noframework.waypoints.js"></script>
  <script src="resources/assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="resources/assets/js/main.js"></script>
  
  <!-- 페이징 처리 -->
	<!-- [이전]페이지로 에 대한 페이징 처리 -->
	<div class="text-center mt-3 mt-sm-3">
    <ul class="pagination justify-content-center mb-0">
	<c:if test="${paging.page <= 1}">[이전] </c:if>
	<c:if test="${paging.page > 1}">
		<a href="bList?page=${paging.page-1}&limit=${paging.limit}">[이전] </a>
		
	</c:if>
	

	<!-- [페이지번호]에 대한 페이징 처리 -->
	
	<c:forEach var="i" begin="${paging.startPage}" end="${paging.endPage}"
		step="1">
		<c:choose>

			<c:when test="${paging.page eq i}"> [${i}] </c:when>

			<c:otherwise>
				<a href="bList?page=${i}&limit=${paging.limit}">${i}</a>
			</c:otherwise>
		</c:choose>
	</c:forEach>
	

	<!-- [다음]페이지로 에 대한 페이징 처리 -->
	<c:if test="${paging.page >= paging.maxPage}"> [다음]</c:if>
	<c:if test="${paging.page < paging.maxPage}">
		<a href="bList?page=${paging.page+1}&limit=${paging.limit}"> [다음]</a>
	</c:if>
	</ul>
	</div>
</body>

</html>