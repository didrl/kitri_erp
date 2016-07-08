<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/common/adminnav.jsp" %>

<div id="page-wrapper">

	<br><h3><b>부서/직급 설정</b></h3>
	<br><br>
	
	<div class="row">
		<div class="col-md-5">
			<table class="table">
			<tbody>
				<tr>
					<td colspan="3" align="right" width="20">
						<button type="button" class="btn btn-primary btn-xs">부서등록</button>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						
					<div class="panel panel-default">
                        <div class="panel-heading">
                            	부서구조
                        </div>
                        <!-- .panel-heading -->
                        <div class="panel-body">
                            <div class="panel-group" id="accordion">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">경영지원실</a>
                                        </h4>
                                    </div>
                                    <div id="collapse1" class="panel-collapse collapse in">
                                        <div class="panel-body">
											<ul>
						                    	<!-- 직급 -->
						                        <li>직급
						                            <ul>
						                                <li>이름</li>
						                            </ul>
						                        </li>
						                    </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">전략기획팀</a>
                                        </h4>
                                    </div>
                                    <div id="collapse2" class="panel-collapse collapse in">
                                        <div class="panel-body">
											<ul>
						                    	<!-- 직급 -->
						                        <li>직급
						                            <ul>
						                                <li>이름</li>
						                            </ul>
						                        </li>
						                    </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">개발1팀</a>
                                        </h4>
                                    </div>
                                    <div id="collapse3" class="panel-collapse collapse in">
                                        <div class="panel-body">
											<ul>
						                    	<!-- 직급 -->
						                        <li>직급
						                            <ul>
						                                <li>이름</li>
						                            </ul>
						                        </li>
						                    </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapse4">개발2팀</a>
                                        </h4>
                                    </div>
                                    <div id="collapse4" class="panel-collapse collapse in">
                                        <div class="panel-body">
											<ul>
						                    	<!-- 직급 -->
						                        <li>직급
						                            <ul>
						                                <li>이름</li>
						                            </ul>
						                        </li>
						                    </ul>
                                        </div>
                                    </div>
                                </div>
   
                            </div>
                        </div>
                        <!-- .panel-body -->
                    </div>
							
					</td>
				</tr>
			</tbody>
			</table>
		</div>
		<div class="col-md-7">
			<table class="table table-bordered">
			<tbody>
				<tr>
					<td colspan="6"> 선택된 부서 [인원] </td>
				</tr>
				<tr>
					<td width="30"></td>
					<td width="100" align="center"> 이름 </td>
					<td align="center"> 부서 </td>
					<td align="center"> 직급 </td>
					<td align="center"> 권한 </td>
					<td width="70"></td>  
				</tr>
				<tr>
					<td>
						1
					</td>
					<td align="center">
						사람이름
					</td>
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
					<td>
						<select class="form-control">
                        	<option>대표</option>
                            <option>팀장</option>
                            <option>사원</option>
                        </select> 
					</td>
					<td>
						<select class="form-control">
                        	<option> master-all </option>
                            <option> master-erp </option>
                            <option> master-hr </option>
                            <option> general </option>
                        </select> 
					</td>
					<td align="center">
						<button type="button" class="btn btn-primary btn-sm">변경</button>
					</td>
				</tr>
			</tbody>
			</table>
		</div>
	</div>

</div>

<%@ include file="/common/end.jsp" %>