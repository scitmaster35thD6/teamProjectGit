$(function() {
	/**지도표시용ajax**/
	var count = '';
		$.ajax({
			method : 'post'
			, url : 'countcountry'
			, data : '미국'
			, dataType : 'text' 
			, contentType : 'application/json; charset=UTF'
			, success : output
		});
	
		function output (resp){
			var count = JSON.stringify(resp);
			alert(count);
		}
	/**지도표시용ajax**/
	/**/
	
	
	
	
    "use strict";

jQuery('#world-map-markers').vectorMap(
{
    map: 'world_mill_en',
    backgroundColor: 'transparent',
    borderColor: '#818181',
    borderOpacity: 0.25,
    borderWidth: 1,
    zoomOnScroll: false,
    color: '#2962FF',
    regionStyle : {
        initial : {
          fill : '#2962FF'
        }
      },
    markerStyle: {
      initial: {
                    r: 9,
                    'fill': '#fff',
                    'fill-opacity':1,
                    'stroke': '#000',
                    'stroke-width' : 5,
                    'stroke-opacity': 0.4
                }
                },
    enableZoom: true,
    hoverColor: '#2962FF',
    markers : [{
        latLng : [21.00, 78.00],
        name : 'India : 600개의 전시회'
      
      },
      
        {
        latLng: [36.77, -119.41],
        name: count
        },
        
        {
        	latLng: [37.50,  127.00],
        	 name: 'Korea : 250개의 전시회'
        },
        
        {
        	latLng: [35.6298556,  139.7945055],
        	name : 'Japan : 345개의 전시회'
        	
        }
        
      {
          latLng : [21.00, 78.00],
          name : 'India : 600개의 전시회'
        
        },
        {
        latLng: [36.77, -119.41],
        name: 'USA : 250개의 전시회'
        }
    
    
    ],
    hoverOpacity: null,
    normalizeFunction: 'linear',
    scaleColors: ['#b6d6ff', '#005ace'],
    selectedColor: '#c9dfaf',
    selectedRegions: [],
    showTooltip: true,
    onRegionClick: function(element, code, region)
    {
        var message = 'You clicked "'
            + region
            + '" which has the code: '
            + code.toUpperCase();

        alert(message);
    }
});


$('#india').vectorMap({
            map : 'in_mill',
            backgroundColor : 'transparent',
    zoomOnScroll: false,
            regionStyle : {
                initial : {
                    fill : '#55ce63'
                }
            }
        });


        $('#usa').vectorMap({
            map : 'us_aea_en',
            backgroundColor : 'transparent',
            zoomOnScroll: false,
            regionStyle : {
                initial : {
                    fill : '#7460ee'
                }
            }
        });
        
       
        
        $('#australia').vectorMap({
            map : 'au_mill',
            backgroundColor : 'transparent',
            zoomOnScroll: false,
            regionStyle : {
                initial : {
                    fill : '#ffca4a'
                }
            }
        });
        
         $('#uk').vectorMap({
            map : 'uk_mill_en',
            backgroundColor : 'transparent',
             zoomOnScroll: false,
            regionStyle : {
                initial : {
                    fill : '#f62d51'
                }
            }
        });

  });      
        