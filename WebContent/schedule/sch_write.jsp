<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/start.jsp" %>

<!-- css & script src start -->
	<!-- for table -->
	<style type="text/css">
		.tg  {border-collapse:collapse;border-spacing:0;}
		.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;}
		.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;}
		.tg .tg-uqo3{background-color:#efefef;text-align:center;vertical-align:top}
		.tg .tg-baqh{text-align:center;vertical-align:top}
		.tg .tg-gffc{font-size:100%;background-color:#efefef;text-align:center;vertical-align:top}
		.tg .tg-yw4l{vertical-align:top}
		@media screen and (max-width: 767px) {.tg {width: auto !important;}.tg col {width: auto !important;}.tg-wrap {overflow-x: auto;-webkit-overflow-scrolling: touch;}}
	</style>
	
<!-- datepicker css -->
<link href="${root}/datepicker/css/bootstrap-datepicker3.min.css" rel="stylesheet">
<!-- datepicker JavaScript -->
<script src="${root}/datepicker/js/bootstrap-datepicker.min.js"></script>
<script src="${root}/datepicker/locales/bootstrap-datepicker.kr.min.js"></script>

<!-- timepicker JavaScript -->
<script type="text/javascript" src="${root}/timepicker/js/bootstrap-timepicker.min.js"></script>
<!-- timepicker css -->
<link type="text/css" href="${root}/timepicker/css/bootstrap-timepicker.min.css" />
	
<!-- css & script src end -->

<!--script start -->
<!-- datepicker -->
<script>
<!-- for Datapicker -->
$(document).ready(function() {
	$('#datepicker').datepicker();
	
	$('.input-daterange input').each(function() {
	    $(this).datepicker("clearDates");
	});
	$('#datepicker').on("changeDate", function() {
	    $('#my_hidden_input').val(
	        $('#datepicker').datepicker('getFormattedDate')
	    );
	});
	
	$('#sandbox-container input').datepicker({
	    format: "yyyy/mm/dd",
	    todayBtn: "linked",
	    clearBtn: true,
	    language: "kr",
	    autoclose: true,
	    todayHighlight: true
	});
	
	$('#sandbox-container .input-group.date').datepicker({
	    format: "yyyy/mm/dd",
	    todayBtn: "linked",
	    clearBtn: true,
	    language: "kr",
	    autoclose: true,
	    todayHighlight: true
	});
	<!--timepicker-->
	$('#timepicker1').timepicker();
	
});
</script>
<!--script end   -->

<!----------------------------------------------------------->

   <!-- Page Content -->
    <div id="page-wrapper">
       <div class="container-fluid"">
       <!--page subject start-->
       <div class="row">
       		<div class="col-lg-12">
       			<h1 class="page-header" align="left">일정 등록</h1>
     		</div>
       	</div>
       	<!--page subject end-->
       <!--page content start-->
       	<div class="row">
	     	<div class="col-lg-12">
		     	<div class="panel panel-default">
			     		<div class="panel-body" style="margin:auto;">
				     		<!--bootstrap form start -->
				     		<div class="row">
				     	  		<div class="form-group">
					     	  		<div class="button-group"  align="right" style="margin:10px;">
						     	  			<button class="btn btn-primary" type="button" onclick="">일정저장</button>
						     	  			<button class="btn btn-danger" type="button" onclick="">되돌리기</button><br>
						     	  	</div>	
					     	  		<label> </label>
					     	  		<!-- form start -->
					     	  		<div class="tg-wrap" style="margin:10px;"><table class="tg" style="undefined;">
										<colgroup>
										<col style="width: 228px">
										<col style="width: 637px">
										</colgroup>
										  <tr>
										    <th class="tg-uqo3">일정 제목</th>
										    <th class="tg-baqh"><textarea class="form-control" rows="1"></textarea></th>
										  </tr>
										  <tr>
										    <td class="tg-uqo3">일정 내용</td>
										    <td class="tg-baqh"><textarea class="form-control" rows="3"></textarea></td>
										  </tr>
										  <tr>
										    <td class="tg-gffc">일정 날짜</td>
										    <td class="tg-yw4l">
										   		 <label>일일일정</label>
										    	<div class="input-group date">
  <input type="text" class="form-control"><span class="input-group-addon"><i class="glyphicon glyphicon-th"></i></span>
</div>
<br>
												<label>시간일정</label> 
												
												<input type="text" class="form-control">
												<div class="input-group bootstrap-timepicker timepicker">
            <input id="timepicker1" type="text" class="form-control input-small">
            <span class="input-group-addon"><i class="glyphicon glyphicon-time"></i></span></td>
										  </tr>
										  <tr>
										    <td class="tg-uqo3">일정 종류</td>
										    <td class="tg-baqh">
	                                            <select class="form-control">
	                                                <option>거래처 미팅</option>
	                                                <option>회의</option>
	                                                <option>약속</option>
	                                                <option>회식</option>
	                                                <option>휴가</option>
	                                                <option>기타</option>
	                                            </select>
										    </td>
										  </tr>
										  <tr>
										    <td class="tg-uqo3">우선 순위</td>
										    <td class="tg-baqh">
										    	<select class="form-control">
	                                                <option>낮음</option>
	                                                <option>중간</option>
	                                                <option>높음</option>
	                                            </select>
										    </td>
										  </tr>
										  <tr>
										    <td class="tg-uqo3">일정 공개</td>
										    <td class="tg-baqh">
										    	<select class="form-control">
	                                                <option>비공개</option>
	                                                <option>공개</option>
	                                            </select>
										    </td>
										  </tr>
										  <tr>
										    <td class="tg-uqo3">반복 설정</td>
										    <td class="tg-yw4l">
											    <label class="radio-inline">
	                                                <input type="radio" name="optionsRadiosInline" id="optionsRadiosInline1" value="option1" checked>사용안함
	                                            </label>
	                                            <label class="radio-inline">
	                                                <input type="radio" name="optionsRadiosInline" id="optionsRadiosInline2" value="option2">일
	                                            </label>
	                                            <label class="radio-inline">
	                                                <input type="radio" name="optionsRadiosInline" id="optionsRadiosInline3" value="option3">주
	                                            </label>
	                                            <label class="radio-inline">
	                                                <input type="radio" name="optionsRadiosInline" id="optionsRadiosInline4" value="option3">월
	                                            </label>
	                                            <label class="radio-inline">
	                                                <input type="radio" name="optionsRadiosInline" id="optionsRadiosInline5" value="option3">년
	                                            </label>
										    <br>반복 주기 : <input class="form-control" placeholder="1">번 
										    <br>반복 기간 : 
										    	<div class="input-group date">
  <input type="text" class="form-control"><span class="input-group-addon"><i class="glyphicon glyphicon-th"></i></span>
</div>

												</div>까지 (text parsing - datepicker)
										    </td>
										  </tr>
										</table></div>
										<!-- form end -->
								</div>
				     	  	</div>
			     		</div>
			     </div>
	     	</div>
	     </div>
       <!--page content end-->
       
       </div>
        <!-- /.container -->
     </div>
     <!-- /#page-wrapper -->

<%@ include file="/common/end.jsp" %>