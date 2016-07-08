<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/common/adminnav.jsp" %>

<div id="page-wrapper">

	<br><h3><b>프로젝트 상세</b></h3>
	<br><br>
	
	<div class="row">
	
		<div class="col-md-12">
		
		<table class="table table-bordered"> 
		<tbody>
			<tr>
				<td colspan="4">
					<button type="button" class="btn btn-primary btn-sm">목록</button>
					<button type="button" class="btn btn-primary btn-sm">인쇄</button>
					<button type="button" class="btn btn-primary btn-sm">수정</button>
					<button type="button" class="btn btn-danger btn-sm">삭제</button>
				</td>
			</tr>
			<tr>
				<td width="200" align="center">구분</td>
				<td>전략기획팀 프로젝트</td>
				<td width="200" align="center">등록자</td>				
				<td>직급 사람이름</td>				
			</tr>
			<tr>
				<td width="200" align="center">프로젝트 기간</td>
				<td>2016.03.02 ~ 2016.07.25</td>
				<td width="200" align="center">등록일</td>				
				<td>2016.07.07</td>				
			</tr>
			<tr>
				<td width="200" align="center">프로젝트명</td>
				<td colspan="3">스프링 프로젝트</td>
			</tr>
			<tr>
				<td width="200" align="center">프로젝트 설명</td>
				<td colspan="3">3차 프로젝트</td>
			</tr>
			<tr>
				<td width="200" align="center">프로젝트 파일</td>
				<td colspan="3">등록된 파일</td>
			</tr>
		</tbody>
		</table>
			
		<table class="table table-bordered"> 
		<tbody>	
			<tr>
				<td colspan="4"><b>프로젝트 전체 진행률</b></td>
			</tr>
			<tr>
				<td width="200">경과일 : 날짜</td>
				<td colspan="2"></td>
				<td width="170">진행률 : 20%</td>
			</tr>
			<tr>
				<td>프로젝트 전체 진행률</td>
				<td colspan="3">
                	<div class="progress progress-striped active">
                		<div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                        	<span class="sr-only">20% Complete</span>
                        </div>
                    </div>
				</td>
			</tr>
		</tbody>
		</table>
			
		<table class="table table-bordered"> 
		<tbody>	
			<tr>
				<td colspan="4"><b>프로젝트 개별 진행률</b></td>
			</tr>
			<tr>
				<td width="200">서버 담당 ( 날짜 )</td>
				<td colspan="2"></td>
				<td width="170">진행률 : 10%</td>
			</tr>
			<tr>
				<td>담당자 : 직급 이름</td>
				<td>
					<div class="progress progress-striped active">
                		<div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                        	<span class="sr-only">20% Complete</span>
                        </div>
                    </div>
				</td>
				<td width="100">
					<select class="form-control">
	                	<option>20%</option>
	                    <option>40%</option>
	                    <option>60%</option>
	                    <option>80%</option>
	                    <option>100%</option>
                    </select>
				</td>
				<td>
					<button type="button" class="btn btn-primary btn-sm">의견보기(숫자)</button>
					<button type="button" class="btn btn-primary btn-sm">수정</button>
				</td>
			</tr>
			
		</tbody>
		</table>
		
		<table class="table table-bordered"> 
		<tbody>	
			<tr>
				<td width="200">유지보수 담당 ( 날짜 )</td>
				<td colspan="2"></td>
				<td width="170">진행률 : 10%</td>
			</tr>
			<tr>
				<td>담당자 : 직급 이름</td>
				<td>
					<div class="progress progress-striped active">
                		<div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                        	<span class="sr-only">20% Complete</span>
                        </div>
                    </div>
				</td>
				<td width="100">
					<select class="form-control">
	                	<option>20%</option>
	                    <option>40%</option>
	                    <option>60%</option>
	                    <option>80%</option>
	                    <option>100%</option>
                    </select>
				</td>
				<td>
					<button type="button" class="btn btn-primary btn-sm">의견보기(숫자)</button>
					<button type="button" class="btn btn-primary btn-sm">수정</button>
				</td>
			</tr>
			
		</tbody>
		</table>
		
		</div>
		
	</div>
	
</div>

<%@ include file="/common/end.jsp" %>