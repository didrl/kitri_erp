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
       <div class="container">
       
       <h3>결재완료 </h3><br>
       <div class="panel-body">	
		<c:if test="${app_done_docBoxList.size()!=0}">
			<table id="approval_done"  cellspacing="0" width="100%">
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
				<c:forEach varStatus="i" var="app_done" items="${app_done_docBoxList}">
			         <tr>
			             <td>${app_done.doc_type_name}</td>
			             <td>${app_done.doc_id}</td>
			             <td>${app_done.doc_date}</td>
			             <td>
			             <a onclick='$.mvDocBoxtoviewDoc(${app_done.doc_type_id},"${app_done.doc_id}");'>${app_done.doc_subject}</a>
			             </td>
			             <td>${app_done.emp_name}</td>
			             <td>${app_done.doc_status_name}</td>
			          </tr>
				</c:forEach>
				<!-- get data end-->
				</tbody>
			</table>
		</c:if>

       
       </div>
        <!-- /.container -->
     </div>
     <!-- /#page-wrapper -->
</div>
<!-- /#wrapper -->     
     <script>
   	 	$('#approval_done')
		.removeClass( 'display' )
		.addClass('table table-striped table-bordered');
  	  $('#approval_done').DataTable();
//   	 $("#example").DataTable().columnFilter();
  	 
     </script>


</body>
</html>