<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/common.jsp" %>


<!-- css & script src start -->
<!-- whois css -->
<link rel="stylesheet" type="text/css" href="http://css.whoisdesk.net/Src/Skin/Renewal/eword_common.css?v=20150706"/>
<link rel="stylesheet" type="text/css" href="http://css.whoisdesk.net/Src/Skin/Renewal/eword_write.css?v=20150702"/>
<!-- for time format -->
<script src='${root}/webjars/moment/2.14.1/moment.js'></script>
<!-- css & script src end -->
<script type="text/javascript">
var root ="${root}";
var doc_type = "${document.doc_type_name}";
var doc_id = "${document.doc_id}";
var controller="";
if(doc_type=="기안서"){
	controller="/proposal";
}else if(doc_type=="품의서"){
	controller="/consultation";
}else if(doc_type=="지출결의서"){
	controller="/payment";
}else if(doc_type=="출장신청서"){
	controller="/btripApplication";
}else if(doc_type=="출장보고서"){
	controller="/btripReport";
}else if(doc_type=="휴가신청서"){
	controller="/vacation";
}else if(doc_type=="업무일지"){
	controller="/journal";
}
</script>
<<script type="text/javascript">
$(function(){
	$('#appr').click(function(){
		alert("결재버튼 test");
	});
});
</script>
<!--script end -->

<div id="wrapper"> 
 <!-- Page Content -->
<div id="page-wrapper">
<div id="sub">
	
<br>
<c:if test="${document.emp_id eq memberInfo.emp_id}">
	<c:if test="${document.doc_status_id eq 0}">
		<button type="button" class="btn btn-primary" id="modifyDoc">수정하기</button>
	</c:if>
</c:if>
<!-- 결재양식 제목 -->
<h1 class="eword_maincolumn">${document.doc_type_name}</h1>

<!-- 결재문서 본문 -->
<table id="ewordWrapper" class="eword_maincolumn boldline mar10b">
	<tr>
		<td id="eword_header">
						
						<!-- ORDER 5 -->
			<table id="eword_header_part" class="eword_meta">
				<col class="eword_th_width">
				<col class="eword_td_min_width">
				<col class="eword_th_width">
				<col class="eword_td_min_width">
				<col style="width:50%;">
				<!-- 문서번호, 결재선/협조선 -->
				<tr class="eword_meta_height">
					<th style="border-top: none; border-left: none;" >문서번호</th>

					<td class="pad15l" colspan="3" style="border-top: none;" >
						<span id ="sub_subject">
							<input type="text" id="doc_id" name="doc_id" style="border:0pt;" value="${document.doc_id}" size='30' readonly />
						</span>
					</td>

					<td rowspan="6" style="border-top: none; border-right: none;">
						<table id="eword_orderline" class="eword_meta">
							<col class="orderline_th_width">
							<col class="orderline_width" span="5">
							<!-- 결재선 -->
							<tr class="txt_ce" style="height:20px;">
								<th rowspan="3" style="border-left: none; border-top: none;">
									<!-- 결재선/협조선 제목 -->
									<!-- 결재 -->
									결<br><br>재
								</th>
								<!-- 결재자/협조자 직급 표시 영역 -->
								<c:set var="length" value="${fn:length(document.sign_info)}" />
								<c:forEach items="${document.sign_info}" var="signPerson">
									<td style="border-top: none;">
									${signPerson.grade_name}
									</td>
								</c:forEach>
								<c:forEach  begin="0" end="${5-length}" step="1">
									<td style="border-top: none;">
									</td>
								</c:forEach>
								
							</tr>
							<tr class="date" style="height:61px;">
								<!-- 결재 버튼/결재완료 서명 표시 영역 -->
								<c:forEach items="${document.sign_info}" var="signPerson" varStatus="status">
								<td>
									<!-- 지정/취소 버튼 -->					
									<div align="center" id="MembersFindCell1"  class="btn_page pad15l overf">
										<!-- 지정 -->
										<c:if test="${signPerson.appr_flag == 0}">
											<span>${signPerson.emp_name}</span>
											<c:if test="${signPerson.emp_id eq memberInfo.emp_id}">
												<c:if test="${document.sign_info[0].appr_flag == 0}">
												<button id="appr" name="appr"> 결재 </button>
												</c:if>
												<c:if test="${document.sign_info[0].appr_flag == 1 && document.sign_info[status.index -1].appr_flag == 1}">
												<button id="appr" name="appr"> 결재 </button>
												</c:if>
											</c:if>
										</c:if>
										<c:if test="${signPerson.appr_flag == 1}">
											결재완료
										</c:if>
									</div>
								</td>
								</c:forEach>
								<c:forEach  begin="0" end="${5-length}" step="1">
									<td></td>
								</c:forEach>
							</tr>
							<tr class="date" style="height:20px;">
								<!-- 결재일시 표시 영역 -->
								<td>
									<span id="appDate1">&nbsp;</span>
								</td>
								<td>
									<span id="appDate2">&nbsp;</span>
								</td>
								<td>
									<span id="appDate3">&nbsp;</span>
								</td>
								<td>
									<span id="appDate4">&nbsp;</span>
								</td>
								<td>
									<span id="appDate5">&nbsp;</span>
								</td>
							</tr>							
							<!-- 협조선 -->

							<tr class="txt_ce" style="height:20px;">
								<th rowspan="3" style="border-left: none; border-top: none; border-bottom: none;">
									<!-- 결재선/협조선 제목 -->
									<!-- 협조 -->
									협<br><br>조
								</th>
								<!-- 결재자/협조자 직급 표시 영역 -->
								<c:set var="lengthc" value="${fn:length(document.cooperation)}" />
								<c:forEach items="${document.cooperation}" var="coopPerson">
									<td style="border-top: none;">
									${coopPerson.grade_name}
									</td>
								</c:forEach>
								<c:forEach  begin="0" end="${5-lengthc}" step="1">
									<td style="border-top: none;">
									</td>
								</c:forEach>
							</tr>
							<tr class="date" style="height:61px;">
								<!-- 결재 버튼/결재완료 서명 표시 영역 -->
								<c:forEach items="${document.cooperation}" var="coopPerson">
								<td>
									<!-- 지정/취소 버튼 -->					
									<div align="center" id="MembersFindCell1"  class="btn_page pad15l overf">
										<!-- 지정 -->
											<span>${coopPerson.emp_name}</span>
									</div>
								</td>
								</c:forEach>
								<c:forEach  begin="0" end="${5-lengthc}" step="1">
									<td></td>
								</c:forEach>
							</tr>
							<tr class="date" style="height:20px;">
								<!-- 결재일시 표시 영역 -->
								<td style="border-bottom: none;">
									<span id="appDate11">&nbsp;</span>
								</td>
								<td style="border-bottom: none;">
									<span id="appDate12">&nbsp;</span>
								</td>
								<td style="border-bottom: none;">
									<span id="appDate13">&nbsp;</span>
								</td>
								<td style="border-bottom: none;">
									<span id="appDate14">&nbsp;</span>
								</td>
								<td style="border-bottom: none;">
									<span id="appDate15">&nbsp;</span>
								</td>
							</tr>						
						</table>
					</td>
				</tr>
				
				<!-- 문서종류 -->
				<tr class="eword_meta_height">
					<th style="border-left: none;" >문서종류</th>
					<td class="pad15l"  colspan="3" >${document.doc_type_name}</td>
				</tr>
					<!-- 부서 -->
				<tr class="eword_meta_height">
					<th style="border-left: none;">부서</th>
					<td class="pad15l" colspan="3">${document.dep_name}</td>
				</tr>
				<!-- 기안일 -->
				<tr class="eword_meta_height">
					<th style="border-left: none;">기안일</th>
					<td class="pad15l" colspan="3" >
						<c:out value="${document.doc_date}"></c:out>
					</td>
				</tr>
				<!-- 기안자, (출장인원) -->
				<tr class="eword_meta_height">
					<th style="border-left: none;">기안자</th>
					<td class="pad15l " colspan="3">${document.emp_name}</td>
				</tr>
				<!-- 공개여부, 보존기간 -->
				<tr class="eword_meta_height">
					<th style="border-left: none;">공개여부</th>
					<td class="pad15l" colspan="3">
						<!-- 작성 -->
						<c:if test="${document.doc_open eq 1}">
						공개
						</c:if>
						<c:if test="${document.doc_open eq 0}">
						비공개
						</c:if>
					</td>
				</tr>
			</table>
			<!-- /ORDER 5 -->
						
			<table id="eword_header_common" class="eword_meta">
				<col class="eword_th_width">
				<col>
				<!-- 수신부서 -->
				<tr class="eword_meta_height">
					<th style="border-left: none;">수신부서</th>
					<td class="pad15l" style="padding-right:7px;">
						<span id="ReceiveTreeKeyButtonArea" style='width:100%;'>
						<c:forEach var="receive" items="${document.receiver}">
							${receive.dep_name}						
						</c:forEach>
						</span>
					</td>
				</tr>
						
				<!-- 참조자 -->
				<tr class="eword_meta_height">
					<th style="border-left: none;">참조자</th>
					<td class="pad15l" style="padding-right:7px;">
					<c:forEach var="refer" items="${document.reference}">
							${refer.emp_name}						
						</c:forEach>
					</td>
				</tr>
										
				<!-- 제목 -->
				<tr class="eword_meta_height">
					<th style="border-left: none;" >제목</th>
					<td class="pad15l">
					<c:out value="${document.doc_subject}"/>
					</td>
				</tr>
			</table>
		</td>
	</tr>