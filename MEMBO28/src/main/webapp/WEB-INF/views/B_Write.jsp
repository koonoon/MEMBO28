<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

   
    <title>Au Register Forms by Colorlib</title>

   
    <link href="resources/assets/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="resources/assets/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
   
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    
    <link href="resources/assets/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="resources/assets/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    
    <link href="resources/assets/css/main.css" rel="stylesheet" media="all">
</head>

<body>
   <div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
        <div class="wrapper wrapper--w680">
            <div class="card card-4">
                <div class="card-body">
                    <h2 class="title">게시글등록</h2>
                    <form action="bWrite" method="POST" enctype="multipart/form-data">
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">제목</label>
                                    <input class="input--style-4" type="text" name="bTitle">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">내용</label>
                                    <textarea rows="20" cols="40" name="bContent"></textarea>
                                </div>
                            </div>
                        </div>           
                       <div class="input-group">
                                    <label class="label">첨부파일</label>
                                    <input class="input--style-4" type="file" name="bFile">
                                </div>  
                        <div class="p-t-15">
                            <input type="submit" class="btn btn--radius-2 btn--blue" value="등록">
                            <br/>
                            <br/>
                            <input type="reset" class="btn btn--radius-2 btn--blue" value="다시작성">
                        </div>
                        <input type="hidden" name="bWriter" value="${login.mId}">
                    </form>
                </div>
            </div>
        </div>
    </div>  
    


    
    <script src="resources/assets/vendor/jquery/jquery.min.js"></script>
    
    <script src="resources/assets/vendor/select2/select2.min.js"></script>
    <script src="resources/assets/vendor/datepicker/moment.min.js"></script>
    <script src="resources/assets/vendor/datepicker/daterangepicker.js"></script>

   
    <script src="resources/assets/js/global.js"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>


</body>

</html>
