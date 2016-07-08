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
		@media screen and (max-width: 767px) {.tg {width: auto !important;}.tg col {width: auto !important;}.tg-wrap {overflow-x: auto;-webkit-overflow-scrolling: touch;}}
	</style>
<!-- css & script src end -->

<!--script start -->
<!--script end   -->

<!----------------------------------------------------------->

   <!-- Page Content -->
    <div id="page-wrapper">
       <div class="container-fluid"">
       <!--page subject start-->
       <div class="row">
       		<div class="col-lg-12">
       			<h1 class="page-header" align="left">근태조정 신청</h1>
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
						     	  			<button class="btn btn-primary" type="button" onclick="">수정요청</button>
						     	  			<button class="btn btn-danger" type="button" onclick="">출퇴근 취소하기</button><br>
						     	  	</div>	
					     	  		<label> </label>
					     	  		<!-- 일반출근용 신청폼 -->
					     	  		<!-- table_office start -->
					     	  		<div class="tg-wrap"><table class="tg" style="undefined; margin:10px;"">
										<colgroup>
										<col style="width: 228px">
										<col style="width: 637px">
										</colgroup>
										  <tr>
										    <th class="tg-gffc">신청 날짜</th>
										    <th class="tg-baqh">2016년 07월 07일 (목요일)</th>
										  </tr>
										  <tr>
										    <td class="tg-uqo3">현재 상태</td>
										    <td class="tg-baqh">정상퇴근 (2016/07/01/금)</td>
										  </tr>
										  <tr>
										    <td class="tg-uqo3">사      유</td>
										    <td class="tg-baqh"><textarea class="form-control" rows="7"></textarea></td>
										  </tr>
										</table></div>
									</div>
									<!-- table_office end -->
									<br> *클릭한 일정에 따라 둘 중 하나만 출력
									<!-- 외근상황 근태조정용 신청폼 //후이즈 숨겨진 코드 참고함 -->
									<!-- table_btrip start -->
									<div class="form-group" style="margin:10px;">	
									<div class="tg-wrap"><table class="tg" style="undefined;">
										<colgroup>
										<col style="width: 228px">
										<col style="width: 637px">
										</colgroup>
										  <tr>
										    <th class="tg-uqo3">출근구분</th>
										    <th class="tg-baqh">외근퇴근</th>
										  </tr>
										  <tr>
										    <td class="tg-uqo3">이름(소속)</td>
										    <td class="tg-baqh">유종환(개발1팀) //대리 신청 가능?</td>
										  </tr>
										  <tr>
										    <td class="tg-gffc">출근시간</td>
										    <td class="tg-baqh">2016-07-01 11:05:29</td>
										  </tr>
										  <tr>
										    <td class="tg-uqo3">외  근  지</td>
										    <td class="tg-baqh"><br><textarea class="form-control" rows="1"></textarea></td>
										  </tr>
										  <tr>
										    <td class="tg-uqo3">내       용</td>
										    <td class="tg-baqh"><textarea class="form-control" rows="7"></textarea></td>
										  </tr>
										</table></div>
					     	  		</div>
					     	  	<!-- table_btrip end -->
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