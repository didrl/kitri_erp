<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/common/common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<div id="organization" class="col-lg-5">
		<table class="table" border="1">
			<tbody>

				<tr>
					<td colspan="3">

						<div class="panel panel-default">
							<div class="panel-heading">부서구조</div>

							<!-- .panel-heading -->
							<div class="panel-body">
								<c:forEach varStatus="i" var="emp" items="${olist}">
										<c:if test="${emp.dep_id != dep_id}">
								<div class="panel-group" id="accordion">
											<div class="panel panel-default">

												<c:set var="dep_id" value="" />
												<div class="panel-heading">
													<h4 class="panel-title">
														<a data-toggle="collapse${i.index}" data-parent="#accordion"
															href="#collapse">${emp.dep_name},${emp.dep_id}</a>
													</h4>
												</div>
										</c:if>

										<div id="collapse${i.index}" class="panel-collapse collapse in">
											<div class="panel-body">
												<ul>
													<!-- 직급 -->
													<li>${emp.grade_name}
														<ul>
															<li>${emp.emp_name}</li>
														</ul>
													</li>
												</ul>
											</div>
										</div>
										<c:if test="${i.index < olist.size() - 1 }">
											<c:if test="${olist.get(i.index + 1).dep_id != dep_id }">
							   	</div>
											</c:if>
										</c:if>
								</c:forEach>
								</div>
						</div>
						
						

				

			
					</td>
				</tr>
			</tbody>
		</table>
		 <p><a href="#inlineContent" class="example5closeDOMWindow">Close DOM Window</a></p>
	<input type="button" id="closeDWindow" value="닫기"  onclick="javascript:domclose();">
	</div>
<script type="text/javascript" src="${root}/js/jquery.DOMWindow.js"></script>

<script type="text/javascript">
function domclose(){
	console.log("ㅇㅁㄴㄹㄴㅇㄹ");
	window.opener.window.close();
	$('.example5closeDOMWindow').closeDOMWindow({eventType:'click'}); 
}
</script>
</body>
</html>