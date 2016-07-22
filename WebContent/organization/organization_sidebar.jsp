<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/common.jsp"%>
<%@ include file="/common/user_sidebar.jsp"%>
<%
String root = request.getContextPath();
%>
<script type="text/javascript">
	function sel_emp(emp_name,grade_name,emp_id,email1,email2,tel,depname,image) {
		location.href  = "<%=root%>/organization/organization_employee.jsp?empname="+emp_name+"&gradename="+grade_name+"&empid="+emp_id+"&email1="+email1+"&email2="+email2+"&tel="+tel+"&depname="+depname+"&image="+image;
	}

</script>
<div id="page-wrapper">

	<div class="row">
<div class="col-lg-5">
	<table class="table">
		<tbody>

			<tr>
				<td colspan="3">

					<div class="panel panel-default">
						<div class="panel-heading">부서구조</div>
						<!-- .panel-heading -->
						<div class="panel-body">

							<c:set var="dep_id" value="" />
							<c:set var="grade_id" value="" />
							<c:if test="${olist.size()!=0}">
								<c:forEach varStatus="i" var="org" items="${olist}">
									<c:if test="${dep_id != org.dep_id}">
										<div class="panel-group" id="accordion">
											<div class="panel panel-default">
						
												<div class="panel-heading">
													<h4 class="panel-title">
														<a data-toggle="collapse" data-parent="#accordion"
															href="#collapse${org.dep_id}">${org.dep_name} </a>
													</h4>
												</div>
												<div id="collapse${org.dep_id}"
													class="panel-collapse collapse in">
													<div class="panel-body">
														<ul>
															<c:set var="dep_id" value="${org.dep_id}" />
									</c:if>
									<c:if test="${grade_id != org.grade_id}">
										<!-- 직급 -->
										<li>
											<ul>
												<c:set var="grade_id" value="${org.grade_id}" />
									</c:if>
									<a href="javascript:sel_emp('${org.emp_name}','${org.grade_name}','${org.emp_id}','${org.emp_email1}','${org.emp_email2}','${org.emp_tel}','${org.dep_name}','${org.profile_image}');"><li>${org.grade_name}
											${org.emp_name}</li></a>
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

				</td>
			</tr>
		</tbody>
	</table>
</div>