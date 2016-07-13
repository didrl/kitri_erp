<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ include file="/common/user_sidebar.jsp" %>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/1.10.12/js/dataTables.bootstrap.min.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.12/datatables.min.css"/>
	
<div id="wrapper">  
   <!-- Page Content -->
    <div id="page-wrapper">
       <div class="container">
       <h3>업무일지</h3><br>
       <table id="example"  cellspacing="0" width="100%">
       <thead>
            <tr>
                <th>업무일지</th>
                <th>업무일</th>
                <th>작성일</th>
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
       
       </div>
        <!-- /.container -->
     </div>
     <!-- /#page-wrapper -->
</div>
<!-- /#wrapper -->     
     
     <script>
   	 	$('#example')
		.removeClass( 'display' )
		.addClass('table table-striped table-bordered');
  	  $('#example').DataTable();
//   	 $("#example").DataTable().columnFilter();
  	 
     </script>

</body>
</html> 