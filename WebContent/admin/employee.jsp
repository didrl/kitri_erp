<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/common/adminnav.jsp" %>

<div id="page-wrapper">

	<br><h3><b>사원 등록</b></h3>
	<br><br>
	
	<div class="row">
	
		<div class="col-md-8">
		
		<table class="table table-bordered">
			<tbody>
				<tr>
					<td width="150">아이디</td>
					<td><input class="form-control"></td>
					<td colspan="2">
						<button type="button" class="btn btn-primary btn-sm">중복검사</button>
					</td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input class="form-control"></td>
					<td width="200">비밀번호 확인</td>
					<td><input class="form-control"></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input class="form-control"></td>
					<td colspan="3"></td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td><input class="form-control"></td>
					<td>이메일</td>
					<td><input class="form-control"></td>
				</tr>
				<tr>
					<td>주소</td>
					<td colspan="3"><input class="form-control"></td>
				</tr>
				<tr>
					<td>상세주소</td>
					<td colspan="3"><input class="form-control"></td>
				</tr>
				<tr>
					<td>부서</td>
					<td>
					<select class="form-control">
                        <option>경영지원실</option>
                        <option>전략기획팀</option>
                        <option>개발1팀</option>
                        <option>개발2팀</option>
                        <option>임원</option>
                        <option>대표이사</option>
                	</select>
					</td>
					<td>직급</td>
					<td>
					<select class="form-control">
                        <option>대표</option>
                        <option>팀장</option>
                        <option>사원</option>
                	</select>
					</td>
				</tr>
			</tbody>
		</table>
		<p align="center">
					<button type="button" class="btn btn-primary">등록</button>
					<button type="button" class="btn btn-danger">취소</button>
		</p>
		</div>
	</div>

</div>

<%@ include file="/common/end.jsp" %>