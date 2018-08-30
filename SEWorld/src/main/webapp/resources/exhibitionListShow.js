/**
 * Script file for view list of exhibitions
 */

var selectedCountry = '';
var currentPage = 1;

$(document).ready(function() {
	$("#searchBtn").on("click", function() {
		alert("!")
	});
	init();
});

function init() {
	$.ajax({
		method : 'post',
		url : 'exhibitionListShow',
		data : 'currentPage=' + currentPage + '&selectedCountry=',
		success : output
	})
}

function searchWithWord() {
	var searchCategory = $('#searchCategory option:selected').val();
	var searchKeyword = $('#searchKeyword').val();

	$.ajax({
		method : 'post',
		url : 'exhibitionListShow',
		data : 'currentPage=' + currentPage + '&selectedCountry='
				+ selectedCountry + '&searchCategory=' + searchCategory
				+ '&searchKeyword' + searchKeyword,
		success : output
	})
}

function selectPage(pageNum) {
	currentPage = pageNum
	init();
}

function previousPageGroup() {
	currentPage -= 1;
	init();
}

function nextPageGroup() {
	currentPage += 1;
	init();
}

function output(response) {
	var pageNavigator = '<a href="javascript:previousPageGroup()">◀</a>';

	$('.totalRecordCount').html(response.totalRecordCount);
	$('.exhibitionContent').html(response.list);

	for (var i = response.navi.startPageGroup; i <= response.navi.endPageGroup; i++) {

		if (i == response.navi.currentPage) {
			pageNavigator += '<span style="color: red; font-weight: bolder">'
					+ i + '</span> &nbsp;';
		} else {
			pageNavigator += '<a href="javascript:selectPage(' + i
					+ ')" title="' + i + '번째 페이지로" class="pageSeletor">' + i
					+ '</a> &nbsp;'
		}
	}
	pageNavigator += '<a href="javascript:nextPageGroup()">▶</a>';

	$(".pageNavi").html(pageNavigator);

}
s