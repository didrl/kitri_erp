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
       <h3>부서 수신함</h3><br>
       <table id="dep_docbox_temp"  cellspacing="0" width="100%">
        <thead>
            <tr>
                <th>문서번호</th>
                <th>기안일자</th>
                <th>문서명</th>
                <th>발신부서</th>
                <th>기안자</th>
            </tr>
        </thead>
        <tfoot>
        </tfoot>
        <tbody>
        <label>
            <tr>
                <td>Tiger Nixon</td>
                <td>System Architect</td>
                <td>61</td>
                <td>2011/04/25</td>
                <td>$320,800</td>
            </tr>
            <tr>
                <td>Garrett Winters</td>
                <td>Accountant</td>
                <td>63</td>
                <td>2011/07/25</td>
                <td>$170,750</td>
            </tr>
            <tr>
                <td>Ashton Cox</td>
                <td>Junior Technical Author</td>
                <td>66</td>
                <td>2009/01/12</td>
                <td>$86,000</td>
            </tr>
         </tbody>
    </table>
    
<!-- textList start -->    
    <div class="panel-body">	
		<c:if test="${dep_docBoxList.size()!=0}">
			<table id="dep_docbox"  cellspacing="0" width="100%">
			 	<thead>
			    	<tr>
			           <th>문서번호(depBox.doc_id)</th>
			           <th>기안일자(doc_date)</th>
			           <th>문서명(doc_subject)</th>
			           <th>발신부서(doc_dep_id)</th>
			           <th>기안자(emp_name)</th>
			        </tr>
			     </thead>
			     <tfoot></tfoot>
			     <tbody>
			     <!-- get data start-->
				<c:forEach varStatus="i" var="depBox" items="${dep_docBoxList}">
			         <tr>
			             <td>${depBox.doc_id}</td>
			             <td>${depBox.doc_date}</td>
			             <td>${depBox.doc_subject}</td>
			             <td>${depBox.doc_dep_id}</td>
			             <td>${depBox.doc_id}</td>
			          </tr>
				</c:forEach>
				<!-- get data end-->
				</tbody>
			</table>
		</c:if>
	</div>
<!-- textList end -->
    
       
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