<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link rel="icon" type="image/png" sizes="any"
	href="resources/assets/images/logo2.png">
    <title>SE World - Welcome</title>
    <link href="resources/assets/libs/jsgrid/dist/jsgrid-theme.min.css" rel="stylesheet">
    <link href="resources/assets/libs/jsgrid/dist/jsgrid.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="resources/dist/css/style.min.css" rel="stylesheet">
    <!-- 벡터맵 css지도 -->
     <link href="resources/assets/extra-libs/jvector/jquery-jvectormap-2.0.2.css" rel="stylesheet" />
    <!-- Custom CSS 새로 -->
    <link href="resources/dist/css/style.min.css" rel="stylesheet">
    
    <!-- 메인 스타일 -->
    <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Poppins:300,400,500,700" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="resources/regna/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="resources/regna/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="resources/regna/lib/animate/animate.min.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="resources/regna/css/style.css" rel="stylesheet">
    
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

<style>
.back-to-top {
  position: fixed;
  display: none;
  background: rgba(0, 0, 0, 0.2);
  color: #fff;
  padding: 6px 12px 9px 12px;
  font-size: 16px;
  border-radius: 2px;
  right: 15px;
  bottom: 15px;
  transition: background 0.5s;
}

@media (max-width: 768px) {
  .back-to-top {
    bottom: 15px;
  }
}

.back-to-top:focus {
  background: rgba(0, 0, 0, 0.2);
  color: #fff;
  outline: none;
}

.back-to-top:hover {
  background: #2dc997;
  color: #fff;
}

/*--------------------------------------------------------------
# General
--------------------------------------------------------------*/
body {
  background: #fff;
  color: #666666;
  font-family: "Open Sans", sans-serif;
}

a {
  color: #2dc997;
}

a:hover, a:active, a:focus {
  color: #2dca98;
  outline: none;
  text-decoration: none;
}

p {
  padding: 0;
  margin: 0 0 30px 0;
}

h1, h2, h3, h4, h5, h6 {
  font-family: "Poppins", sans-serif;
  font-weight: 400;
  margin: 0 0 20px 0;
  padding: 0;
}

/* Prelaoder */
#preloader {
  position: fixed;
  left: 0;
  top: 0;
  z-index: 999;
  width: 100%;
  height: 100%;
  overflow: visible;
  background: #fff url("resources/regna/img/preloader.svg") no-repeat center center;
}

/* Back to top button */
.back-to-top {
  position: fixed;
  display: none;
  background: rgba(0, 0, 0, 0.2);
  color: #fff;
  padding: 6px 12px 9px 12px;
  font-size: 16px;
  border-radius: 2px;
  right: 15px;
  bottom: 15px;
  transition: background 0.5s;
}

@media (max-width: 768px) {
  .back-to-top {
    bottom: 15px;
  }
}

.back-to-top:focus {
  background: rgba(0, 0, 0, 0.2);
  color: #fff;
  outline: none;
}

.back-to-top:hover {
  background: #2dc997;
  color: #fff;
}

/*--------------------------------------------------------------
# Header
--------------------------------------------------------------*/
#header {
  padding: 30px 0;
  height: 92px;
  position: fixed;
  left: 0;
  top: 0;
  right: 0;
  transition: all 0.5s;
  z-index: 997;
}

#header #logo {
  float: left;
}

#header #logo h1 {
  font-size: 36px;
  margin: 0;
  padding: 6px 0;
  line-height: 1;
  font-family: "Poppins", sans-serif;
  font-weight: 700;
  letter-spacing: 3px;
  text-transform: uppercase;
}

#header #logo h1 a, #header #logo h1 a:hover {
  color: #fff;
}

#header #logo img {
  padding: 0;
  margin: 0;
}

@media (max-width: 768px) {
  #header #logo h1 {
    font-size: 26px;
  }
  #header #logo img {
    max-height: 40px;
  }
}

#header.header-fixed {
  background: rgba(52, 59, 64, 0.9);
  padding: 20px 0;
  height: 72px;
  transition: all 0.5s;
}

/*--------------------------------------------------------------
# Hero Section
--------------------------------------------------------------*/
#hero {
  width: 100%;
  height: 100vh;
  background: url(resources/assets/images/land1.jpg) top center;
  background-size: cover;
  position: relative;
}

@media (min-width: 1024px) {
  #hero {
    background-attachment: fixed;
  }
}

#hero:before {
  content: "";
  background: rgba(0, 0, 0, 0.6);
  position: absolute;
  bottom: 0;
  top: 0;
  left: 0;
  right: 0;
}

#hero .hero-container {
  position: absolute;
  bottom: 0;
  top: 0;
  left: 0;
  right: 0;
  display: flex;
  justify-content: center;
  align-items: right;
  flex-direction: column;
  text-align: center;
  float:right;
  margin-left : 50px;
}

#hero h1 {
  margin: 30px 0 10px 0;
  font-size: 48px;
  font-weight: 700;
  line-height: 56px;
  text-transform: uppercase;
  color: #fff;
}

@media (max-width: 768px) {
  #hero h1 {
    font-size: 28px;
    line-height: 36px;
  }
}

#hero h2 {
  color: #eee;
  margin-bottom: 50px;
  font-size: 24px;
}

@media (max-width: 768px) {
  #hero h2 {
    font-size: 18px;
    line-height: 24px;
    margin-bottom: 30px;
  }
}

#hero .btn-get-started {
  font-family: "Poppins", sans-serif;
  text-transform: uppercase;
  font-weight: 500;
  font-size: 16px;
  letter-spacing: 1px;
  display: inline-block;
  padding: 8px 28px;
  border-radius: 50px;
  transition: 0.5s;
  margin: 10px;
  border: 2px solid #fff;
  color: #fff;
}

#hero .btn-get-started:hover {
  background: #2dc997;
  border: 2px solid #2dc997;
}

/*--------------------------------------------------------------
# Navigation Menu
--------------------------------------------------------------*/
/* Nav Menu Essentials */
.nav-menu, .nav-menu * {
  margin: 0;
  padding: 0;
  list-style: none;
}

.nav-menu ul {
  position: absolute;
  display: none;
  top: 100%;
  left: 0;
  z-index: 99;
}

.nav-menu li {
  position: relative;
  white-space: nowrap;
}

.nav-menu > li {
  float: left;
}

.nav-menu li:hover > ul,
.nav-menu li.sfHover > ul {
  display: block;
}

.nav-menu ul ul {
  top: 0;
  left: 100%;
}

.nav-menu ul li {
  min-width: 180px;
}

/* Nav Menu Arrows */
.sf-arrows .sf-with-ul {
  padding-right: 30px;
}

.sf-arrows .sf-with-ul:after {
  content: "\f107";
  position: absolute;
  right: 15px;
  font-family: FontAwesome;
  font-style: normal;
  font-weight: normal;
}

.sf-arrows ul .sf-with-ul:after {
  content: "\f105";
}

/* Nav Meu Container */
#nav-menu-container {
  float: right;
  margin: 0;
}

@media (max-width: 768px) {
  #nav-menu-container {
    display: none;
  }
}

/* Nav Meu Styling */
.nav-menu a {
  padding: 0 8px 10px 8px;
  text-decoration: none;
  display: inline-block;
  color: #fff;
  font-family: "Poppins", sans-serif;
  font-weight: 400;
  text-transform: uppercase;
  font-size: 13px;
  outline: none;
}

.nav-menu > li {
  margin-left: 10px;
}

.nav-menu > li > a:before {
  content: "";
  position: absolute;
  width: 100%;
  height: 2px;
  bottom: 0;
  left: 0;
  background-color: #2dc997;
  visibility: hidden;
  -webkit-transform: scaleX(0);
  transform: scaleX(0);
  -webkit-transition: all 0.3s ease-in-out 0s;
  transition: all 0.3s ease-in-out 0s;
}

.nav-menu a:hover:before, .nav-menu li:hover > a:before, .nav-menu .menu-active > a:before {
  visibility: visible;
  -webkit-transform: scaleX(1);
  transform: scaleX(1);
}

.nav-menu ul {
  margin: 4px 0 0 0;
  border: 1px solid #e7e7e7;
}

.nav-menu ul li {
  background: #fff;
}

.nav-menu ul li:first-child {
  border-top: 0;
}

.nav-menu ul li a {
  padding: 10px;
  color: #333;
  transition: 0.3s;
  display: block;
  font-size: 13px;
  text-transform: none;
}

.nav-menu ul li a:hover {
  background: #2dc997;
  color: #fff;
}

.nav-menu ul ul {
  margin: 0;
}

/* Mobile Nav Toggle */
#mobile-nav-toggle {
  position: fixed;
  right: 0;
  top: 0;
  z-index: 999;
  margin: 20px 20px 0 0;
  border: 0;
  background: none;
  font-size: 24px;
  display: none;
  transition: all 0.4s;
  outline: none;
  cursor: pointer;
}

#mobile-nav-toggle i {
  color: #fff;
}

@media (max-width: 768px) {
  #mobile-nav-toggle {
    display: inline;
  }
}

/* Mobile Nav Toggle */
#mobile-nav-toggle {
  position: fixed;
  right: 0;
  top: 0;
  z-index: 999;
  margin: 20px 20px 0 0;
  border: 0;
  background: none;
  font-size: 24px;
  display: none;
  transition: all 0.4s;
  outline: none;
  cursor: pointer;
}

#mobile-nav-toggle i {
  color: #fff;
}

@media (max-width: 768px) {
  #mobile-nav-toggle {
    display: inline;
  }
}

/* Mobile Nav Styling */
#mobile-nav {
  position: fixed;
  top: 0;
  padding-top: 18px;
  bottom: 0;
  z-index: 998;
  background: rgba(52, 59, 64, 0.9);
  left: -260px;
  width: 260px;
  overflow-y: auto;
  transition: 0.4s;
}

#mobile-nav ul {
  padding: 0;
  margin: 0;
  list-style: none;
}

#mobile-nav ul li {
  position: relative;
}

#mobile-nav ul li a {
  color: #fff;
  font-size: 16px;
  overflow: hidden;
  padding: 10px 22px 10px 15px;
  position: relative;
  text-decoration: none;
  width: 100%;
  display: block;
  outline: none;
}

#mobile-nav ul li a:hover {
  color: #fff;
}

#mobile-nav ul li li {
  padding-left: 30px;
}

#mobile-nav ul .menu-has-children i {
  position: absolute;
  right: 0;
  z-index: 99;
  padding: 15px;
  cursor: pointer;
  color: #fff;
}

#mobile-nav ul .menu-has-children i.fa-chevron-up {
  color: #2dc997;
}

#mobile-nav ul .menu-item-active {
  color: #2dc997;
}

#mobile-body-overly {
  width: 100%;
  height: 100%;
  z-index: 997;
  top: 0;
  left: 0;
  position: fixed;
  background: rgba(52, 59, 64, 0.9);
  display: none;
}

/* Mobile Nav body classes */
body.mobile-nav-active {
  overflow: hidden;
}

body.mobile-nav-active #mobile-nav {
  left: 0;
}

body.mobile-nav-active #mobile-nav-toggle {
  color: #fff;
}

/*--------------------------------------------------------------
# Sections
--------------------------------------------------------------*/
/* Sections Header
--------------------------------*/
.section-header .section-title {
  font-size: 32px;
  color: #111;
  text-transform: uppercase;
  text-align: center;
  font-weight: 700;
  margin-bottom: 5px;
}

.section-header .section-description {
  text-align: center;
  padding-bottom: 40px;
  color: #999;
}

/* 구글맵
--------------------------------*/
/* search box
--------------------------------*/

#description {
  font-family: Roboto;
  font-size: 15px;
  font-weight: 300;
}

#infowindow-content .title {
  font-weight: bold;
}

#infowindow-content {
  display: none;
}

#map #infowindow-content {
  display: inline;
}

.pac-card {
  margin: 10px 10px 0 0;
  border-radius: 2px 0 0 2px;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  outline: none;
  box-shadow: 0 2px 6px rgba(0, 0, 0, 0.3);
  background-color: #fff;
  font-family: Roboto;
}

#pac-container {
  padding-bottom: 12px;
  margin-right: 12px;
}

.pac-controls {
  display: inline-block;
  padding: 5px 11px;
}

.pac-controls label {
  font-family: Roboto;
  font-size: 13px;
  font-weight: 300;
}

#pac-input {
  background-color: #fff;
  font-family: Roboto;
  font-size: 25px;
  font-weight: 300;
  margin-left: 12px;
  padding: 0 11px 0 13px;
  text-overflow: ellipsis;
  width: 300px;
  border-radius: 10px;
}

#pac-input:focus {
  border-color: #585858;
}

#title {
  color: #fff;
  background-color: #4d90fe;
  font-size: 25px;
  font-weight: 500;
  padding: 6px 12px;
}
#target {
  width: 345px;
}

/* 토글버튼
--------------------------------*/

input[type="checkbox"] {
    position: absolute;
    visibility: hidden;
    
}

label {
    display: block;
    position: absolute;
    width: 60px;
    height: 34px;
    border-radius: 17px;
    background-color: #ddd;
    transition-duration: 0.2s;
    margin: 1%;
}

label span {
    position: absolute;
    left: 3px;
    top: 3px;
    z-index: 1;
    width: 28px;
    height: 28px;
    border-radius: 50%;
    background-color: #fff;
    transition-duration: 0.2s;
}

label:before,
label:after{
    position: absolute;
    top: 0;
    width: 34px;
    font-size: 11px;
    line-height: 34px;
    color: #fff;
    text-align: center;
}

label:before {
    left: 0;
    content: 'ON';
}

label:after {
    right: 0;
    content: 'OFF';
}

input:checked + label {
    background-color: red;
}

input:checked + label span {
    transform: translateX(26px);
}

/* 전시회 검색
--------------------------------*/

table {
  font-size: 12px;
}

#listing {
  position: absolute;
  width: 200px;
  height: 470px;
  overflow: auto;
  left: 442px;
  top: 0px;
  cursor: pointer;
  overflow-x: hidden;
}

#controls {
  position: absolute;
  width: 140px;
  left: 300px;
  top: 0px;
  z-index: 5;
  background-color: #fff;
  font-size: 25px;
  margin: 1%;
  
}
#autocomplete {
  position: absolute;
  width: 300px;
  left: 108px;
  top: 0px;
  z-index: 5;
  background-color: #fff;
  font-size: 25px;
  margin-top: 1%;
  border-radius: 10px;
}
#country {
  width: 100%;
}
.placeIcon {
  width: 20px;
  height: 34px;
  margin: 4px;
}
.hotelIcon {
  width: 24px;
  height: 24px;
}
#resultsTable {
  border-collapse: collapse;
  width: 240px;
}
#rating {
  font-size: 13px;
  font-family: Arial Unicode MS;
}
.iw_table_row {
  height: 18px;
}
.iw_attribute_name {
  font-weight: bold;
  text-align: right;
}
.iw_table_icon {
  text-align: right;
}


</style>
<!-- 메인화면 구글맵 javascript -->
<script>
var map, places, infoWindow, autocomplete;
var markers = [];
var countryRestrict = {'country': 'us'};
var MARKER_PATH = 'https://developers.google.com/maps/documentation/javascript/images/marker_green';
var hostnameRegexp = new RegExp('^https?://.+?/');

var countries = {
        'au': {
          center: {lat: -25.3, lng: 133.8},
          zoom: 4
        },
        'br': {
          center: {lat: -14.2, lng: -51.9},
          zoom: 3
        },
        'ca': {
          center: {lat: 62, lng: -110.0},
          zoom: 3
        },
        'fr': {
          center: {lat: 46.2, lng: 2.2},
          zoom: 5
        },
        'de': {
          center: {lat: 51.2, lng: 10.4},
          zoom: 5
        },
        'mx': {
          center: {lat: 23.6, lng: -102.5},
          zoom: 4
        },
        'nz': {
          center: {lat: -40.9, lng: 174.9},
          zoom: 5
        },
        'it': {
          center: {lat: 41.9, lng: 12.6},
          zoom: 5
        },
        'za': {
          center: {lat: -30.6, lng: 22.9},
          zoom: 5
        },
        'es': {
          center: {lat: 40.5, lng: -3.7},
          zoom: 5
        },
        'pt': {
          center: {lat: 39.4, lng: -8.2},
          zoom: 6
        },
        'us': {
          center: {lat: 37.1, lng: -95.7},
          zoom: 3
        },
        'uk': {
          center: {lat: 54.8, lng: -4.6},
          zoom: 5
        }
      };
      
	//search 박스를 쓰기 위해서는  initMap()이 아닌, initAutocomplete()을 써야 한다.
    function initAutocomplete() {
        	
            var options = {
                zoom: 2.7,			// 확대 비율!
                center: new google.maps.LatLng(37.5130509, 127.0584479), // centered KOEX
                mapTypeId: google.maps.MapTypeId.ROADMAP,					// HYBRID, ROADMAP, SATELLITE, TERRAIN 4가지 종류가 있음
                mapTypeControl: false,
                fullscreenControl: false,
                scaleControl: false,
                rotateControl: true,
                streetViewControl: false,
                suppressInfoWindows: true,
                gestureHandling: 'greedy'		//지도 확대/축소 컨트롤 키 누르고 스크롤 기능 안하고 그냥 스크롤로 확대/축소
                
            };
            
            // init map
            map = new google.maps.Map(document.getElementById('map'), options);		// 맵 생성!
            
            infoWindow = new google.maps.InfoWindow({
                content: document.getElementById('info-content')
              });
                                        
            // search 박스를 생성하고, 지도 위에 옮기는 기능
            var input = document.getElementById('pac-input');
       		var searchBox = new google.maps.places.SearchBox(input);
        	map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);
        	
        	// 토글버튼 생성하고, 지도 위에 옮기는 기능
        	var checkbox = document.getElementById('checkbox');
        	map.controls[google.maps.ControlPosition.TOP_LEFT].push(checkbox);
        	var checkbox2 = document.getElementById('checkbox2');
        	map.controls[google.maps.ControlPosition.TOP_LEFT].push(checkbox2);
                    	
        	// convention center 검색을 위한 검색창을 생성하고, 지도 위에 옮기는 기능
        	var autocomplete = document.getElementById('autocomplete');
        	map.controls[google.maps.ControlPosition.TOP_LEFT].push(autocomplete);
        	var controls = document.getElementById('controls');
        	map.controls[google.maps.ControlPosition.TOP_LEFT].push(controls);
        	
            //SearchBox 결과를 현재 맵의 뷰포트로 이동합니다.
            map.addListener('bounds_changed', function() {
          	 searchBox.setBounds(map.getBounds());
        	});
            
            
            
            //사용자가 예측 및 검색을 선택할 때 발생하는 이벤트 청취
            // 그 장소에 대한 자세한 정보
            searchBox.addListener('places_changed', function() {
            var places = searchBox.getPlaces();
  
            if (places.length == 0) {
              return;
            }
           
            // 이전 마커를 지웁니다.
            markers.forEach(function(marker) {
              marker.setMap(null);
            });
            markers = []; 
            
            // 각 위치에 대해 아이콘, 이름 및 위치를 가져옵니다.
            var bounds = new google.maps.LatLngBounds();
            places.forEach(function(place) {
              if (!place.geometry) {
                console.log("Returned place contains no geometry");
                return;
              }
              var icon = {
                url: "resources/image/icon/maps_icon6(50, 50).png",
                size: new google.maps.Size(71, 71),
                origin: new google.maps.Point(0, 0),
                anchor: new google.maps.Point(17, 34),
                scaledSize: new google.maps.Size(50, 50)
              };

              // 각 위치에 대한 마커를 만듭니다.
              markers.push(new google.maps.Marker({
                map: map,
                icon: icon,
                title: place.name,
                position: place.geometry.location
              }));

              if (place.geometry.viewport) {
                // 지오코드에만 뷰포트가 있습니다.
                bounds.union(place.geometry.viewport);
              } else {
                bounds.extend(place.geometry.location);
              }
            });
            map.fitBounds(bounds);
          });
        
            /* // koex and bigsight sample Lat / Lng
            var koex = new google.maps.LatLng(37.5130509, 127.0584479); // 서울 코엑스 좌표 37.5130509, 127.0584479
            var bigsight = new google.maps.LatLng(35.6298556, 139.7945055); // 도쿄 빅사이트 좌표 35.6298556, 139.7945055
            // 마커 지정
            placeMarker(koex);
            placeMarker(bigsight); */
                       
    };
    
    function placeMarker(location) {
       // 마커 아이콘 변경
       var myIcon = new google.maps.MarkerImage("resources/image/icon/maps_icon7(50, 50).png", null, null, null, new google.maps.Size(50, 50)); // (가로, 세로)
 	   
       var marker = new google.maps.Marker({
 	      position : location,
 	      // animation: google.maps.Animation.DROP 지도 실행시 마커 표시가 위에서 떨어지는 효과
 	      icon : myIcon,
 	      map : map,
 	  	  // draggable: true, 마커 이동
 		});
 	   map.setCenter(location);
   };
   
   function BtnOn(chkbox){
	   if (chkbox.checked == true)
	   {
		   setMapOnAll(map);
	   }
	   else
	   {
	   setMapOnAll(null);
	   }
   }
   
   function setMapOnAll(map) {
       for (var i = 0; i < markers.length; i++) {
         markers[i].setMap(map);
       }
     }

</script>      
</head>

<body>
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
      <header id="header">
    <div class="container">

      <div id="logo" class="pull-left">
        <a href="#hero"><img src="" alt="" title="" /></img></a>
        <!-- Uncomment below if you prefer to use a text logo -->
        <!--<h1><a href="resources/regna/#hero">Regna</a></h1>-->
      </div>

      <nav id="nav-menu-container">
        <ul class="nav-menu">
          <li class="menu-active"><a href="${pageContext.servletContext.contextPath}">Home</a></li>
           <li class="menu-has-children"><a href="#services">Exhibition</a>
           <ul>
              <li><a href="exhibitionList">Exhibition List</a></li>
           	  <li><a href="#facts">GoogleMap</a></li>   
           	  <li><a href="jvectorMap">VectorMap</a></li>   
           </ul>
           
           
         <li class="menu-has-children"><a href="#portfolio">User's Voice</a>
           <ul>
              <li><a href="reviews">Review</a></li>
           	  <li><a href="questions">Question</a></li>
           	  <li><a href="writeArticle">Write Article</a></li>   
           </ul>
           
         
        <c:if test="${empty sessionScope.loginId}">		
          <li class="menu-has-children"><a href="profile">Member</a>
           <ul>
              <li><a href="login">Log in</a></li>
           	  <li><a href="#">Sign up</a></li>   
           </ul>
         </c:if>
          
         <c:if test="${not empty sessionScope.loginId}">
          	<li class="menu-has-children"><a href="#">${sessionScope.loginId} 님</a>
         	<ul>
           	  <li><a href="logout">Log out</a></li>   
              <li><a href="profile">Profile</a></li>
           	  <li><a href="calendar">calendar</a></li>  
           </ul>
         </c:if> 
          
        </ul>
      </nav><!-- #nav-menu-container -->
    </div>
  </header><!-- #header -->

  <!--==========================
    Hero Section
  ============================-->
  <section id="hero">
    <div class="hero-container">
      <h2>WE &nbsp;<span class="typed"></span></h2>
        <p>Welcome to SEWorld</p>

        <div class="list-unstyled list-social">
          <a href="#"><i class="fab fa-facebook"></i></a>
          <a href="#"><i class="fab fa-twitter"></i></a>
          <a href="#"><i class="fab fa-instagram"></i></a>
          <a href="#"><i class="fab fa-google-plus"></i></a>
        </div>
    </div>
  </section><!-- #hero -->
     
     
     
     
     
     
     
        <!-- ============================================================== -->
        <!-- End Topbar header -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
       
        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <section id="about">
      <div class="container">
        <div class="row about-container">

          <div class="col-lg-6 content order-lg-1 order-2">
            <h2 class="title">Few Words About Us</h2>
            <p>
              Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
            </p>

            <div class="icon-box wow fadeInUp">
              <div class="icon"><i class="fa fa-shopping-bag"></i></div>
              <h4 class="title"><a href="resources/regna/">Eiusmod Tempor</a></h4>
              <p class="description">Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi</p>
            </div>

            <div class="icon-box wow fadeInUp" data-wow-delay="0.2s">
              <div class="icon"><i class="fa fa-photo"></i></div>
              <h4 class="title"><a href="resources/regna/">Magni Dolores</a></h4>
              <p class="description">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>
            </div>

            <div class="icon-box wow fadeInUp" data-wow-delay="0.4s">
              <div class="icon"><i class="fa fa-bar-chart"></i></div>
              <h4 class="title"><a href="resources/regna/">Dolor Sitema</a></h4>
              <p class="description">Minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat tarad limino ata</p>
            </div>

          </div>

          <div class="col-lg-6 background order-lg-2 order-1 wow fadeInRight">
          <video autoplay loop muted playsinline src="https://youtu.be/Db7M5tTv9b8"></video></div>
        </div>

      </div>
    </section><!-- #about -->
     
     <!-- 구글맵 --> 
      <section id="facts">
      
      <div class="container-fluid wow fadeIn">
    
     <span data-toggle="counter-up">6000</span> Exhibitions are available
        <div class="section-header">
          <h3 class="section-title" style="float:left;">Google Map</h3> 
        </div>
        <br/><br/>
        <input id="pac-input" class="controls" type="text" placeholder="검색" style="margin: 1%;">
        
        <div id="controls">
	      <select id="country">
	        <option value="all">All</option>
	        <option value="au">Australia</option>
	        <option value="br">Brazil</option>
	        <option value="ca">Canada</option>
	        <option value="fr">France</option>
	        <option value="de">Germany</option>
	        <option value="mx">Mexico</option>
	        <option value="nz">New Zealand</option>
	        <option value="it">Italy</option>
	        <option value="za">South Africa</option>
	        <option value="es">Spain</option>
	        <option value="pt">Portugal</option>
	        <option value="us" selected>U.S.A.</option>
	        <option value="uk">United Kingdom</option>
	      </select>
	    </div>
	    
	    <input id="autocomplete" placeholder="Enter a city for find hotels in" type="text" />
	    
        <input type="checkbox" id="checkbox" checked onclick="BtnOn(this)">
		<label for="checkbox" id="checkbox2"><span></span></label>
        <div id="map" style="height: 700px; margin:auto;"></div>
        
        <div id="listing">
	      <table id="resultsTable">
	        <tbody id="results"></tbody>
	      </table>
	    </div>
	
	    <div style="display: none">
	      <div id="info-content">
	        <table>
	          <tr id="iw-url-row" class="iw_table_row">
	            <td id="iw-icon" class="iw_table_icon"></td>
	            <td id="iw-url"></td>
	          </tr>
	          <tr id="iw-address-row" class="iw_table_row">
	            <td class="iw_attribute_name">Address:</td>
	            <td id="iw-address"></td>
	          </tr>
	          <tr id="iw-phone-row" class="iw_table_row">
	            <td class="iw_attribute_name">Telephone:</td>
	            <td id="iw-phone"></td>
	          </tr>
	          <tr id="iw-rating-row" class="iw_table_row">
	            <td class="iw_attribute_name">Rating:</td>
	            <td id="iw-rating"></td>
	          </tr>
	          <tr id="iw-website-row" class="iw_table_row">
	            <td class="iw_attribute_name">Website:</td>
	            <td id="iw-website"></td>
	          </tr>
	        </table>
	      </div>
	    </div>
	    
     </div>
     
 
  
    </section><!-- #facts -->
        
     <!-- 전시회목록 -->   
      <section id="services">
      <div class="container wow fadeIn">
        <div class="section-header">
          <h3 class="section-title">Lively Updated Exhibitions</h3>
          <p class="section-description">최근 전시회들</p>
        </div>
        <div class="row">
          <div class="col-lg-6 col-md-6 wow fadeInUp" data-wow-delay="0.2s">
           <div class="card">
                 <div id="carouselExampleIndicators3" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators3" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators3" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators3" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="carousel-item active">
            <img class="img-fluid" src="resources/assets/images/big/img6.jpg" alt="First slide">
            <div class="carousel-caption d-none d-md-block">
                <h3 class="text-white">한국기술과학 연구원 전시회</h3>
                <p>한국기술과학 연구원 20주년을 맞아...</p>
            </div>
        </div>
        <div class="carousel-item">
            <img class="img-fluid" src="resources/assets/images/big/img3.jpg" alt="Second slide">
            <div class="carousel-caption d-none d-md-block">
                <h3 class="text-white">Second title goes here</h3>
                <p>this is the subcontent you can use this</p>
            </div>
        </div>
        <div class="carousel-item">
            <img class="img-fluid" src="resources/assets/images/big/img4.jpg" alt="Third slide">
            <div class="carousel-caption d-none d-md-block">
                <h3 class="text-white">Third title goes here</h3>
                <p>this is the subcontent you can use this</p>
            </div>
        </div>
    </div>
    
</div>
              </div><!-- card -->
          </div>
          <div class="col-lg-6 col-md-6 wow fadeInUp" data-wow-delay="0.4s">
           <div class="card">
                    <div id="carouselExampleIndicators2" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators2" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators2" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators2" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="carousel-item active">
            <img class="img-fluid" src="resources/assets/images/big/img6.jpg" alt="First slide">
            <div class="carousel-caption d-none d-md-block">
                <h3 class="text-white">First title goes here</h3>
                <p>this is the subcontent you can use this</p>
            </div>
        </div>
        <div class="carousel-item">
            <img class="img-fluid" src="resources/assets/images/big/img3.jpg" alt="Second slide">
            <div class="carousel-caption d-none d-md-block">
                <h3 class="text-white">Second title goes here</h3>
                <p>this is the subcontent you can use this</p>
            </div>
        </div>
        <div class="carousel-item">
            <img class="img-fluid" src="resources/assets/images/big/img4.jpg" alt="Third slide">
            <div class="carousel-caption d-none d-md-block">
                <h3 class="text-white">Third title goes here</h3>
                <p>this is the subcontent you can use this</p>
            </div>
        </div>
    </div>
    
</div>
                                </div>
          </div>
       	  

          <div class="col-lg-6 col-md-6 wow fadeInUp" data-wow-delay="0.2s">
           <div class="card">
                <div id="carouselExampleIndicators1" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators1" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators1" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators1" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="carousel-item active">
            <img class="img-fluid" src="resources/assets/images/big/img6.jpg" alt="First slide">
            <div class="carousel-caption d-none d-md-block">
                <h3 class="text-white">First title goes here</h3>
                <p>this is the subcontent you can use this</p>
            </div>
        </div>
        <div class="carousel-item">
            <img class="img-fluid" src="resources/assets/images/big/img3.jpg" alt="Second slide">
            <div class="carousel-caption d-none d-md-block">
                <h3 class="text-white">Second title goes here</h3>
                <p>this is the subcontent you can use this</p>
            </div>
        </div>
        <div class="carousel-item">
            <img class="img-fluid" src="resources/assets/images/big/img4.jpg" alt="Third slide">
            <div class="carousel-caption d-none d-md-block">
                <h3 class="text-white">Third title goes here</h3>
                <p>this is the subcontent you can use this</p>
            </div>
        </div>
    </div>
   
</div>
                                </div>
          </div>
          <div class="col-lg-6 col-md-6 wow fadeInUp" data-wow-delay="0.4s">
           <div class="card">
                      <div id="carouselExampleIndicators4" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators4" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators4" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators4" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="carousel-item active">
            <img class="img-fluid" src="resources/assets/images/big/img6.jpg" alt="First slide">
            <div class="carousel-caption d-none d-md-block">
                <h3 class="text-white">First title goes here</h3>
                <p>this is the subcontent you can use this</p>
            </div>
        </div>
        <div class="carousel-item">
            <img class="img-fluid" src="resources/assets/images/big/img3.jpg" alt="Second slide">
            <div class="carousel-caption d-none d-md-block">
                <h3 class="text-white">Second title goes here</h3>
                <p>this is the subcontent you can use this</p>
            </div>
        </div>
        <div class="carousel-item">
            <img class="img-fluid" src="resources/assets/images/big/img4.jpg" alt="Third slide">
            <div class="carousel-caption d-none d-md-block">
                <h3 class="text-white">Third title goes here</h3>
                <p>this is the subcontent you can use this</p>
            </div>
        </div>
    </div>
   
</div>
                                </div>
          </div>
       	   
       </div><!-- row -->

      </div>
    </section><!-- #services -->   
     
     
     <!-- 전시회목록 end-->   
        
        
     <section id="portfolio">
      <div class="container wow fadeIn">
        <div class="section-header">
          <h3 class="section-title">Recent reviews</h3>
          <p class="section-description">생생한 후기</p>
        </div>
        <div class="row">
          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.2s">
           <div class="card">
                  <img class="card-img-top img-responsive" src="resources/assets/images/big/img4.jpg" alt="Card image cap">
                                    <div class="card-body">
                                        <div class="d-flex no-block align-items-center m-b-15">
                                            <span><i class="ti-calendar"></i> 20 May 2018</span>
                                            <div class="ml-auto">
                                                <a href="javascript:void(0)" class="link"><i class="ti-comments"></i> 3 Comments</a>
                                            </div>
                                        </div>
                                        <h3 class="font-normal">Featured Hydroflora Pots Garden &amp; Outdoors</h3>
                                        <p class="m-b-0 m-t-10">Titudin venenatis ipsum ac feugiat. Vestibulum ullamcorper quam.</p>
                                        <button class="btn btn-success btn-rounded waves-effect waves-light m-t-20">Read more</button>
                                    </div>
                                </div>
          </div>
          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.4s">
           <div class="card">
                                    <img class="card-img-top img-responsive" src="resources/assets/images/big/img5.jpg" alt="Card image cap">
                                    <div class="card-body">
                                        <div class="d-flex no-block align-items-center m-b-15">
                                            <span><i class="ti-calendar"></i> 19 May 2018</span>
                                            <div class="ml-auto">
                                                <a href="javascript:void(0)" class="link"><i class="ti-comments"></i> 5 Comments</a>
                                            </div>
                                        </div>
                                        <h3 class="font-normal">Featured Hydroflora Pots Garden &amp; Outdoors</h3>
                                        <p class="m-b-0 m-t-10">Titudin venenatis ipsum ac feugiat. Vestibulum ullamcorper quam.</p>
                                        <button class="btn btn-success btn-rounded waves-effect waves-light m-t-20">Read more</button>
                                    </div>
                                </div>
          </div>
       	   <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.6s">
          		  <div class="card">
                                    <img class="card-img-top img-responsive" src="resources/assets/images/big/img6.jpg" alt="Card image cap">
                                    <div class="card-body">
                                        <div class="d-flex no-block align-items-center m-b-15">
                                            <span><i class="ti-calendar"></i> 29 May 2018</span>
                                            <div class="ml-auto">
                                                <a href="javascript:void(0)" class="link"><i class="ti-comments"></i> 6 Comments</a>
                                            </div>
                                        </div>
                                        <h3 class="font-normal">Featured Hydroflora Pots Garden &amp; Outdoors</h3>
                                        <p class="m-b-0 m-t-10">Titudin venenatis ipsum ac feugiat. Vestibulum ullamcorper quam.</p>
                                        <button class="btn btn-success btn-rounded waves-effect waves-light m-t-20">Read more</button>
                                    </div>
                                </div>
          </div>

          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.2s">
           <div class="card">
                  <img class="card-img-top img-responsive" src="resources/assets/images/big/img4.jpg" alt="Card image cap">
                                    <div class="card-body">
                                        <div class="d-flex no-block align-items-center m-b-15">
                                            <span><i class="ti-calendar"></i> 20 May 2018</span>
                                            <div class="ml-auto">
                                                <a href="javascript:void(0)" class="link"><i class="ti-comments"></i> 3 Comments</a>
                                            </div>
                                        </div>
                                        <h3 class="font-normal">Featured Hydroflora Pots Garden &amp; Outdoors</h3>
                                        <p class="m-b-0 m-t-10">Titudin venenatis ipsum ac feugiat. Vestibulum ullamcorper quam.</p>
                                        <button class="btn btn-success btn-rounded waves-effect waves-light m-t-20">Read more</button>
                                    </div>
                                </div>
          </div>
          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.4s">
           <div class="card">
                                    <img class="card-img-top img-responsive" src="resources/assets/images/big/img5.jpg" alt="Card image cap">
                                    <div class="card-body">
                                        <div class="d-flex no-block align-items-center m-b-15">
                                            <span><i class="ti-calendar"></i> 19 May 2018</span>
                                            <div class="ml-auto">
                                                <a href="javascript:void(0)" class="link"><i class="ti-comments"></i> 5 Comments</a>
                                            </div>
                                        </div>
                                        <h3 class="font-normal">Featured Hydroflora Pots Garden &amp; Outdoors</h3>
                                        <p class="m-b-0 m-t-10">Titudin venenatis ipsum ac feugiat. Vestibulum ullamcorper quam.</p>
                                        <button class="btn btn-success btn-rounded waves-effect waves-light m-t-20">Read more</button>
                                    </div>
                                </div>
          </div>
       	   <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.6s">
          		  <div class="card">
                                    <img class="card-img-top img-responsive" src="resources/assets/images/big/img6.jpg" alt="Card image cap">
                                    <div class="card-body">
                                        <div class="d-flex no-block align-items-center m-b-15">
                                            <span><i class="ti-calendar"></i> 29 May 2018</span>
                                            <div class="ml-auto">
                                                <a href="javascript:void(0)" class="link"><i class="ti-comments"></i> 6 Comments</a>
                                            </div>
                                        </div>
                                        <h3 class="font-normal">Featured Hydroflora Pots Garden &amp; Outdoors</h3>
                                        <p class="m-b-0 m-t-10">Titudin venenatis ipsum ac feugiat. Vestibulum ullamcorper quam.</p>
                                        <button class="btn btn-success btn-rounded waves-effect waves-light m-t-20">Read more</button>
                                    </div>
                                </div>
          </div>
       </div><!-- row -->

      </div>
    </section><!-- #services -->   
    
    <!--==========================
    Call To Action Section
    ============================-->
    <section id="call-to-action">
      <div class="container wow fadeIn">
        <div class="row">
          <div class="col-lg-9 text-center text-lg-left">
            <h3 class="cta-title">Free Register</h3>
            <p class="cta-text"> 무료 회원가입.</p>
          </div>
          <div class="col-lg-3 cta-btn-container text-center">
            <a class="cta-btn align-middle" href="resources/regna/#">Go</a>
          </div>
        </div>

      </div>
    </section><!-- #call-to-action -->
    
         <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
           
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
   
   
   
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
            
                
                
                
                
                <div class="row">
                    <div class="col-12">
                            <div class="card">
                            <div class="card-body">
                            <!-- 탭으로 구분하깅 -->
      
        
        <!-- 월드 맵 -->
           		
                                 <div class="section-header">World Map</div>
                                <div id="world-map-markers" style="height: 700px;"></div>
                           
    
    <!-- 미국지도 -->
                                <h4 class="card-title">USA</h4>
                                <div id="usa" style="height: 700px;"></div>
    <!-- 미국지도 -->
    
    
    
                                <h4 class="card-title">India</h4>
                                <div id="india" style="height: 450px;"></div>
                            <!-- 탭으로 구분하깅 -->
                            
                            
                     
                      </div><!-- 카드 body -->
                        
        </div><!-- 카드 -->
                     
                    </div>
                </div>
                
                <!-- ============================================================== -->
                <!-- End PAge Content -->
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
       <!-- 페이지 레퍼 div있던 자리 -->
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
  <footer id="footer">
    <div class="footer-top">
      <div class="container">

      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong>SE WROLD</strong>.
      </div>
     
    </div>
  </footer><!-- #footer -->

     <a href="#" class="back-to-top"><i class="fas fa-angle-double-up"></i></a>
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
<!-- 메인 레퍼 자꾸 엉켜서  지웠음..; -->
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- customizer Panel -->
    <!-- ============================================================== -->
    <!-- aside -->
    <div class="chat-windows"></div>
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="resources/assets/libs/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="resources/assets/libs/popper.js/dist/umd/popper.min.js"></script>
    <script src="resources/assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- apps -->
    <script src="resources/dist/js/app.min.js"></script>
     <script src="resources/dist/js/app.init.iconbar.js"></script>
    <script src="resources/dist/js/app-style-switcher.js"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="resources/assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
    <script src="resources/assets/extra-libs/sparkline/sparkline.js"></script>
    <!--Wave Effects -->
    <script src="resources/dist/js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="resources/dist/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="resources/dist/js/custom.min.js"></script>
    <!-- This Page JS -->
    <script src="resources/assets/extra-libs/jvector/jquery-jvectormap-2.0.2.min.js"></script>
    <script src="resources/assets/extra-libs/jvector/jquery-jvectormap-world-mill-en.js"></script>
    <script src="resources/assets/extra-libs/jvector/jquery-jvectormap-in-mill.js"></script>
    <script src="resources/assets/extra-libs/jvector/jquery-jvectormap-us-aea-en.js"></script>
    <script src="resources/assets/extra-libs/jvector/jquery-jvectormap-uk-mill-en.js"></script>
    <script src="resources/assets/extra-libs/jvector/jquery-jvectormap-au-mill.js"></script>
    <script src="resources/assets/extra-libs/jvector/jvectormap.custom.js"></script>
    <!-- 메인용 javascript -->
    <script src="resources/regna/lib/jquery/jquery-migrate.min.js"></script>
  <script src="resources/regna/lib/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="resources/regna/lib/easing/easing.min.js"></script>
  <script src="resources/regna/lib/wow/wow.min.js"></script>

  <script src="resources/regna/lib/waypoints/waypoints.min.js"></script>
  <script src="resources/regna/lib/counterup/counterup.min.js"></script>
  <script src="resources/regna/lib/superfish/hoverIntent.js"></script>
  <script src="resources/regna/lib/superfish/superfish.min.js"></script>
     <script src="resources/dist/typed.js"></script>
    <script src="resources/regna/js/main.js"></script>
    <script>
    jQuery(document).ready(function( $ ) {

    	  // Header fixed and Back to top button
    	
    	  
    	// Mobile Navigation
    	  if( $('#nav-menu-container').length ) {
    	    var $mobile_nav = $('#nav-menu-container').clone().prop({ id: 'mobile-nav'});
    	    $mobile_nav.find('> ul').attr({ 'class' : '', 'id' : '' });
    	    $('body').append( $mobile_nav );
    	    $('body').prepend( '<button type="button" id="mobile-nav-toggle"><i class="fa fa-bars"></i></button>' );
    	    $('body').append( '<div id="mobile-body-overly"></div>' );
    	    $('#mobile-nav').find('.menu-has-children').prepend('<i class="fa fa-chevron-down"></i>');

    	    $(document).on('click', '.menu-has-children i', function(e){
    	      $(this).next().toggleClass('menu-item-active');
    	      $(this).nextAll('ul').eq(0).slideToggle();
    	      $(this).toggleClass("fa-chevron-up fa-chevron-down");
    	    });

    	    $(document).on('click', '#mobile-nav-toggle', function(e){
    	      $('body').toggleClass('mobile-nav-active');
    	      $('#mobile-nav-toggle i').toggleClass('fa-times fa-bars');
    	      $('#mobile-body-overly').toggle();
    	    });

    	    $(document).click(function (e) {
    	      var container = $("#mobile-nav, #mobile-nav-toggle");
    	      if (!container.is(e.target) && container.has(e.target).length === 0) {
    	       if ( $('body').hasClass('mobile-nav-active') ) {
    	          $('body').removeClass('mobile-nav-active');
    	          $('#mobile-nav-toggle i').toggleClass('fa-times fa-bars');
    	          $('#mobile-body-overly').fadeOut();
    	        }
    	      }
    	    });
    	  } else if ( $("#mobile-nav, #mobile-nav-toggle").length ) {
    	    $("#mobile-nav, #mobile-nav-toggle").hide();
    	  }
    	  // Smoth scroll on page hash links
    	  
    	  
    
    	 /*타자 쳐지는 효과 만들기 */
    	  var typed = $(".typed");

    	  $(function() {
    	    typed.typed({
    	      strings: [" ARE GLOBALLY UNLIMITED.", "SHOW YOU TONS OF EXHIBITIONS.", "PROVIDE USER-FRIENDLY MAPS."],
    	      typeSpeed: 100,
    	      loop: true,
    	    });
    	  });
    	  
    });
    
    
    </script>
     <!-- 구글맵 javascript -->
	<script src="https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/markerclusterer.js"></script>
	<!-- <script async defer
	    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDf0YT_ifom64iJnlKsQ7XYfONTzQcNGvg&callback=initMap"></script> -->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDf0YT_ifom64iJnlKsQ7XYfONTzQcNGvg&libraries=places&callback=initAutocomplete"
         async defer></script>
</body>

</html>