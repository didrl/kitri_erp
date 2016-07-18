<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/common.jsp"%>
<script type="text/javascript">


function select(emp_id, emp_name){
	var num=${cellnum};

	  opener.document.getElementById("approval_"+num).value =emp_id;
	  opener.document.getElementById("emp_name"+num).value =emp_name;
	  self.close();
}
 </script>   

<div id="wrapper"> 
	<div id="page-wrapper">
	<div class="panel panel-default">
		<div class="panel-heading">
    		부서구조
	    </div>
	    <!-- .panel-heading -->
	    <div class="panel-body">
	  
			<c:set var="dep_id" value=""/>
			<c:set var="grade_id" value=""/>
			<c:if test="${oDeplist.size()!=0}">
				<c:forEach varStatus="i" var="org" items="${oDeplist}">
				    <div class="panel-group" id="accordion">
					   	<div class="panel panel-default">
					       	<div class="panel-heading">
					           	<h4 class="panel-title">
					               	<a data-toggle="collapse" data-parent="#accordion" href="#collapse${org.dep_id}">${org.dep_name} </a>
					               </h4>
					           </div>
					   	</div>
				    </div>
				</c:forEach>
			</c:if>
	</div>

<!-- .panel-body -->

</div>

</div>
<!-- /#page-wrapper -->
<center>
<input type="submit" value="선택">
<input type="reset" value="취소" onclick="javascript:self.close()">
</center>
</div>
<!-- /#wrapper -->
</body>
</html> 
