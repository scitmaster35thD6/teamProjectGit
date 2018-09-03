<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html dir="ltr">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="resources/assets/images/favicon.png">
    <title>Log In</title>
    <!-- Custom CSS -->
    <link href="resources/dist/css/style.min.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>
<script type="text/javascript" src="resources/signupValidation.js"></script>
<body>
    <div class="main-wrapper">
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
        <!-- Preloader - style you can find in spinners.css -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Login box.scss -->
        <!-- ============================================================== -->
        <div class="auth-wrapper d-flex no-block justify-content-center align-items-center" style="background:url(resources/assets/images/big/space_1920x1080.png) no-repeat center center;">
            <div class="auth-box">
                <div id="signupform">
                    <div class="logo">
                        <span class="db"><img src="resources/assets/images/logo-icon.png" alt="logo" width="50" height="41"/></span>
                        <h5 class="font-medium m-b-20">Sign Up</h5>
                    </div>
                    <!-- Form -->
                    <div class="row">
                        <div class="col-12">
                            <form class="form-horizontal m-t-20" id="loginFormTag" action="login" method="POST">
                            	<!-- 이름 -->
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon4"><i class="ti-face-smile"></i></span>
                                    </div>
                                    <input type="text" class="form-control form-control-lg" placeholder="이름" aria-label="Name" aria-describedby="basic-addon4" id="memberName" />
                                </div>
                            	<!-- 아이디 -->
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon1"><i class="ti-user"></i></span>
                                    </div>
                                    <input type="text" class="form-control form-control-lg" placeholder="이메일" aria-label="ID" aria-describedby="basic-addon1" id="memberId" />
                                    <p id="memberIdMsg"></p>
                                </div>
                                <!-- 비밀번호 확인1 -->
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon2"><i class="ti-pencil"></i></span>
                                    </div>
                                    <input type="password" class="form-control form-control-lg" placeholder="비밀번호" aria-label="Password" aria-describedby="basic-addon2" id="memberPwd" />
                                </div>
								<!-- 비밀번호 확인2 -->
								<div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon3"><i class="ti-pencil"></i></span>
                                    </div>
                                    <input type="password" class="form-control form-control-lg" placeholder="비밀번호 확인" aria-label="Password" aria-describedby="basic-addon3" id="memberPwd2" />
                                </div>
                                <!--
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon5"><i class="ti-time"></i></span>
                                    </div>
                                    <input type="text" class="form-control form-control-lg" placeholder="Birth" aria-label="Birth" aria-describedby="basic-addon5" id="memberBirth" />
                                </div>
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon6"><i class="ti-email"></i></span>
                                    </div>
                                    <input type="text" class="form-control form-control-lg" placeholder="Email" aria-label="Email" aria-describedby="basic-addon6" id="memberEmail" />
                                </div>
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon7"><i class="ti-mobile"></i></span>
                                    </div>
                                    <input type="text" class="form-control form-control-lg" placeholder="Phone" aria-label="Phone" aria-describedby="basic-addon7" id="memberPhone" />
                                </div>
                                 -->
                                 <div class="form-group row">
                                    <div class="col-md-12">
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="customCheck1" name="" />
                                            <label class="custom-control-label" for="customCheck1">I agree to <a href="">Terms of Service</a> and <a href="">Privacy Policy.</a></label>
                                        </div>
                                    </div>
                                </div>
                                <!-- 확인버튼 -->
                                <div class="form-group text-center">
                                    <div class="col-xs-12 p-b-20">
                                        <button id="signupBtn" class="btn btn-block btn-lg btn-info" type="button">Sign Up</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!-- Form -->
				</div>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- Login box.scss -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper scss in scafholding.scss -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper scss in scafholding.scss -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Right Sidebar -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Right Sidebar -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- All Required js -->
    <!-- ============================================================== -->
    <script src="resources/assets/libs/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="resources/assets/libs/popper.js/dist/umd/popper.min.js"></script>
    <script src="resources/assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- ============================================================== -->
    <!-- This page plugin js -->
    <!-- ============================================================== -->
	<script type="text/javascript">
		$('[data-toggle="tooltip"]').tooltip();
		$('.preloader').fadeOut();
		// ============================================================== 
		// Login and Recover Password 
		// ============================================================== 
		$('#signupBtn').on('click', register);
	</script>
</body>

</html>