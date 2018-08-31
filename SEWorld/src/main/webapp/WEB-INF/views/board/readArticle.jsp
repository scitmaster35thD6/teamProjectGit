<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16"
	href="resources/assets/images/logo-icon.png">
<title>SE World 전세계 기술 전시</title>
<link href="resources/assets/libs/jsgrid/dist/jsgrid-theme.min.css"
	rel="stylesheet">
<link href="resources/assets/libs/jsgrid/dist/jsgrid.min.css"
	rel="stylesheet">
<!-- Custom CSS -->
<link href="resources/dist/css/style.min.css" rel="stylesheet">
<!-- 벡터맵 css지도 -->
<link
	href="resources/assets/extra-libs/jvector/jquery-jvectormap-2.0.2.css"
	rel="stylesheet" />
<!-- Custom CSS 새로 -->
<link href="resources/dist/css/style.min.css" rel="stylesheet">

<!-- 프로필용  css -->
<link
	href="resources/assets/libs/magnific-popup/dist/magnific-popup.css"
	rel="stylesheet">


<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

<style>
.dropdown.dropdown-lg .dropdown-menu {
	margin-top: -1px;
	padding: 6px 20px;
}

.input-group-btn .btn-group {
	display: flex !important;
}

.btn-group .btn {
	border-radius: 0;
	margin-left: -1px;
}

.btn-group .btn:last-child {
	border-top-right-radius: 4px;
	border-bottom-right-radius: 4px;
}

.btn-group .form-horizontal .btn[type="submit"] {
	border-top-left-radius: 4px;
	border-bottom-left-radius: 4px;
}

.form-horizontal .form-group {
	margin-left: 0;
	margin-right: 0;
}

.form-group .form-control:last-child {
	border-top-left-radius: 4px;
	border-bottom-left-radius: 4px;
}

@media screen and (min-width: 768px) {
	#adv-search {
		width: 500px;
		margin: 0 auto;
	}
	.dropdown.dropdown-lg {
		position: static !important;
	}
	.dropdown.dropdown-lg .dropdown-menu {
		min-width: 500px;
	}
}
</style>

</head>

<body>
	<!-- ============================================================== -->
	<!-- Preloader - style you can find in spinners.css -->
	<!-- ============================================================== -->
	<div class="preloader">
		<div class="lds-ripple">
			<div class="lds-pos"></div>
			<div class="lds-pos"></div>
		</div>
	</div>
	<!-- ============================================================== -->
	<!-- Main wrapper - style you can find in pages.scss -->
	<!-- ============================================================== -->
	<div id="main-wrapper">
		<!-- ============================================================== -->
		<!-- Topbar header - style you can find in pages.scss -->
		<!-- ============================================================== -->
		<header class="topbar">
			<nav class="navbar top-navbar navbar-expand-md navbar-dark">
				<div class="navbar-header">
					<!-- This is for the sidebar toggle which is visible on mobile only -->
					<a class="nav-toggler waves-effect waves-light d-block d-md-none"
						href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
					<!-- ============================================================== -->
					<!-- Logo -->
					<!-- ============================================================== -->
					<a class="navbar-brand" href="index.html"> <!-- Logo icon --> <b
						class="logo-icon"> <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
							<!-- Dark Logo icon --> <img
							src="resources/assets/images/logo-icon.png" alt="homepage"
							class="dark-logo" /> <!-- Light Logo icon --> <img
							src="resources/assets/images/logo-light-icon.png" alt="homepage"
							class="light-logo" />
					</b> <!--End Logo icon --> <!-- Logo text --> <span class="logo-text">
							<!-- dark Logo text --> <img
							src="resources/assets/images/logo-text.png" alt="homepage"
							class="dark-logo" /> <!-- Light Logo text --> <img
							src="resources/assets/images/logo-light-text.png"
							class="light-logo" alt="homepage" />
					</span>
					</a>
					<!-- ============================================================== -->
					<!-- End Logo -->
					<!-- ============================================================== -->
					<!-- ============================================================== -->
					<!-- Toggle which is visible on mobile only -->
					<!-- ============================================================== -->
					<a class="topbartoggler d-block d-md-none waves-effect waves-light"
						href="javascript:void(0)" data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation"><i class="ti-more"></i></a>
				</div>
				<!-- ============================================================== -->
				<!-- End Logo -->
				<!-- ============================================================== -->
				<div class="navbar-collapse collapse" id="navbarSupportedContent">
					<!-- ============================================================== -->
					<!-- toggle and nav items -->
					<!-- ============================================================== -->
					<ul class="navbar-nav float-left mr-auto">
						<li class="nav-item d-none d-md-block"><a
							class="nav-link sidebartoggler waves-effect waves-light"
							href="javascript:void(0)" data-sidebartype="mini-sidebar"><i
								class="mdi mdi-menu font-24"></i></a></li>
						<!-- ============================================================== -->
						<!-- mega menu -->
						<!-- ============================================================== -->
						<li class="nav-item dropdown mega-dropdown"><a
							class="nav-link dropdown-toggle waves-effect waves-dark" href=""
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<span class="d-none d-md-block">Personal Update<i
									class="fa fa-angle-down"></i></span> <span class="d-block d-md-none"><i
									class="mdi mdi-dialpad font-24"></i></span>
						</a>
							<div class="dropdown-menu animated bounceInDown">
								<div class="mega-dropdown-menu row">

									<div class="col-lg-3 m-b-30">
										<h4 class="m-b-20">최근 좋아요 한 전시회</h4>
										<!-- Accordian -->
										<div id="accordion">
											<div class="card m-b-5">
												<div class="card-header" id="headingOne">
													<h5 class="mb-0">
														<button class="btn btn-link" data-toggle="collapse"
															data-target="#collapseOne" aria-expanded="true"
															aria-controls="collapseOne">첫번째 전시회 제목</button>
													</h5>
												</div>
												<div id="collapseOne" class="collapse show"
													aria-labelledby="headingOne" data-parent="#accordion">
													<div class="card-body">전시회 내용</div>
												</div>
											</div>
											<div class="card m-b-5">
												<div class="card-header" id="headingTwo">
													<h5 class="mb-0">
														<button class="btn btn-link collapsed"
															data-toggle="collapse" data-target="#collapseTwo"
															aria-expanded="false" aria-controls="collapseTwo">
															두번째 전시회제목</button>
													</h5>
												</div>
												<div id="collapseTwo" class="collapse"
													aria-labelledby="headingTwo" data-parent="#accordion">
													<div class="card-body">전시회 내용</div>
												</div>
											</div>
											<div class="card m-b-5">
												<div class="card-header" id="headingThree">
													<h5 class="mb-0">
														<button class="btn btn-link collapsed"
															data-toggle="collapse" data-target="#collapseThree"
															aria-expanded="false" aria-controls="collapseThree">
															C세번째 전시회 내용</button>
													</h5>
												</div>
												<div id="collapseThree" class="collapse"
													aria-labelledby="headingThree" data-parent="#accordion">
													<div class="card-body">세번째 전시회 내용</div>
												</div>
											</div>
										</div>
									</div>

									<div class="col-lg-3  m-b-30">
										<h4 class="m-b-20">Recent Comments</h4>
										<!-- Contact -->
										<div class="d-flex flex-row comment-row m-t-0">
											<div class="p-2">
												<img src="resources/assets/images/users/people.png"
													alt="user" width="50" class="rounded-circle">
											</div>
											<div class="comment-text w-100">
												<h6 class="font-medium">James Anderson</h6>
												<span class="m-b-15 d-block">좋은 후기 잘 읽었습니다^^ </span>
												<div class="comment-footer">
													<span class="text-muted float-right">April 14, 2016</span>

												</div>
											</div>
										</div>



										<!-- Contact -->
									</div>
									<div class="col-lg-3 col-xlg-4 m-b-30">
										<h4 class="m-b-20">My Schedule</h4>
										<!-- List style -->
										<ul class="list-style-none">
											<li><a href="javascript:void(0)"><i
													class="fa fa-check text-success"></i> 스케쥴1</a></li>
											<li><a href="javascript:void(0)"><i
													class="fa fa-check text-success"></i> 스케쥴2</a></li>
											<li><a href="javascript:void(0)"><i
													class="fa fa-check text-success"></i> 스케쥴3</a></li>
											<li><a href="javascript:void(0)"><i
													class="fa fa-check text-success"></i> 스케쥴4</a></li>
											<li><a href="javascript:void(0)"><i
													class="fa fa-check text-success"></i> 스케쥴5</a></li>
											<li><a href="#"
												class="btn btn-sm btn-success btn-rounded">My Calendar</a></li>
										</ul>
									</div>
								</div>
							</div></li>
						<!-- ============================================================== -->
						<!-- End mega menu -->
						<!-- ============================================================== -->
						<!-- show map -->
						<!-- ============================================================== -->


					</ul>
					<!-- ============================================================== -->
					<!-- Right side toggle and nav items -->
					<!-- ============================================================== -->
					<ul class="navbar-nav float-right">
						<!-- create new -->


						<!-- ============================================================== -->
						<!-- User profile and search -->
						<!-- ============================================================== -->
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle text-muted waves-effect waves-dark pro-pic"
							href="" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <img
								src="resources/assets/images/users/user.png" alt="user"
								class="rounded-circle" width="31">

						</a>
							<div
								class="dropdown-menu dropdown-menu-right user-dd animated bounceInDown"
								style="background-color: #f7d6b7;">
								<span class="with-arrow"><span class="bg-primary"></span></span>
								<div
									class="d-flex no-block align-items-center p-15 bg-primary text-white m-b-10">
									<div class="">
										<img src="resources/assets/images/users/user.png" alt="user"
											class="img-circle" width="60">
									</div>
									<div class="m-l-10">
										<h4 class="m-b-0">유저네임</h4>
										<p class=" m-b-0">유저 이메일</p>
									</div>
								</div>
								<a class="dropdown-item" href="javascript:void(0)"><i
									class="ti-user m-r-5 m-l-5"></i> My Profile</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="javascript:void(0)"><i
									class="ti-calendar m-r-5 m-l-5"></i> My Calendar </a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="javascript:void(0)"><i
									class="ti-settings m-r-5 m-l-5"></i> Account Setting</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="javascript:void(0)"><i
									class="fa fa-power-off m-r-5 m-l-5"></i> Logout</a>

							</div></li>
						<!-- ============================================================== -->
						<!-- User profile and search -->
						<!-- ============================================================== -->
					</ul>
				</div>
			</nav>
		</header>
		<!-- ============================================================== -->
		<!-- End Topbar header -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- Left Sidebar - style you can find in sidebar.scss  -->
		<!-- ============================================================== -->
		<aside class="left-sidebar">
			<!-- Sidebar scroll-->
			<div class="scroll-sidebar">
				<!-- Sidebar navigation-->
				<nav class="sidebar-nav">
					<ul id="sidebarnav">
						<!-- User Profile-->
						<li>
							<!-- User Profile-->
							<div class="user-profile d-flex no-block dropdown m-t-20">
								<div class="user-pic">
									<img src="resources/assets/images/users/user.png" alt="users"
										class="rounded-circle" width="40" />
								</div>
								<div class="user-content hide-menu m-l-10">
									<a href="javascript:void(0)" class="" id="Userdd" role="button"
										data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										<h5 class="m-b-0 user-name font-medium">
											유저네임 님 <i class="fa fa-angle-down"></i>
										</h5> <span class="op-5 user-email">유저 이메일</span>
									</a>
									<div class="dropdown-menu dropdown-menu-right"
										aria-labelledby="Userdd">
										<a class="dropdown-item" href="javascript:void(0)"><i
											class="ti-user m-r-5 m-l-5"></i> My Profile</a>
										<div class="dropdown-divider"></div>

										<a class="dropdown-item" href="javascript:void(0)"><i
											class="ti-calendar m-r-5 m-l-5"></i> My Calendar</a>
										<div class="dropdown-divider"></div>
										<a class="dropdown-item" href="javascript:void(0)"><i
											class="ti-settings m-r-5 m-l-5"></i> Account Setting</a>
										<div class="dropdown-divider"></div>
										<a class="dropdown-item" href="javascript:void(0)"><i
											class="fa fa-power-off m-r-5 m-l-5"></i> Logout</a>
									</div>
								</div>
							</div> <!-- End User Profile-->
						</li>
						<!-- User Profile-->
						<li class="sidebar-item"><a
							class="sidebar-link has-arrow waves-effect waves-dark"
							href="javascript:void(0)" aria-expanded="false"><i
								class="mdi mdi-view-dashboard"></i><span class="hide-menu">Exhibition
							</span></a>
							<ul aria-expanded="false" class="collapse  first-level">
								<li class="sidebar-item"><a href="exhibitionList"
									class="sidebar-link"><i class="mdi mdi-adjust"></i><span
										class="hide-menu"> List </span></a></li>
								<li class="sidebar-item"><a href="vector"
									class="sidebar-link"><i class="mdi mdi-adjust"></i><span
										class="hide-menu"> vectorMap </span></a></li>
								<li class="sidebar-item"><a href="bestList"
									class="sidebar-link"><i class="mdi mdi-adjust"></i><span
										class="hide-menu"> Best Exhb </span></a></li>
								<li class="sidebar-item"><a href="attendForm"
									class="sidebar-link"><i class="mdi mdi-adjust"></i><span
										class="hide-menu"> Attend </span></a></li>

							</ul></li>
						<li class="sidebar-item"><a
							class="sidebar-link has-arrow waves-effect waves-dark"
							href="javascript:void(0)" aria-expanded="false"><i
								class="mdi mdi-tune-vertical"></i><span class="hide-menu">Review,Q&A
							</span></a>
							<ul aria-expanded="false" class="collapse  first-level">
								<li class="sidebar-item"><a href="reviews"
									class="sidebar-link"><i class="mdi mdi-view-quilt"></i><span
										class="hide-menu"> User Review </span></a></li>
								<li class="sidebar-item"><a href="questions"
									class="sidebar-link"><i class="mdi mdi-view-parallel"></i><span
										class="hide-menu"> Question </span></a></li>
								<li class="sidebar-item"><a href="writeArticle"
									class="sidebar-link"><i class="mdi mdi-view-day"></i><span
										class="hide-menu"> WriteForm </span></a></li>
							</ul></li>
						<li class="sidebar-item"><a
							class="sidebar-link has-arrow waves-effect waves-dark"
							href="javascript:void(0)" aria-expanded="false"><i
								class="mdi mdi-content-copy"></i><span class="hide-menu">User
									Board</span></a>
							<ul aria-expanded="false" class="collapse  first-level">
								<li class="sidebar-item"><a href="#" class="sidebar-link"><i
										class="mdi mdi-format-align-left"></i><span class="hide-menu">
											My Exhibition</span></a></li>
								<li class="sidebar-item"><a href="#" class="sidebar-link"><i
										class="mdi mdi-format-align-right"></i><span class="hide-menu">
											Calendar </span></a></li>
							</ul></li>

					</ul>
				</nav>
				<!-- End Sidebar navigation -->
			</div>
			<!-- End Sidebar scroll-->
		</aside>
		<!-- ============================================================== -->
		<!-- End Left Sidebar - style you can find in sidebar.scss  -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- Page wrapper  -->
		<!-- ============================================================== -->
		<div class="page-wrapper">
			<!-- ============================================================== -->
			<!-- Bread crumb and right sidebar toggle -->
			<!-- ============================================================== -->
			<div class="page-breadcrumb">
				<div class="row">
					<div class="col-5 align-self-center">
						<h4 class="page-title">Basic Table</h4>
						<div class="d-flex align-items-center">
							<nav aria-label="breadcrumb">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="#">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page">Board</li>
								</ol>
							</nav>
						</div>
					</div>



				</div>
			</div>
			<!-- ============================================================== -->
			<!-- End Bread crumb and right sidebar toggle -->
			<!-- ============================================================== -->
			<!-- ============================================================== -->
			<!-- Container fluid  -->
			<!-- ============================================================== -->
			<div class="container-fluid">
				<!-- ============================================================== -->
				<!-- Start Page Content 페이지 내용보기-->
				<!-- ============================================================== -->
				<div class="row">
					<div class="col-12">
						<div class="card">
							<div class="card-body">
								<div class="d-md-flex align-items-center">
									<div>
										<h4 class="card-title">${articleDetail.title}</h4>
									</div>
									<div class="ml-auto d-flex no-block align-items-center">
										<ul class="list-inline font-12 dl m-r-15 m-b-0">
											<li class="list-inline-item text-secondary"><i
												class="fas fa-star"></i> 리뷰자의 별점</li>
											<li class="list-inline-item text-primary">4점</li>
										</ul>

									</div>
								</div>

								<h6>${articleDetail.memberId}</h6>
								<div class="container-fluid">
									<div class="row el-element-overlay">

										<!-- column -->
										<div class="col-lg-3 col-md-6" contextmenu="">
											<div class="card" contextmenu="">
												<div class="el-card-item">
													<div class="el-card-avatar el-overlay-1">
														<img src="resources/assets/images/users/1.jpg" alt="user" />
														<div class="el-overlay">
															<ul class="list-style-none el-info">
																<li class="el-item"><a
																	class="btn default btn-outline image-popup-vertical-fit el-link"
																	href="resources/assets/images/users/1.jpg"><i
																		class="icon-magnifier"></i></a></li>
																<li class="el-item"><a
																	class="btn default btn-outline el-link"
																	href="javascript:void(0);"><i class="icon-link"></i></a></li>
															</ul>
														</div>
													</div>
													<div class="el-card-content">
														<h4 class="m-b-0">이름</h4>
														<span class="text-muted">직업</span>
													</div>
												</div>
											</div>
										</div>
										<!-- column -->
										<div class="col-lg-9">
											<div class="content">${articleDetail.content}</div>
										</div>
										<!-- column -->
									</div>
								</div>

							</div>
							<!-- ============================================================== -->
							<!-- Info Box -->
							<!-- ============================================================== -->
							<div class="card-body border-top">
								<div class="row m-b-0">
									<!-- col -->
									<div class="col-lg-3 col-md-6">
										<div class="d-flex align-items-center"></div>
									</div>
									<!-- col -->
									<!-- col -->
									<div class="col-lg-3 col-md-6">
										<div class="d-flex align-items-center"></div>
									</div>
									<!-- col -->
									<!-- col -->
									<div class="col-lg-3 col-md-6">

										<div class="d-flex align-items-center">
											<ul>
												<li>
													<h6 class="font-medium">
														<a
															href="exhibitionDetail?exhibitionId='${articleDetail.exhibitionId}'">URL</a>
													</h6>
												</li>
												<li>
													<h6 class="font-medium">${exbhibitionForArticle.exhibitionTitleKor}</h6>
												</li>
											</ul>
										</div>
									</div>
									<!-- col -->
									<!-- col -->
									<div class="col-lg-3 col-md-6">
										<div class="d-flex align-items-center"></div>
									</div>
									<!-- col -->
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- ============================================================== -->
				<!-- Sales chart -->
				<!-- ============================================================== -->
				<!-- ============================================================== -->
				<!-- Email campaign chart -->
				<!-- ============================================================== -->
				<div class="row">
					<div class="col-lg-8 col-xl-6">
						<div class="card card-hover">
							<div class="card-body">
								<div class="d-md-flex align-items-center">
									<h3>연관 글 더보기</h3>
								</div>
								<!-- column -->
								<div class="row m-t-40">
									<!-- column -->
									<div class="col-lg-6">
										<div id="visitor" style="height: 290px; width: 100%;"
											class="m-t-20"></div>
									</div>
									<!-- column -->
									<div class="col-lg-6">
										<h3>연관글 더보기?</h3>
									</div>
								</div>
								<!-- column -->
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-xl-6">
						<div class="card card-hover">
							<div class="card-body"
								style="background: url(resources/assets/images/background/active-bg.png) no-repeat top center;">


								<h1>여기 뭐넣지?</h1>




							</div>
						</div>
					</div>
				</div>
				<!-- ============================================================== -->
				<!-- 글 더보기-->
				<!-- ============================================================== -->
				<!-- ============================================================== -->
				<!-- 뎃글s -->
				<!-- ============================================================== -->
				<div class="row">
					<!-- column -->
					<div class="col-lg-12">
						<div class="card">
							<div class="card-body">
								<h4 class="card-title">Recent Comments</h4>
							</div>
							<c:if test="${empty articleReply}">
								<div>댓글이 없습니다.</div>
							</c:if>
							<c:if test="${not empty articleReply}">
								<div class="container-fluid">
									<div class="comment-widgets scrollable">
										<!-- Comment Row -->
										<div class="d-flex flex-row comment-row m-t-0">
											<div class="p-2">
												<img src="resources/assets/images/users/1.jpg" alt="user"
													width="50" class="rounded-circle">
											</div>
											<div class="comment-text w-100">
												<h6 class="font-medium">${articleReply.memberId}</h6>
												<h6>별점 들어갈 곳</h6>
												<span class="m-b-15 d-block">${articleReply.content}</span>
												<div class="comment-footer">
													<span class="text-muted float-right">${articleReply.updatedDate}</span>
													<span class="label label-rounded label-primary">Pending</span>
													<span class="action-icons"> <a
														href="javascript:void(0)"><i class="ti-pencil-alt"></i></a>
														<a href="javascript:void(0)"><i class="ti-check"></i></a>
														<a href="javascript:void(0)"><i class="ti-heart"></i></a>
													</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</c:if>
							<!-- 댓글 열 -->
						</div>

					</div>
					<!-- 플루이드는 여기까지입니다. -->
				</div>
			</div>

		</div>
		<!-- ============================================================== -->
		<!-- 댓글 -->
		<!-- ============================================================== -->
	</div>
	<!-- ============================================================== -->
	<!-- End Container fluid  -->
	<!-- ============================================================== -->



	<!-- ============================================================== -->
	<!-- 페이지 끝 -->
	<!-- ============================================================== -->
	<!-- ============================================================== -->
	<!-- Right sidebar -->
	<!-- ============================================================== -->
	<!-- .right-sidebar -->
	<!-- ============================================================== -->
	<!-- End Right sidebar -->
	<!-- ============================================================== -->
	</div>
	<!-- ============================================================== -->
	<!-- End Container fluid  -->
	<!-- ============================================================== -->
	<!-- ============================================================== -->
	<!-- footer -->
	<!-- ============================================================== -->
	<footer class="footer text-center"> SCIT Poject </footer>
	<!-- ============================================================== -->
	<!-- End footer -->
	<!-- ============================================================== -->
	</div>
	<!-- ============================================================== -->
	<!-- End Page wrapper  -->
	<!-- ============================================================== -->
	</div>
	<!-- ============================================================== -->
	<!-- End Wrapper -->
	<!-- ============================================================== -->
	<!-- ============================================================== -->
	<!-- customizer Panel -->
	<!-- ============================================================== -->
	<a class="nav-link dropdown-toggle waves-effect waves-dark" href=""
		data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">

	</a>
	</aside>

	<div class="chat-windows"></div>
	<!-- ============================================================== -->
	<!-- All Jquery -->
	<!-- ============================================================== -->
	<script>
		// Basic grid
	</script>
	<script src="resources/assets/libs/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap tether Core JavaScript -->
	<script src="resources/assets/libs/popper.js/dist/umd/popper.min.js"></script>
	<script src="resources/assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- apps -->
	<script src="resources/dist/js/app.min.js"></script>
	<script src="resources/dist/js/app.init.iconbar.js"></script>
	<script src="resources/dist/js/app-style-switcher.js"></script>
	<!-- slimscrollbar scrollbar JavaScript -->
	<script
		src="resources/assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
	<script src="resources/assets/extra-libs/sparkline/sparkline.js"></script>
	<!--Wave Effects -->
	<script src="resources/dist/js/waves.js"></script>
	<!--Menu sidebar -->
	<script src="resources/dist/js/sidebarmenu.js"></script>
	<!--Custom JavaScript -->
	<script src="resources/dist/js/custom.min.js"></script>
	<!--This page JavaScript -->
	<script
		src="resources/assets/libs/magnific-popup/dist/jquery.magnific-popup.min.js"></script>
	<script src="resources/assets/libs/magnific-popup/meg.init.js"></script>

</body>

</html>