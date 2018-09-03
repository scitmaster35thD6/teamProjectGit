<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://apis.google.com/js/platform.js" async defer></script>
	<script>
		function init() {
			console.log('init');
			gapi.load('auth2', function() {
				console.log('auth2');
				window.gauth = gapi.auth2.init({
					client_id : '191865489598-44tq15e1tabu76pvqkunla4a8r90m984.apps.googleusercontent.com'
				})
				gauth.then(function() {
					console.log('googleAuth success');
					checkLoginStatus();
				}, function() {
					console.log('googleAuth fail');
				});
				console.log(Promise);
			});
	    }
	    function checkLoginStatus() {
	    	var loginBtn = document.querySelector('#loginBtn');
			var nameTxt = document.querySelector('#name');
			if (gauth.isSignedIn.get()) {
				console.log('logined');
				loginBtn.value = 'Logout';
				var profile = gauth.currentUser.get().getBasicProfile();				
				var member = {
					"memberId" : profile.getEmail(),
					"memberName" : profile.getName()
				};
				$.ajax({
					method : 'POST',
					url : 'googleSignin',
					data : JSON.stringify(member),
					contentType : 'application/json; charset=UTF-8',
					dataType : 'JSON',
					success : function(resp) {
						
					}
				});
				nameTxt.innerHTML = 'Welcome <strong>'+profile.getName()+'</strong> ';
			} else {
				console.log('logouted');
				loginBtn.value = 'Login';
				nameTxt.innerHTML = '';
	        }
		}
	    function gauthSignIn() {
	    	gauth.signIn({
				scope : 'https://www.googleapis.com/auth/calendar'
			}).then(function(){
				console.log('gauth.signIn()');
				checkLoginStatus();
			});
	    }
	</script>
	<style type="text/css">
		p#msg {
			color : red;
		}
</style>
</head>

<body>
	<span id="name"></span>
	<input type="button" id="loginBtn" value="checking..." onclick="
		if(this.value === 'Login'){
			gauth.signIn({
				scope : 'https://www.googleapis.com/auth/calendar'
			}).then(function(){
				console.log('gauth.signIn()');
				checkLoginStatus();
			});
		} else {
			gauth.signOut().then(function(){
				console.log('gauth.signOut()');
				checkLoginStatus();
			});
		}
	">
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
        <div class="auth-wrapper d-flex no-block justify-content-center align-items-center" style="background:url(resources/assets/images/big/rabbit_grass_flowers_1920x1080.jpg) no-repeat center center;">
            <div class="auth-box">
                <div id="loginform">
                    <div class="logo">
                        <span class="db"><img src="resources/assets/images/logo-icon.png" alt="logo" width="50" height="41" /></span>
                        <h5 class="font-medium m-b-20">Sign In</h5>
                    </div>
                    <!-- Form -->
                    <div class="row">
                        <div class="col-12">
                        	<%-- 쿠키 존재 여부 확인--%>
							<c:if test="${cookie.containsKey('saveid')}">
								<c:set var="checked" value="checked" />
							</c:if>
							<p id="msg">${message}</p>
                            <form class="form-horizontal m-t-20" id="loginFormTag" action="login" method="POST">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon1"><i class="ti-user"></i></span>
                                    </div>
                                    <input type="text" class="form-control form-control-lg" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1" name="memberId" value="${cookie['saveid'].value}" />
                                </div>
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon2"><i class="ti-pencil"></i></span>
                                    </div>
                                    <input type="password" class="form-control form-control-lg" placeholder="Password" aria-label="Password" aria-describedby="basic-addon1" name="memberPwd" value="${cookie['savepw'].value}" />
                                </div>
                                <div class="form-group row">
                                    <div class="col-md-12">
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="customCheck1" name="saveid" ${checked}>
                                            <label class="custom-control-label" for="customCheck1">Remember me</label>
                                            <a href="javascript:void(0)" id="to-recover" class="text-dark float-right"><i class="fa fa-lock m-r-5"></i> Forgot pwd?</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group text-center">
                                    <div class="col-xs-12 p-b-20">
                                        <button id="loginBtn" class="btn btn-block btn-lg btn-info" type="submit">Log In</button>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12 m-t-10 text-center">
                                        <div class="social">
                                            <a href="javascript:void(0)" class="btn btn-facebook" data-toggle="tooltip" title="" data-original-title="Login with Facebook"> <i aria-hidden="true" class="fab  fa-facebook"></i></a>
                                            <a href="javascript:gauthSignIn()" class="btn btn-googleplus" data-toggle="tooltip" title="" data-original-title="Login with Google"> <i aria-hidden="true" class="fab  fa-google-plus"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group m-b-0 m-t-10">
                                    <div class="col-sm-12 text-center">
                                        Don't have an account? <a href="signup" class="text-info m-l-5"><b>Sign Up</b></a>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                
                <div id="recoverform">
                    <div class="logo">
                        <span class="db"><img src="resources/assets/images/logo-icon.png" alt="logo" /></span>
                        <h5 class="font-medium m-b-20">Recover Password</h5>
                        <span>Enter your Email and instructions will be sent to you!</span>
                    </div>
                    <div class="row m-t-20">
                        <!-- Form -->
                        <form class="col-12" action="index.html">
                            <!-- email -->
                            <div class="form-group row">
                                <div class="col-12">
                                    <input class="form-control form-control-lg" type="email" placeholder="Username">
                                </div>
                            </div>
                            <!-- pwd -->
                            <div class="row m-t-20">
                                <div class="col-12">
                                    <button class="btn btn-block btn-lg btn-danger" type="submit" name="action">Reset</button>
                                </div>
                            </div>
                        </form>
                    </div>
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
    <!-- <script src="resources/assets/libs/jquery/dist/jquery.min.js"></script> -->
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
    $('#to-recover').on('click', function() {
        $('#loginform').slideUp();
        $('#recoverform').fadeIn();
    });
    </script>
    <script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>
</body>

</html>