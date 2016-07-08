<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/common/adminnav.jsp" %>

<div id="page-wrapper">

	<br><h3><b>프로젝트</b></h3>
	<br><br>
	
	<div class="row">
	
		<div class="col-md-12">
		
		<table class="table table-bordered">
		<tbody>
			<tr>
				<td colspan="2">
					<select class="form-control">
	                	<option>구분</option>	                	
	                	<option>전체프로젝트</option>	                	
	                    <option>개인프로젝트</option>
	                    <option>팀프로젝트</option>
                	</select>
				</td>
				<td colspan="5" align="right">
					<button type="button" class="btn btn-primary btn-sm">등록</button>
				</td>
			</tr>
			<tr>
				<td width="50" align="center"></td>
				<td width="100" align="center">등록일</td>
				<td width="200" align="center">구분</td>
				<td align="center">프로젝트명</td>
				<td width="150" align="center">등록자</td>
				<td width="200" align="center">기간</td>
				<td width="150" align="center">전체진행률</td>
			</tr>		
			<tr>
				<td align="center">1</td>
				<td align="center">2016.07.07</td>
				<td align="center">전략기획팀 프로젝트</td>
				<td align="center">스프링 프로젝트2</td>
				<td align="center">대리 사람이름</td>
				<td align="center">2016.03.02 ~ 2016.07.25</td>
				<td align="center">20%</td>
			</tr>		
		</tbody>
		</table>
		
		</div>
		
	</div>
	
</div>

<%@ include file="/common/end.jsp" %>
