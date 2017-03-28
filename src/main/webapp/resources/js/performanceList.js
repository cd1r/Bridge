$(document).ready(function() {
	$(".descBtn").click(function(){
		var perfId = $(this).attr('id').split('_')[1];
		location.href = "/performance?perfId=" + perfId;
	});
});
