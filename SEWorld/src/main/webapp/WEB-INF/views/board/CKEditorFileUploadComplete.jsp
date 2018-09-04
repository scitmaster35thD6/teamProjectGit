<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript" src="resources/ckeditor/ckeditor.js"></script>

<script type="text/javascript">
	window.parent.CKEDITOR.tools.callFunction('${CKEditorFuncNum}',
			'${filePath}', '업로드완료');
</script>