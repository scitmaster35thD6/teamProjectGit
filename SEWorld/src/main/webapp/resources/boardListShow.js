/**
 * Board Control Script
 */

$(document).ready(function() {
	var table = $('#alt_pagination').DataTable({
		pagingType : "full_numbers",
		responsive : true,
		processing : true,
		ordering : true,
		serverSide : true,
		searching : true,

		ajax : {
			"type" : "POST",
			"url" : "reviewsAjax",
			"dataType" : "JSON"
		},

		columns : [ {
			className : 'details-show',
			data : "title"
		}, {
			className : 'details-show',
			data : "memberId"
		}, {
			className : 'details-show',
			data : "createdDate"
		} ]
	});

	$('#alt_pagination').on('click', 'td.details-show', function() {
		var tr = $(this).closest('tr');
		var row = table.row(tr);

		location.href = 'readArticle?boardId=' + row.data().boardId;
	});
});