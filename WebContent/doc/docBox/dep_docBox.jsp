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
       
       <h3>부서 문서함</h3><br>
       <div class="panel-body">	
		<c:if test="${dep_docBoxList.size()!=0}">
			<table id="dep_docbox"  cellspacing="0" width="100%">
			 	<thead>
			    	<tr>
			    		<th>문서종류(doc_type_name)</th>
			           <th>문서번호(depBox.doc_id)</th>
			           <th>기안일자(doc_date)</th>
			           <th>문서명(doc_subject)</th>
			           <th>발신부서(doc_dep_id)</th>
			           <th>기안자(emp_name)</th>
			           <th>진행상태(doc_status_name)</th>
			        </tr>
			     </thead>
			     <tfoot></tfoot>
			     <tbody>
			     <!-- get data start-->
				<c:forEach varStatus="i" var="depBox" items="${dep_docBoxList}">
			         <tr>
			             <td>${depBox.doc_id}</td>
			             <td>${depBox.doc_type_name}</td>
			             <td>${depBox.doc_date}</td>
			             <td>${depBox.doc_subject}</td>
			             <td>${depBox.dep_name}</td>
			             <td>${depBox.emp_name}</td>
			             <td>${depBox.doc_status_name}</td>
			             
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
   	 	$('#dep_docbox')
		.removeClass( 'display' )
		.addClass('table table-striped table-bordered');
  	  $('#dep_docbox').DataTable();
//   	 $("#example").DataTable().columnFilter();
  	 
     </script>

</body>
</html>