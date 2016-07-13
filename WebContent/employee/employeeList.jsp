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
       <h3>상신문서</h3><br>
       <table id="example"  cellspacing="0" width="100%">
       <thead>
            <tr>
                <th>이름</th>
                <th>부서</th>
                <th>E-mail</th>
                <th>직급</th>
                <th>전화번호</th>
                <th>입사일</th>
                <th>재상신/상신취소</th>
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
                <td>61</td>
                <td>2011/04/25</td>
                <td>$320,800</td>
                <td>61</td>
             
            </tr>
            <tr>
                <td>Garrett Winters</td>
                <td>Accountant</td>
                <td>Tokyo</td>
                <td>63</td>
                <td>2011/07/25</td>
                <td>$170,750</td>
                <td>63</td>
            
            </tr>
            <tr>
                <td>Ashton Cox</td>
                <td>Junior Technical Author</td>
                <td>San Francisco</td>
                <td>66</td>
                <td>2009/01/12</td>
                <td>$86,000</td>
                <td>66</td>
                
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
//       $("#example").DataTable().columnFilter();
      
     </script>

</body>
</html> 