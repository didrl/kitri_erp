<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/common.jsp"%>
<script type="text/javascript">


function select(dep_id, dep_name){
	alert(dep_id);
	  opener.document.getElementById("approval_dep").value =dep_id;
	  opener.document.getElementById("ReceiveDepName").value =dep_name;
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
					               	<a href="javascript:select('${org.dep_id}','${org.dep_name}');">${org.dep_name} </a>
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
