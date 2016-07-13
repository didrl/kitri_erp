<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/common/common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="col-lg-5">
		<table class="table">
			<tbody>

				<tr>
					<td colspan="3">

						<div class="panel panel-default">
							<div class="panel-heading">부서구조</div>
							<c:forEach varStatus="i" var="emp" items="${olist}">
								<!-- .panel-heading -->
								<div class="panel-body">
									<div class="panel-group" id="accordion">
										<div class="panel panel-default">
											<c:if test="${emp.dep_id != dep_id}">
												<c:set var="dep_id" value="${emp.dep_id}" />
												<div class="panel-heading">
													<h4 class="panel-title">
														<a data-toggle="collapse" data-parent="#accordion"
															href="#collapse1">${emp.dep_name}</a>
													</h4>
												</div>
												
											</c:if>
											<div id="collapse1" class="panel-collapse collapse in">
													<div class="panel-body">
											<ul>
												<!-- 직급 -->
												<li>${emp.grade_name}
													<ul>
														<li>${emp.emp_name}</li>
													</ul>
												</li>
											</ul>

											<c:if test="${i.index < olist.size() - 1 }">
												<c:if test="${olist.get(i.index + 1).dep_id != dep_id }">
										</div>
										</div>
										</c:if>
										</c:if>
									
								
								</div>
						</div>
						</div>  <!-- .panel-body -->
							</c:forEach>
						</div>

					</td>
				</tr>
			</tbody>
		</table>
	</div>

</body>
</html>