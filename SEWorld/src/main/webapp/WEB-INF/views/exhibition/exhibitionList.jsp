<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<title>volumn bootstrap 3 one page template</title>

<!-- css -->
<link href="resources/volumn/css/bootstrap.min.css" rel="stylesheet"
	type="text/css">
<link href="resources/volumn/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<link href="resources/volumn/css/nivo-lightbox.css" rel="stylesheet" />
<link
	href="resources/volumn/css/nivo-lightbox-theme/default/default.css"
	rel="stylesheet" type="text/css" />
<link href="resources/volumn/css/owl.carousel.css" rel="stylesheet"
	media="screen" />
<link href="resources/volumn/css/owl.theme.css" rel="stylesheet"
	media="screen" />
<link href="resources/volumn/css/flexslider.css" rel="stylesheet" />
<link href="resources/volumn/css/animate.css" rel="stylesheet" />
<link href="resources/volumn/css/style.css" rel="stylesheet">
<link href="resources/volumn/color/default.css" rel="stylesheet">






<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>전시회 목록 -SE World</title>

<style>
#parallax4 {
	background-image: url('resources/image/robo2.jpg');
	background-size: cover;
	width: 100%;
	height: 100%;
}

#test {
	background-image: url('resources/image/robo2.jpg');
	background-size: cover;
}

.vertical {
	margin-left: 20px;
}
</style>
</head>
<body>
	<!-- Navigation -->
	<div id="navigation">
		<nav class="navbar navbar-custom" role="navigation">
			<div class="container">
				<div class="row">
					<div class="col-md-2 mob-logo">
						<div class="row">
							<div class="site-logo">
								<a href="index.html"><img src="volumn/img/logo-dark.png"
									alt="" /></a>
							</div>
						</div>
					</div>


					<div class="col-md-10 mob-menu">
						<div class="row">
							<!-- Brand and toggle get grouped for better mobile display -->
							<div class="navbar-header">
								<button type="button" class="navbar-toggle"
									data-toggle="collapse" data-target="#menu">
									<i class="fa fa-bars"></i>
								</button>
							</div>
							<!-- Collect the nav links, forms, and other content for toggling -->
							<div class="collapse navbar-collapse" id="menu" style="">
								<ul class="nav navbar-nav navbar-right">
									<li class="active"><a href="#intro">Home</a></li>
									<li><a href="#about">About Us</a></li>
									<li><a href="#service">Services</a></li>
									<li><a href="#works">Works</a></li>

									<li><a href="#contact">Contact</a></li>
									<li class="dropdown nav-toggle"><a href="#"
										class="dropdown-toggle" data-toggle="dropdown">Dropwdown<b
											class="caret"></b></a>
										<ul class="dropdown-menu">
											<li><a class="external" href="#">Sub menu</a></li>
											<li><a class="external" href="#">Sub menu</a></li>
										</ul></li>
								</ul>
							</div>
							<!-- /.Navbar-collapse -->
						</div>
					</div>
				</div>
			</div>
			<!-- /.container -->
		</nav>
	</div>
	<!-- /Navigation -->



	<div class="row">
		<div class="col-md-2">
			<!--  col-md-4-->



			<div class="vertical">
				<ul class="nav nav-pills nav-stacked">
					<li role="presentation" class="active"><a href="#">All
							Contents</a></li>
					<li role="presentation"><a href="#">America</a></li>
					<li role="presentation"><a href="#">Korea</a></li>
					<li role="presentation"><a href="#">Japan</a></li>
				</ul>
			</div>
			<!-- 벌티컬 -->
		</div>



		<div class="col-md-10">
			.col-md-8
			<section>
				<div id="wrapper">
					<h1>내용</h1>
					<br />
					<h1></h1>
					<div id="test"></div>


					<div id="wrapper">







						<div class="align-center color-white txt-shadow">

							<strong id="counter-coffee" class="number">608</strong> <span
								class="text">개의 결과를 찾았습니다.</span>
						</div>

						<section>
							<div id="wrapper">
								<div class="row">
									<div class="col-md-6">
										<table class="table table-bordered">
											<thead>
												<tr>
													<th>제목 Eng</th>
													<th>제목 Kor</th>
													<th>국가</th>
													<th>도시</th>
													<th>시작일</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="eList" items="${exhibitionList}">
													<tr>
														<td class="title">${eList.exhibition_title_eng}</td>
														<td class="title">${eList.exhibition_title_kor}</td>
														<td>${eList.opening_country}</td>
														<td>${eList.opening_city}</td>
														<td>${fn:substring(eList.opening_term, 0, 8)}</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>

							</div>
							<!-- /#wrapper -->
						</section>



						<!-- 페이지 -->
						<section>
							<c:if test="${navi.currentPage != 1}">
								<a
									href="exhibitionList?currentPage=${navi.currentPage - navi.pagePerGroup}&selectedCountry=${selectedCountry}">◁◁</a>
								<a
									href="exhibitionList?currentPage=${navi.currentPage - 1}&selectedCountry=${selectedCountry}">◀</a>
			&nbsp;&nbsp;
			</c:if>
							<c:forEach var="page" begin="${navi.startPageGroup}"
								end="${navi.endPageGroup}">
								<c:if test="${page == currentPage}">
									<span style="color: red; font-weight: bolder">${page}</span> &nbsp;
				</c:if>
								<c:if test="${page != currentPage}">
									<a
										href="exhibitionList?currentPage=${page}&selectedCountry=${selectedCountry}"
										title="${page}번째 페이지로">${page}</a> &nbsp;
		</c:if>
							</c:forEach>
							<c:if test="${navi.currentPage < navi.totalPageCount}">
			&nbsp;&nbsp; <a
									href="exhibitionList?currentPage=${navi.currentPage + 1}&selectedCountry=${selectedCountry}">▶</a>
								<a
									href="exhibitionList?currentPage=${navi.currentPage + navi.pagePerGroup}&selectedCountry=${selectedCountry}">▷▷</a>
							</c:if>
						</section>




					</div>
					<!-- /#wrapper -->
			</section>

		</div>
	</div>


	<!-- Core JavaScript Files -->
	<script src="resources/volumn/js/jquery.min.js"></script>
	<script src="resources/volumn/js/bootstrap.min.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD8HeI8o-c1NppZA-92oYlXakhDPYR7XMY"></script>
	<script src="resources/volumn/js/jquery.sticky.js"></script>
	<script src="resources/volumn/js/slippry.min.js"></script>
	<script src="resources/volumn/js/jquery.flexslider-min.js"></script>
	<script src="resources/volumn/js/morphext.min.js"></script>
	<script src="resources/volumn/js/gmap.js"></script>
	<script src="resources/volumn/js/jquery.mb.YTPlayer.js"></script>
	<script src="resources/volumn/js/jquery.easing.min.js"></script>
	<script src="resources/volumn/js/jquery.scrollTo.js"></script>
	<script src="resources/volumn/js/jquery.appear.js"></script>
	<script src="resources/volumn/js/stellar.js"></script>
	<script src="resources/volumn/js/wow.min.js"></script>
	<script src="resources/volumn/js/owl.carousel.min.js"></script>
	<script src="resources/volumn/js/nivo-lightbox.min.js"></script>
	<script src="resources/volumn/js/jquery.nicescroll.min.js"></script>
	<script src="resources/volumn/js/custom.js"></script>
	<script src="resources/volumn/contactform/contactform.js"></script>




</body>
</html>