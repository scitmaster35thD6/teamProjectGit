/**
 * 
 */

var selectedCountry = '미국';
var currentPage = 1;

$(document).ready(

function() {
	init();
});

function init() {
	$.ajax({
		method : 'post',
		url : 'exhibitionListShow',
		data : 'currentPage=' + currentPage + '&selectedCountry='
				+ selectedCountry,
		contentType : 'application/json; charset=UTF-8',
		success : output
	})
}

function selectPage(pageNum) {
	currentPage = pageNum
	init();
}

function output(response) {
	var pageNavigator = '';

	$('.totalRecordCount').html(response.totalRecordCount);
	$('.exhibitionContent').html(response.list);

	for (var i = response.navi.startPageGroup; i < response.navi.endPageGroup; i++) {
		if (i == response.navi.currentPage) {
			pageNavigator += '<span style="color: red; font-weight: bolder">'
					+ i + '</span> &nbsp;';
		} else {
			pageNavigator += '<a href="javascript:selectPage(' + i
					+ ')" title="' + i + '번째 페이지로" class="pageSeletor">' + i
					+ '</a> &nbsp;'
		}

		$(".pageNavi").html(pageNavigator);
	}

}