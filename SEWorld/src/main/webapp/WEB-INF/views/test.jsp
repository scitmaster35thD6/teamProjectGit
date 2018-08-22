<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>

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
 
    </style>
</head>
<body>
    <div id="map"></div>
 
    <script>
      function initMap() {
		
	   	  var options = {
	                 zoom: 2.5,			// 확대 비율!
	                 center: new google.maps.LatLng(37.5130509, 127.0584479), // centered KOEX
	                 mapTypeId: google.maps.MapTypeId.ROADMAP,				  // HYBRID, ROADMAP, SATELLITE, TERRAIN 4가지 종류가 있음
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
            icon: myIcon
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
      <script src="https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/markerclusterer.js"></script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDf0YT_ifom64iJnlKsQ7XYfONTzQcNGvg&callback=initMap"></script>
</body>
</html>