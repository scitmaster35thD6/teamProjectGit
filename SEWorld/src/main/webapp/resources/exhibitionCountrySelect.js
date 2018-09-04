/**
 * Data table update when selecter has changed
 */
$(document).ready(function() {

	$('#alt_pagination').DataTable({
		Paginate : true,
		responsive : true,
		processing : true,
		ordering : true,
		ServerSide : true,

		ajax : {
			"type" : "POST",
			"url" : "exhibitionListAjax",
			"dataType" : "JSON"
		},
		columns : [ {
			data : "exhibitionTitleEng"
		}, {
			data : "exhibitionTitleKor"
		}, {
			data : "openingCountry"
		}, {
			data : "openingCity"
		}, {
			data : "openingTerm"
		} ]

	});

	$("#checkall").click(function() {
		// 클릭
		if ($("#checkall").prop("checked")) {
			// input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
			$("input[name=chk]").prop("checked", true);
			// 클릭x
		} else {
			// input태그의 name이 chk인 태그들을 찾아서 checked옵션을 false로 정의
			$("input[name=chk]").prop("checked", false);
		}
	})

});