<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/common/adminnav.jsp" %>

<div id="page-wrapper">

	<br><b>부서/직급 설정</b><br><br>
	
	<div class="row">
		<div class="col-md-4">
			<table class="table">
			<tbody>
				<tr>
					<td colspan="3" align="left">
						<button type="button" class="btn btn-default">부서설정</button>
						<button type="button" class="btn btn-default">직급설정</button>
					</td>
				</tr>
				<tr>
					<td align="left" width="85"> 
						<button type="button" class="btn btn-default btn-xs">새로고침</button>
					</td>
					<td></td>
					<td align="right" width="20">
						<button type="button" class="btn btn-default btn-xs">부서등록</button>
					</td>
				</tr>
				<tr>
					<td colspan="3">
					</td>
				</tr>
			</tbody>
			</table>
		</div>
		<div class="col-md-8">
			<table class="table table-striped table-bordered">
			<tbody>
				<tr>
					<td>
						부서를 선택하세요
					</td>
				</tr>
				<tr>
					<td>
					<ul class="nav nav-tabs">
					  <li role="presentation"><a href="#">부서설정</a></li>
					  <li role="presentation"><a href="#">직급설정</a></li>
					</ul>
					</td>
				</tr>
				<tr>
					<td>
						<button>부서등록</button>
					</td>
				</tr>
			</tbody>
			</table>
		</div>
	</div>

</div>

<%@ include file="/common/end.jsp" %>