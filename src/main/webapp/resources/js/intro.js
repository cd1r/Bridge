$(document).ready(function() {
	$(".mainPerfsImg").click(function(){
		location.href = "/performance?perfId=" + $(this).attr('id');
	});
});

function callMainPerformance(){
	$.ajax({
		type: "get",
		url: "/home/mainPerList",
		//data: {roomId : $("#room-id").val()},
		datatype: "text",
		success: function(data){
			$("#perf_list_ul").append("<li>" + data + "</li>")
		}
	});
}