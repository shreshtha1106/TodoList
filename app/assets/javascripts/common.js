$( document ).ready(function() {
    // setTimeout(function(){$(".notice").hide();}, 1000);
	$("#btn_week_day1").click(function(){
		var date = $(this).attr("date");
		window.location="/get_task?date="+date;

	});
	$("#btn_week_day2").click(function(){
		var date = $(this).attr("date");
		window.location="/get_task?date="+date;

	});
	$("#btn_week_day3").click(function(){
		var date= $(this).attr("date");
		window.location="/get_task?date="+date;
	})
	$("#btn_week_day4").click(function(){
		var date= $(this).attr("date");
		window.location="/get_task?date="+date;
	})
	$("#btn_week_day5").click(function(){
		var date= $(this).attr("date");
		window.location="/get_task?date="+date;
	})
	$("#btn_week_day6").click(function(){
		var date= $(this).attr("date");
		window.location="/get_task?date="+date;
	})
	$("#btn_week_day7").click(function(){
		var date= $(this).attr("date");
		window.location="/get_task?date="+date;
	})
});
