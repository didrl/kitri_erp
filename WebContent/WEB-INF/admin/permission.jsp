<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/common/adminnav.jsp" %>

<div id="page-wrapper">

	<br><h3><b>권한 코드 설정</b></h3>
	<br><br>
	
	<div class="row">
	
		<div class="col-md-6">
		
		<h4><b>권한 목록</b></h4>
		
		<table class="table table-bordered"> 
		<tbody>
			<tr>
				<td align="center" width="150"> 권한 코드 </td>
				<td align="center"> 권한 코드 상세 </td>
				<td align="center" width="120"></td> 
			</tr>
			<tr>
				<td align="center"> master-all </td>
				<td align="center"> 모든권한 </td>
				<td align="center">
					<button type="button" class="btn btn-primary btn-sm">수정</button>
					<button type="button" class="btn btn-danger btn-sm">삭제</button>
				</td>
			</tr>
			<tr>
				<td align="center"> master-erp </td>
				<td align="center"> system 관리자 </td>
				<td align="center">
					<button type="button" class="btn btn-primary btn-sm">수정</button>
					<button type="button" class="btn btn-danger btn-sm">삭제</button>
				</td>
			</tr>
			<tr>
				<td align="center"> master-hr </td>
				<td align="center"> 인사 관리자 </td>
				<td align="center">
					<button type="button" class="btn btn-primary btn-sm">수정</button>
					<button type="button" class="btn btn-danger btn-sm">삭제</button>
				</td>
			</tr>
			<tr>
				<td align="center"> general </td>
				<td align="center"> 일반 </td>
				<td align="center">
					<button type="button" class="btn btn-primary btn-sm">수정</button>
					<button type="button" class="btn btn-danger btn-sm">삭제</button>
				</td>
			</tr>
		</tbody>
		</table>
		
		</div>
		
		<div class="col-md-5">
		
			<h4><b>권한 추가</b></h4>
			
			<table class="table table-bordered"> 
			<tbody>
				<tr>
					<td align="center"> 권한 코드 </td>
					<td align="center"> 권한 코드 상세 </td> 
					<td align="center" width="65"></td>  
				</tr>
				<tr>
					<td align="center"><input class="form-control"></td>
					<td align="center"><input class="form-control"></td>
					<td align="center">
						<button type="button" class="btn btn-primary btn-sm">추가</button>
					</td>
				</tr> 
			</tbody>
			</table>
		</div>
		
	</div>
		
	
	
</div>

<%@ include file="/WEB-INF/common/end.jsp" %>