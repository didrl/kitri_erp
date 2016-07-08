<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/common/adminnav.jsp" %>

<div id="page-wrapper">

	<br><h3><b>일정관리</b></h3>
	<br><br>
	
	<div class="row">
		<div class="col-md-12">
		
		
<!-- for fullcalendar -->
<link href='${util}/fullcalendar/css/fullcalendar.css' rel='stylesheet'/>
<link href="${util}/fullcalendar/css/fullcalendar.print.css" rel="stylesheet" media="print" />
<script src="${util}/fullcalendar/js/moment.min.js"></script>
<script src="${util}/fullcalendar/js/fullcalendar.min.js"></script>
<script src='${util}/fullcalendar/js/jquery-ui.custom.min.js'></script>
<script src='${util}/fullcalendar/js/lang-all.js'></script>

<!------------------->

<style type='text/css'>

	body {
		margin: 40px 10px;
		padding: 0;
		font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
		font-size: 14px;
	}

	#calendar {
		max-width: 900px;
		margin: 0 auto;
	}
</style>

<!----------------------------------------------------------->
<!-- fullCalendar script start -->
<script type='text/javascript'>

	$(document).ready(function() {

		$('#calendar').fullCalendar({
			header: {
				left: 'prev,next today',
				center: 'title',
				right: 'month,basicWeek,basicDay'
			},
			lang:'ko',
			defaultDate: '2016-07-07',
			editable: true,
			eventLimit: true, // allow "more" link when too many events
			events: [
				{
					title: 'All Day Event',
					start: '2016-07-01'
				},
				{
					title: 'Long Event',
					start: '2016-07-07',
					end: '2016-07-10'
				},
				{
					id: 999,
					title: 'Repeating Event',
					start: '2016-07-09T16:00:00'
				},
				{
					id: 999,
					title: 'Repeating Event',
					start: '2016-07-16T16:00:00'
				},
				{
					title: 'Conference',
					start: '2016-07-11',
					end: '2016-07-13'
				},
				{
					title: 'Meeting',
					start: '2016-07-12T10:30:00',
					end: '2016-07-12T12:30:00'
				},
				{
					title: 'Lunch',
					start: '2016-07-12T12:00:00'
				},
				{
					title: 'Meeting',
					start: '2016-07-12T14:30:00'
				},
				{
					title: 'Happy Hour',
					start: '2016-07-12T17:30:00'
				},
				{
					title: 'Dinner',
					start: '2016-07-12T20:00:00'
				},
				{
					title: 'Birthday Party',
					start: '2016-07-13T07:00:00'
				},
				{
					title: 'Click for Google',
					url: 'http://google.com/',
					start: '2016-07-28'
				}
			]
		});
		
	});

</script>
<!-- fullCalendar script end -->
<!----------------------------------------------------------->

       	<!--page subject end-->
       	<!--page content start-->
       	<table>
		<tr>
			<td>
				<button class="btn btn-primary" type="button" onclick="">빠른 일정 추가</button>
				<button class="btn btn-primary" type="button" onclick="">일정 추가</button>
				<button class="btn btn-primary" type="button" onclick="">인쇄</button>
			</td>
		</tr>
		</table>
		<br>
       	<div class="row">
	     	<div class="col-xs-12">
			
		     	 <!-- calendar start-->
		     	  <div class="panel panel-default">
	     				<div class="panel-body">
				     	  * 캘린더 일정내용 클릭시, 상세 일정내용 팝업 출력
								<div id='calendar'></div>
						</div>
					</div>
					<!--calendar end-->
					
	       		</div>
	       	</div>	
		
		
		
		</div>
	</div>

</div>

<%@ include file="/common/end.jsp" %>