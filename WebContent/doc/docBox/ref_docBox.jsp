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
       <div class="container">
       
       <h3>협조문서 미결재</h3><br>
       <div class="panel-body">	
    
			<table id="ref_docBox_t"  cellspacing="0" width="100%">
			 	<thead>
			    	<tr>
			    	<th>문서종류</th>
			    	<th>문서번호</th>
                <th>기안일자</th>
                <th>문서명</th>
                <th>기안자</th>
                <th>진행상태</th>
			        </tr>
			     </thead>
			     <tfoot></tfoot>
			     <tbody>
			     <!-- get data start-->
			    <c:if test="${ref_docBoxList.size()!=0}">
				<c:forEach varStatus="i" var="ref_docBox" items="${ref_docBoxList}">
			         <tr>
			             <td>${ref_docBox.doc_type_name}</td>
			             <td>${ref_docBox.doc_id}</td>
			             <td>${ref_docBox.doc_date}</td>
			             <td>${ref_docBox.doc_subject}</td>
			             <td>${ref_docBox.emp_name}</td>
			             <td>${ref_docBox.doc_status_name}</td>
			          </tr>
				</c:forEach>
				</c:if>
				<!-- get data end-->
				</tbody>
				</table>
		</div>
       </div>
        <!-- /.container -->
     </div>
     <!-- /#page-wrapper -->
</div>
<!-- /#wrapper -->     
     <script>
   	 	$('#ref_docBox_t')
		.removeClass( 'display' )
		.addClass('table table-striped table-bordered');
  	  $('#ref_docBox_t').DataTable();
//   	 $("#example").DataTable().columnFilter();
  	 
     </script>


</body>
</html>