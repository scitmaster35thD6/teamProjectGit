/**
 * Data table update when selecter has changed
 */
window.onload = function() {
	
	$("#border-with-select2").on(
			'select2:select',
			function() {
				location.replace('exhibitionList?selectedCountry='
						+ $("#border-with-select2").find(':selected').val());
			});
	
	
	
	    $("#checkall").click(function(){
	        //클릭
	        if($("#checkall").prop("checked")){
	            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
	            $("input[name=chk]").prop("checked",true);
	            //클릭x
	        }else{
	            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 false로 정의
	            $("input[name=chk]").prop("checked",false);
	        }
	    })
	


}