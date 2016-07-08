<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/common/adminnav.jsp" %>

<div id="page-wrapper">

	<br><h3><b>출퇴근 코드 설정</b></h3>
	<br><br>
	
	<div class="row">
	
		<div class="col-md-6">
		
		<h4><b>출퇴근 코드 설정</b></h4>
		
		<table class="table table-bordered"> 
		<tbody>
			<tr>
				<td align="center"> 출퇴근 코드 </td>
				<td align="center" width="120"></td> 
			</tr>
			<tr>
				<td align="center"> 지각 </td>
				<td align="center">
					<button type="button" class="btn btn-primary btn-sm">수정</button>
					<button type="button" class="btn btn-danger btn-sm">삭제</button>
				</td>
			</tr>
			<tr>
				<td align="center"> 반차(오전) </td>
				<td align="center">
					<button type="button" class="btn btn-primary btn-sm">수정</button>
					<button type="button" class="btn btn-danger btn-sm">삭제</button>
				</td>
			</tr>
			<tr>
				<td align="center"> 반차(오후) </td>
				<td align="center">
					<button type="button" class="btn btn-primary btn-sm">수정</button>
					<button type="button" class="btn btn-danger btn-sm">삭제</button>
				</td>
			</tr>
			<tr>
				<td align="center"> 특근 </td>
				<td align="center">
					<button type="button" class="btn btn-primary btn-sm">수정</button>
					<button type="button" class="btn btn-danger btn-sm">삭제</button>
				</td>
			</tr>
			<tr>
				<td align="center"> 야근 </td>
				<td align="center">
					<button type="button" class="btn btn-primary btn-sm">수정</button>
					<button type="button" class="btn btn-danger btn-sm">삭제</button>
				</td>
			</tr>
			<tr>
				<td align="center"> 결근 </td>
				<td align="center">
					<button type="button" class="btn btn-primary btn-sm">수정</button>
					<button type="button" class="btn btn-danger btn-sm">삭제</button>
				</td>
			</tr>
			<tr>
				<td align="center"> 외근 </td>
				<td align="center">
					<button type="button" class="btn btn-primary btn-sm">수정</button>
					<button type="button" class="btn btn-danger btn-sm">삭제</button>
				</td>
			</tr>
			<tr>
				<td align="center"> 휴가 </td>
				<td align="center">
					<button type="button" class="btn btn-primary btn-sm">수정</button>
					<button type="button" class="btn btn-danger btn-sm">삭제</button>
				</td>
			</tr>
		</tbody>
		</table>
		
		</div>
		
		<div class="col-md-6">
		
			<h4><b>출퇴근 코드 추가</b></h4>
			
			<table class="table table-bordered"> 
			<tbody>
				<tr>
					<td align="center"> 출퇴근 코드 </td>
					<td align="center" width="65"></td>  
				</tr>
				<tr>
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

<%@ include file="/common/end.jsp" %>