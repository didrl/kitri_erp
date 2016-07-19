<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/common.jsp"%>
<script type="text/javascript">


function select(emp_id, emp_name, grade_name){
	var num=${cellnum};

	  opener.document.getElementById("approval_"+num).value =emp_id;
	  if(num<20)
	  	opener.document.getElementById("grade"+num).innerText = grade_name;
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
			<c:if test="${olist.size()!=0}">
				<c:forEach varStatus="i" var="org" items="${olist}">
					<c:if test="${dep_id != org.dep_id}">
				    	<div class="panel-group" id="accordion">
					    	<div class="panel panel-default">
					        	<div class="panel-heading">
					            	<h4 class="panel-title">
					                	<a data-toggle="collapse" data-parent="#accordion" href="#collapse${org.dep_id}">${org.dep_name} </a>
					                </h4>
					            </div>
					        	<div id="collapse${org.dep_id}" class="panel-collapse collapse in">
						        	<div class="panel-body">
										<ul>
					<c:set var="dep_id" value="${org.dep_id}"/>
				
					</c:if>
				<c:if test="${grade_id != org.grade_id}"> 
						            	<!-- 직급 -->
					                    <li>
					                    	<ul>
				<c:set var="grade_id" value="${org.grade_id}"/>
				</c:if>
					    <a href="javascript:select('${org.emp_id}','${org.emp_name}','${org.grade_name}');"><li>${org.grade_name} ${org.emp_name}</li></a>
				<c:if test="${i.index < olist.size() - 1 }">
					<c:if test="${grade_id != olist.get(i.index + 1).grade_id}">
					                        </ul>
					                    </li>
			   		</c:if>
			 
			   		<c:if test="${dep_id != olist.get(i.index + 1).dep_id}">
					                </ul>
					            </div>
	        	</div>
	    	</div>
    	</div>
   		</c:if>
   	</c:if>
</c:forEach>
	</div>
	</c:if>

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
