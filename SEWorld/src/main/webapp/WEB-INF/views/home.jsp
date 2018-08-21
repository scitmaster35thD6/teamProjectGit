<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Team Project</title>
    <!-- Bootstrap 반응형 뷰포트 메타 태그 : 모든 기기에 대해 올바른 렌더링 및 터치줌을 보장  -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, user-scalable=no">
    <meta charset="utf-8">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    
    <style>
    .selector-for-some-widget {
 		 box-sizing: content-box;
	}
    #map{    	
		height: 90%;
    	position: absolute;
    	top: 10%;
    	left: 0;
    	right: 0;
      }
 	#menu{
 		position: absolute;
 		top: 15px;
 		left: 100px;
 	}
 	#login{
 		position: absolute;
 		right: 100px;
 	}
 	/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 15% auto; /* 15% from the top and centered */
    padding: 20px;
    border: 1px solid #888;
    width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button */
.close {
    color: #aaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: black;
    text-decoration: none;
    cursor: pointer;
}

    </style>
    <script type="text/javascript" src="resources/jquery-3.3.1.min.js"></script>
  </head>
  <body>
    <div id="map"></div>
    <span id="menu"><img src="resources/image/menu/menu4.png" width="40px;" height="40px;" align="top"/></span>
    <span id="login"><img src="resources/image/login/login17.png" width="60px;" height="60px;" align="top"/></span>
    <script type="text/javascript">

 // Get the modal
 var modal = document.getElementById('myModal');

 // Get the button that opens the modal
 var btn = document.getElementById("myBtn");

 // Get the <span> element that closes the modal
 var span = document.getElementsByClassName("close")[0];

 // When the user clicks on the button, open the modal 
 btn.onclick = function() {
     modal.style.display = "block";
 }

 // When the user clicks on <span> (x), close the modal
 span.onclick = function() {
     modal.style.display = "none";
 }

 // When the user clicks anywhere outside of the modal, close it
 window.onclick = function(event) {
     if (event.target == modal) {
         modal.style.display = "none";
     }
 }
    </script>
    <script>
      function initMap() {
		
	   	  var options = {
	                 zoom: 2.5,			// 확대 비율!
	                 center: new google.maps.LatLng(37.5130509, 127.0584479), // centered KOEX
	                 mapTypeId: google.maps.MapTypeId.ROADMAP,					// HYBRID, ROADMAP, SATELLITE, TERRAIN 4가지 종류가 있음
	                 mapTypeControl: false,
	                 fullscreenControl: false,
	                 scaleControl: false,
	                 rotateControl: true,
	                 streetViewControl: false,
	                 suppressInfoWindows: true
	             };
	   	  
        var map = new google.maps.Map(document.getElementById('map'), options); // 맵 생성
        
        // 마커 아이콘 변경
        var myIcon = new google.maps.MarkerImage("resources/image/icon/maps_icon7(50, 50).png", null, null, null, new google.maps.Size(50, 50)); // (가로, 세로)

        // Add some markers to the map.
        // Note: The code uses the JavaScript Array.prototype.map() method to
        // create an array of markers based on a given "locations" array.
        // The map() method here has nothing to do with the Google Maps API.
        var markers = locations.map(function(location, i) {
          return new google.maps.Marker({
            position: location,
            icon: myIcon,
            // draggable: true, 마커 이동
            // animation: google.maps.Animation.DROP 지도 실행시 마커 표시가 위에서 떨어지는 효과
          });
         
        }); 

        // Add a marker clusterer to manage the markers.
        var markerCluster = new MarkerClusterer(map, markers,
            {imagePath: 'https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/m'});
      }
      var locations = [
        {lat: 37.5130509, lng: 127.0584479}, // 서울 koex
        {lat: 35.6298556, lng: 139.7945055}  // 도쿄 빅사이트
      ]
    </script>
    <script src="https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/markerclusterer.js">
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDf0YT_ifom64iJnlKsQ7XYfONTzQcNGvg&callback=initMap">
    </script>

    <!-- Trigger/Open The Modal -->
<button id="myBtn">Open Modal</button>

<!-- The Modal -->
<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <span class="close">&times;</span>
    <p>Some text in the Modal..</p>
  </div>

</div>
	<!-- Optional JavaScript -->
	<!-- 먼저 jQuery가 오고 그 다음 Popper.js 그 다음 Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
  </body>
</html>