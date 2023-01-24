<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css">
    <link rel="stylesheet" href="/resources/css/searchbar.css">
    <style>
  .main_image {
    position: relative;
    
  }
  .main_image_text {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate( -50%, -50% );
    color: white;
    font-size:10px;
  }
  </style>
<title>Insert title here</title>


</head>
<body>
<!-- upper navbar here -->
<jsp:include page="./common/navbar.jsp"/>

<main>
<div class="container mt-3">
        <p/>
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ul class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ul>
            <!-- The slideshow -->
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="/resources/image/whiskey1.png" alt="Los Angeles" width="1100" height="500">
                </div>
                <div class="carousel-item">
                    <img src="/resources/image/whiskey1.png" alt="Chicago" width="1100" height="500">
                </div>
                <div class="carousel-item">
                    <img src="/resources/image/whiskey2.png" alt="New York" width="1100" height="500">
                </div>
            </div>
            <!-- Left and right controls -->
            <a class="carousel-control-prev" href="#myCarousel" data-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </a>
            <a class="carousel-control-next" href="#myCarousel" data-slide="next"> 
                <span class="carousel-control-next-icon"></span>
            </a>
        </div>
    </div>
</main><br><br>

<jsp:include page="./common/searchbar.jsp"/><br>

<div class="container text-center">
  <div class="row m-5">
    <div class="col">
      <img src="/resources/image/mainwhiskey1.png" style="width:200px; height:150px; border-radius: 10%; background-color: rgba(0,0,0,0.1);">
      <h3 class="main_image_text">#위스키에 대해 알아보자</h3>
    </div>
    <div class="col">
      <img src="/resources/image/mainwine.png" style="width:200px; height:150px; border-radius: 10%;">
      <h3 class="main_image_text">#와인은 어렵지 않다!</h3>
    </div>
    <div class="col">
      <img src="/resources/image/mainbeer.png" style="width:200px; height:150px; border-radius: 10%;">
      <h3 class="main_image_text">#가장 맛있는 맥주는?</h3>
    </div>
    <div class="col">
      <img src="/resources/image/mainfood.png" style="width:200px; height:150px; border-radius: 10%;">
      <h3 class="main_image_text">#숙취해소엔</h3>
    </div>
  </div>
  
</div>

<!-- footer here -->
<jsp:include page="./common/footer.jsp"/>
<script
      src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
   <script
      src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
   <script
      src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>