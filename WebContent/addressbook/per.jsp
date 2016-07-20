<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ include file="/common/user_sidebar.jsp" %>
<!--css/script start-->
<!-- DataTables -->
	<link href="${root}/webjars/datatables/1.10.12/media/css/dataTables.bootstrap4.min.css" rel="stylesheet" />
	<link href="${root}/webjars/datatables/1.10.12/media/css/jquery.dataTables.min.css" rel="stylesheet" />
	<script src="${root}/webjars/datatables/1.10.12/media/js/dataTables.bootstrap.min.js"></script>
	<script src="${root}/webjars/datatables/1.10.12/media/js/jquery.dataTables.min.js"></script>
<!--css/script end-->	
<script src="${root}/js/doc-js.js"></script>
				
<div id="wrapper"> 
   <!-- Page Content -->
    <div id="page-wrapper">
       <div class="container-fluid">
       
       <!--page subject start-->
       <div class="row">
       		<div class="col-lg-12">
       			<h1 class="page-header" align="left">개인주소록</h1>
     		</div>
       	</div>
       	<!--page subject end-->
       	<!--page content start-->
       	<div class="row">
       	<!-- button bar start -->
	       	<div class="col-xs-12">
			       <div class="panel panel-default">
				       <div class="panel-body">	
				       	<a href="" class="btn btn-primary">주소추가 </a> 
						<a href="" class="btn btn-primary"> 주소록 가져오기 </a> 
						<a href="" class="btn btn-primary"> 주소록 내보내기 </a>
						</div>
					</div>
			</div>
       	<!-- button bar end -->
       	
	     	<div class="col-xs-12">
		       <div class="panel panel-default">
			       <div class="panel-body">	
						<table id="per_addrbook_t">
						 	<thead>
						    	<tr>
							    	<th>이름</th>
									<th>이메일</th>
									<th>휴대폰</th>
									<th>전화</th>
									<th>팩스</th>
						        </tr>
						     </thead>
						     <tfoot></tfoot>
						     <tbody>
						     <!-- get data start-->
						         <tr>
						             <td>이름1</td>
						             <td>이메일1</td>
						             <td>휴대폰1</td>
						             <td>전화1</td>
						             <td>팩스1</td>
						          </tr>
							<!-- get data end-->
							</tbody>
						</table>
					</div>
				</div>
			</div>
       </div>
        <!--page content END-->
     </div>
       <!-- /.container -->
</div>
<!-- /#page-wrapper -->

     <script>
   	 	$('#per_addrbook_t')
		.removeClass( 'display' )
		.addClass('table table-striped table-bordered');
  	  $('#per_addrbook_t').DataTable();
//   	 $("#example").DataTable().columnFilter();
  	 
     </script>
</div>
<!-- /#wrapper -->     
</body>
</html>