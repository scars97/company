<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>추천 Bar</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

</head>
<body>
	<!-- Navigator -->
	<!-- upper navbar here -->
	<jsp:include page="./common/navbar.jsp"/>

	<!-- Content -->
	<section class="py-5 text-center container" style="border-bottom: 1px solid #dbdbdb;">
		<div class="row py-lg-5">
			<div class="col-lg-6 col-md-8 mx-auto">
				<h1 class="fw-light">Bar</h1>
				<p class="lead text-muted">컨셉별 다양한 Bar를 소개합니다</p>

			</div>
		</div>
	</section>

	<div class="album py-5 bg-light">
		<div class="container">

			<div class="row row-cols-1 row-cols-sm-2 row-cols-md-2 g-3">
			
				<div class="col" style="height: 380px">
					<a href="bar2">
					<div class="card mx-auto" style="width:100%; height:380px;">				
					<img src="resources/image/slideimg.png" width="100%" height="100%" >					
					<div class="card-img-overlay">
					<h2 style="position: absolute; top: 50%; left: 50%; 
						transform: translate(-50%, -50%); color:black;">재즈 Bar</h2>
					</div>
					</div>
					</a>
				</div>
				
				<div class="col" style="height: 380px">
					<a href="bar2">
					<div class="card mx-auto" style="width:100%; height:380px;">				
					<img src="resources/image/slideimg.png" width="100%" height="100%" >					
					<div class="card-img-overlay">
					<h2 style="position: absolute; top: 50%; left: 50%; 
						transform: translate(-50%, -50%); color:black;">재즈 Bar</h2>
					</div>
					</div>
					</a>
				</div>

				<div class="col" style="height: 380px">
					<a href="bar2">
					<div class="card mx-auto" style="width:100%; height:380px;">				
					<img src="resources/image/slideimg.png" width="100%" height="100%" >					
					<div class="card-img-overlay">
					<h2 style="position: absolute; top: 50%; left: 50%; 
						transform: translate(-50%, -50%); color:black;">재즈 Bar</h2>
					</div>
					</div>
					</a>
				</div>
				
				<div class="col" style="height: 380px">
					<a href="bar2">
					<div class="card mx-auto" style="width:100%; height:380px;">				
					<img src="resources/image/slideimg.png" width="100%" height="100%" >					
					<div class="card-img-overlay">
					<h2 style="position: absolute; top: 50%; left: 50%; 
						transform: translate(-50%, -50%); color:black;">재즈 Bar</h2>
					</div>
					</div>
					</a>
				</div>
			</div>
		</div>
	</div>


	<!-- Footer -->
	<!-- footer here -->
	<jsp:include page="./common/footer.jsp"/>
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>