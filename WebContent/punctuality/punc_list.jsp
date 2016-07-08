<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/start.jsp" %>

<!-- css & script src start -->
<script type="text/javascript" src="https://cdn.datatables.net/1.10.12/js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.12/datatables.min.css"/>

<!-- datepicker css -->
<link href="${root}/datepicker/css/bootstrap-datepicker3.min.css" rel="stylesheet">
<!-- datepicker JavaScript -->
<script src="${root}/datepicker/js/bootstrap-datepicker.min.js"></script>
<script src="${root}/datepicker/locales/bootstrap-datepicker.kr.min.js"></script>
<!-- css & script src end -->

<!--script start -->
<!-- for DataTable -->
<script>
$(document).ready(function() {
	  $('#punc_list').DataTable({});
	  $('#punc_list')
		.removeClass( 'display' )
		.addClass('table table-striped table-bordered');
//		 $("#punc_list").DataTable().columnFilter();
     
  

<!-- for Datapicker -->
	$('#datepicker').datepicker();
	$('#datepicker').on("changeDate", function() {
	    $('#my_hidden_input').val(
	        $('#datepicker').datepicker('getFormattedDate')
	    );
	});

	$('.input-daterange input').each(function() {
	    $(this).datepicker("clearDates");
	});


	$('#sandbox-container .input-daterange').datepicker({
		format: "yyyy/mm/dd",
		todayBtn: "linked",
	    clearBtn: true,
	    language: "kr",
	    todayHighlight: true,
	    toggleActive: true,
	    defaultViewDate: { year: 2016, month: 07, day: 07 }
	});
	
}); 
</script>
<!-- for Timepicker -->

<!--script end   -->

<!----------------------------------------------------------->

   <!-- Page Content -->
    <div id="page-wrapper">
       <div class="container-fluid">
       <!--page subject start-->
       <div class="row">
       		<div class="col-lg-12">
       			<h1 class="page-header" align="left">근퇴내역 조정요청</h1>
     		</div>
       	</div>
       	<!--page subject end-->
       <!--page content start-->
       	<div class="row">
	     	<div class="col-lg-12">
		     	<div class="panel panel-default">
			     		<div class="panel-body">
			     		<!-- search using datepicker start -->
			     		<div class="form-group">
				     		<div class="input-daterange input-group" id="datepicker">
							    <input type="text" class="input-sm form-control" name="start" />
							    <span class="input-group-addon">to</span>
							    <input type="text" class="input-sm form-control" name="end" />
							</div>
							<button class="btn btn-primary" type="button" onclick="">검색</button>
			     		</div>
			     		<!-- search using datepicker end -->
			     		<!-- table start -->
				     		<table id="punc_list"  cellspacing="0" width="100%">
					        <thead>
					            <tr>
					                <th>작성일</th>
					                <th>내용</th>
					                <th>진행상태</th>
					            </tr>
					        </thead>
					        <tfoot>
					        </tfoot>
					        <tbody>
					        <label>
					            <tr>
					                <td>Tiger Nixon</td>
					                <td>System Architect</td>
					                <td>Edinburgh</td>
					            </tr>
					            <tr>
					                <td>Garrett Winters</td>
					                <td>Accountant</td>
					                <td>Tokyo</td>
					            </tr>
					            <tr>
					                <td>Ashton Cox</td>
					                <td>Junior Technical Author</td>
					                <td>San Francisco</td>
					            </tr>
					         </tbody>
					    </table>    
					    <!-- table end --> 	
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