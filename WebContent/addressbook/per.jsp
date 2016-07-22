<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ include file="/common/user_sidebar.jsp" %>
<!--css/script start-->
<!-- DataTables -->
	<script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
	<script src="https://cdn.datatables.net/buttons/1.2.1/js/dataTables.buttons.min.js"></script>
	<script src="https://cdn.datatables.net/buttons/1.2.1/js/buttons.flash.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.min.js"></script>
	<script src="https://cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/pdfmake.min.js"></script>
	<script src="https://cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/vfs_fonts.js"></script>
	<script src="https://cdn.datatables.net/buttons/1.2.1/js/buttons.html5.min.js"></script>
	<script src="https://cdn.datatables.net/buttons/1.2.1/js/buttons.print.min.js"></script>
	
	<script src="https://cdn.datatables.net/1.10.12/js/dataTables.bootstrap.min.js"></script>
	<script src="https://cdn.datatables.net/buttons/1.2.1/js/buttons.bootstrap.min.js"></script>
	<script src="https://cdn.datatables.net/buttons/1.2.1/js/buttons.colVis.min.js"></script>
	
	
	<link href="https://cdn.datatables.net/1.10.12/css/jquery.dataTables.min.css" rel="stylesheet" />
	<link href="https://cdn.datatables.net/buttons/1.2.1/css/buttons.dataTables.min.css" rel="stylesheet" />
	<link href="https://cdn.datatables.net/1.10.12/css/dataTables.bootstrap.min.css" rel="stylesheet" />
	
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
							    	<th class="select-filter">이름</th>
									<th class="select-filter">이메일</th>
									<th class="select-filter">휴대폰</th>
									<th class="select-filter">전화</th>
									<th class="select-filter">팩스</th>
						        </tr>
						     </thead>
						     <tfoot></tfoot>
						     <tbody>
						     <!-- get data start-->
						   <c:if test="${per_addrbookList.size()!=0}">
							<c:forEach var= "per_adb" items="${per_addrbookList}">
						         <tr>
						             <td>${per_adb.addr_name}</td>
						             <td>${per_adb.addr_email}</td>
						             <td>${per_adb.addr_tel}</td>
						             <td>${per_adb.addr_etel}</td>
						             <td>${per_adb.addr_fax}</td>
						          </tr>
						    </c:forEach>
						   </c:if>
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
     $(document).ready(function() {
   	 	$('#per_addrbook_t')
		.removeClass( 'display' )
		.addClass('table table-striped table-bordered');
  	  	
   	 var tables = $('#per_addrbook_t').DataTable({
		  	dom: 'Bfrtip',
		    buttons: [ 'copy','csv', 'excel', 'pdf']
			} 
	  	);
	} );	
     </script>
</div>
<!-- /#wrapper -->     
</body>
</html>