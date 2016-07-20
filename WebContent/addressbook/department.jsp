<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ include file="/common/user_sidebar.jsp" %>
<!--css/script start-->
<!-- DataTables -->
	<link href="${root}/webjars/datatables/1.10.12/media/css/dataTables.bootstrap4.min.css" rel="stylesheet" />
	<link href="${root}/webjars/datatables/1.10.12/media/css/jquery.dataTables.min.css" rel="stylesheet" />
	<script src="${root}/webjars/datatables/1.10.12/media/js/dataTables.bootstrap.min.js"></script>
	<script src="${root}/webjars/datatables/1.10.12/media/js/jquery.dataTables.min.js"></script>
<!--css/script end-->	

<div id="wrapper">
<!-- Page Content -->
    <div id="page-wrapper">
       <div class="container-fluid">
       
       <!--page subject start-->
       <div class="row">
       		<div class="col-lg-12">
       			<h1 class="page-header" align="left">부서 주소록</h1>
     		</div>
       	</div>
       	<!--page subject end-->
       	<!--page content start-->
       	<div class="row">
	     	<div class="col-xs-12">
	     	<!-- a,b,... searchbar start -->
	     		<div class="panel panel-default">
		     		<div class="panel-body">
		     			<div class = "col-md-8">
								<a href="" class="btn btn-primary">주소추가 </a> 
								<a href="" class="btn btn-primary"> 그룹추가 </a> 
								<a href="" class="btn btn-primary"> 삭제 </a>
								<a href="" class="btn btn-primary"> 복사</a> 
								<a href="" class="btn btn-primary"> 주소록 가져오기 </a> 
								<a href="" class="btn btn-primary"> 주소록 내보내기 </a>
						</div>
					</div>
				</div>
<div class="panel panel-default">
 <div class="panel-body">
	
		
			<table id="dep_adb_t">
				<col width="3%"></col>
				<col width="21%"></col>
				<col width="24%"></col>
				<col width="12%"></col>
				<col width="15%"></col>
				<col width="15%"></col>
				<col width="10%"></col>
				<thead>
					<tr>
						<th>이름</th>
						<th>이메일</th>
						<th>휴대폰</th>
						<th>전화</th>
						<th>팩스</th>
					<tr>
				</thead>
				<tfoot></tfoot>
				<tbody>
					<tr>
						<td>이름1</td>
						<td>이메일1</td>
						<td>휴대폰1</td>
						<td>전화1</td>
						<td>팩스1</td>
					</tr>
				</tbody>
			</table>
		
	</div>
</div>
	       	</div>
       	</div>

       	<!--page content end-->
       </div>
        <!-- /.container -->
     </div>
     <!-- /#page-wrapper -->
<script>
   	 	$('#dep_adb_t')
		.removeClass( 'display' )
		.addClass('table table-striped table-bordered');
  	  $('#dep_adb_t').DataTable();
//   	 $("#example").DataTable().columnFilter();
  	 
</script>
</div>
<!-- /#wrapper -->
</body>
</html>