/**
 * Insert Comment Script
 */

$("#commentSave").on("click", function() {
	var memberId = $("#memberId").val();
	if (!memberId) {
		if (confirm("로그인이 필요한 기능입니다. 로그인 하시겠습니까?")) {
			location.href = "login";
		}
	} else {
		var boardId = $("#boardId").val();
		var commentContent = $("#comentContent").val();

		if (!commentContent) {
			alert("내용을 입력해 주세요");
		} else {

			var boardReply = {
				"boardId" : boardId,
				"memberId" : memberId,
				"content" : commentContent
			}

			$.ajax({
				method : 'post',
				url : 'insertArticleComment',
				data : JSON.stringify(boardReply),
				dataType : 'JSON',
				contentType : 'application/json; charset=UTF-8',
				success : function(response) {
					alert(JSON.stringify(response));
				},
				error : function() {

				}
			});
		}
	}
});