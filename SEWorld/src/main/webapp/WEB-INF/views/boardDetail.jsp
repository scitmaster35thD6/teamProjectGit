<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>volumn bootstrap 3 one page template</title>

  <!-- css -->
  <link href="resources/volumn/css/bootstrap.min.css" rel="stylesheet" type="text/css">
  <link href="resources/volumn/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
  <link href="resources/volumn/css/nivo-lightbox.css" rel="stylesheet" />
  <link href="resources/volumn/css/nivo-lightbox-theme/default/default.css" rel="stylesheet" type="text/css" />
  <link href="resources/volumn/css/owl.carousel.css" rel="stylesheet" media="screen" />
  <link href="resources/volumn/css/owl.theme.css" rel="stylesheet" media="screen" />
  <link href="resources/volumn/css/flexslider.css" rel="stylesheet" />
  <link href="resources/volumn/css/animate.css" rel="stylesheet" />
  <link href="resources/volumn/css/style.css" rel="stylesheet">
  <link href="resources/volumn/color/default.css" rel="stylesheet">
  
  <link href="resources/Table_Responsive_v1/css/main.css" rel="stylesheet" type="text/css">
  <link href="resources/Table_Responsive_v1/css/util.css" rel="stylesheet" type="text/css">


	



<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
section{
	width: 100%;
    min-height: 100vh;
    background: #c850c0;
    background: -webkit-linear-gradient(45deg, #4158d0, #c850c0);
    background: -o-linear-gradient(45deg, #4158d0, #c850c0);
    background: -moz-linear-gradient(45deg, #4158d0, #c850c0);
    background: linear-gradient(45deg, #4158d0, #c850c0);
  
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-box;
    display: -ms-flexbox;
    display: flex;
    align-items: center;
    justify-content: center;
    flex-wrap: wrap;
    padding: 33px 30px;
}

div#exTitle{
	border: 1px solid #444444;
	border-radius: 20px;
	text-align: center;
	background-color: white;
}

div#exLotation{
	border: 1px solid #444444;
	border-radius: 20px;
	text-align: center;
	background-color: white;
}

div#host{
	border: 1px solid #444444;
	border-radius: 20px;
	text-align: center;
	background-color: white;
}

div#reply{
	width: 800px;
	margin: 0 auto;
	text-align: center;
}

div.input{
	width: 800px;
}

table{
	width: 800px;
	border-top: 1px solid #444444;
    border-collapse: collapse;
    background-color: #f5f5f5;
    
}

tr{
	
}

td{
	border-bottom: 1px solid #444444;
	padding: 10px;
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
                <a href="index.html"><img src="volumn/img/logo-dark.png" alt="" /></a>
              </div>
            </div>
          </div>


          <div class="col-md-10 mob-menu">
            <div class="row">
              <!-- Brand and toggle get grouped for better mobile display -->
              <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#menu">
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
                  <li class="dropdown nav-toggle">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropwdown<b class="caret"></b></a>
                    <ul class="dropdown-menu">
                      <li><a class="external" href="#">Sub menu</a></li>
                      <li><a class="external" href="#">Sub menu</a></li>
                    </ul>
                  </li>
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
	
	<section>
		<div id="wrapper">
			<div id="exTitle">
				<ul style="list-style:none; padding: 10px;">
					<li>전시회명_한글</li>
					<li>전시회명_영어</li>
				</ul>
			</div>
			<br/>
			<table>
				<tr>
					<td style="color: #808080;">개최기간</td>
					<td>aaaa</td>
				</tr>
				<tr>
					<td>최초개최연도</td>
					<td>bbbb</td>
				</tr>
				<tr>
					<td>개최국가</td>
					<td>cccc</td>
				</tr>
				<tr>
					<td>개최도시</td>
					<td>dddd</td>
				</tr>
			</table>
			<br/>
			<div id="exLotation">전시장 위치
			
			</div>
			<br/>
			<div id="host">주최기관
			
			</div>
			<br/>
			<div id="reply">
				<div class="input">
				<div id="result"></div>
				<hr>
					<input class="userid" type="text" placeholder="ID"> <input
						class="replytext" type="text" placeholder="내용"
						onkeypress="if(event.keyCode==13) {replyInsert(); return false;}">
					<input id="replyInsert" type="button" value="추가">
				</div>				
			</div>
		</div>
    	<!-- /#wrapper -->
	</section>
	




<!-- Core JavaScript Files -->
  <script src="resources/volumn/js/jquery.min.js"></script>
  <script src="resources/volumn/js/bootstrap.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD8HeI8o-c1NppZA-92oYlXakhDPYR7XMY"></script>
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