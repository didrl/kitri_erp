<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="http://css.whoisdesk.net/Src/Skin/Renewal/eword_common.css?v=20150706"/>
<link rel="stylesheet" type="text/css" href="http://css.whoisdesk.net/Src/Skin/Renewal/eword_write.css?v=20150702"/>
<div id="wrapper"> 
 <!-- Page Content -->
<div id="page-wrapper">
<div id="sub">
	
	<!-- Organization -->
	<div id="organization" class="col-lg-5" style=" display:none;">
		<table class="table">
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
		 <p><a href="#" class="closeDOMWindow">닫기</a></p> 
	</div>
	<!-- //Organization -->

	<!-- 전자결재 문서   
	**** hidden 정리하기!!!! ****
	-->

	<form name="form" method="post" action='' enctype='multipart/form-data' class="mar10b black">
		
		<input type="hidden" name="doc_type_id" value="">
		<input type="hidden" name="doc_id" value="">
		
		

<!-- 버튼 -->
<br>
<button type="button" class="btn btn-primary" id="reportDoc" >상신하기</button>
<button type="button" class="btn btn-primary" id="tmpsaveDoc">임시저장</button>

<!-- 결재양식 제목 -->
<h1 class="eword_maincolumn">문서타입이름부분(지출 결의서)</h1>

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
							<input type="text" id="doc_id" name="doc_id" style="border:0pt;" value="상신 시 자동으로 등록됩니다." size='30' readonly />
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
								<td style="border-top: none;">
									<input type="text" name="grade_name1" value="" readonly class="form_transparent" style='width:100%;line-height:21px;'>
								</td>
								<td style="border-top: none;">
									<input type="text" name="grade_name2" value="" readonly class="form_transparent" style='width:100%;line-height:21px;'>
								</td>
								<td style="border-top: none;">
									<input type="text" name="grade_name3" value="" readonly class="form_transparent" style='width:100%;line-height:21px;'>
								</td>
								<td style="border-top: none;">
									<input type="text" name="grade_name4" value="" readonly class="form_transparent" style='width:100%;line-height:21px;'>
								</td>
								<td style="border-top: none;">
									<input type="text" name="grade_name5" value="" readonly class="form_transparent" style='width:100%;line-height:21px;'>
								</td>
							</tr>
							<tr class="date" style="height:61px;">
								<!-- 결재 버튼/결재완료 서명 표시 영역 -->
								<td>
									<input type="text"   name="appr_name" value="" readonly class="form_transparent" style='width:100%;'>
									<input type="hidden" name="appr_name" value="">
									<!-- 지정/취소 버튼 -->					
									<div id="MembersFindCell2"  class="btn_page pad15l overf">
										<!-- 지정 -->
										<a class="openPopup"  href="${root}/doc/m_organization.jsp">
											<span>지정</span>
										</a>
									</div>
								</td>
								<td>
									<input type="text"   name="OrderName2" value="" readonly class="form_transparent" style='width:100%;'>
									<input type="hidden" name="OrderId2" value="">
									<!-- 지정/취소 버튼 -->					
									<div id="MembersFindCell2"  class="btn_page pad15l overf">
										<!-- 지정 -->
										<a class="openPopup"  href="${root}/doc/m_organization.jsp">
											<span>지정</span>
										</a>
									</div>
								</td>
								<td>
									<input type="text"   name="OrderName3" value="" readonly class="form_transparent" style='width:100%;'>
									<input type="hidden" name="OrderId3" value="">
									<!-- 지정/취소 버튼 -->
									<div id="MembersFindCell3"  class="btn_page pad15l overf">
										<!-- 지정 -->
										<a class="openPopup"  href="${root}/doc/m_organization.jsp">
											<span>지정</span>
										</a>
									</div>
								</td>
								<td>
									<input type="text"   name="OrderName4" value="" readonly class="form_transparent" style='width:100%;'>
									<input type="hidden" name="OrderId4" value="">
									<!-- 지정/취소 버튼 -->					
									<div id="MembersFindCell4"  class="btn_page pad15l overf">
									<!-- 지정 -->
										<a class="openPopup"  href="${root}/doc/m_organization.jsp">
											<span>지정</span>
										</a>
									</div>
								</td>
								<td>
									<input type="text"   name="OrderName5" value="" readonly class="form_transparent" style='width:100%;'>
									<input type="hidden" name="OrderId5" value="">
									<!-- 지정/취소 버튼 -->
									<div id="MembersFindCell5"  class="btn_page pad15l overf">
									<!-- 지정 -->
										<a class="openPopup"  href="${root}/doc/m_organization.jsp">
											<span>지정</span>
										</a>
									</div>
								</td>
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
								<td>
									<input type="text" name="OrderTitle11" value="" readonly class="form_transparent" style='width:100%;line-height:21px;'>
								</td>
								<td>
									<input type="text" name="OrderTitle12" value="" readonly class="form_transparent" style='width:100%;line-height:21px;'>
								</td>
								<td>
									<input type="text" name="OrderTitle13" value="" readonly class="form_transparent" style='width:100%;line-height:21px;'>
								</td>
								<td>
									<input type="text" name="OrderTitle14" value="" readonly class="form_transparent" style='width:100%;line-height:21px;'>
								</td>
								<td>
									<input type="text" name="OrderTitle15" value="" readonly class="form_transparent" style='width:100%;line-height:21px;'>
								</td>
							</tr>
							<tr class="date" style="height:61px;">
								<!-- 결재 버튼/결재완료 서명 표시 영역 -->
								<td>
									<input type="text"   name="OrderName11" value="" readonly class="form_transparent" style='width:100%;'>
									<input type="hidden" name="OrderId11" value="admin">
									<!-- 지정/취소 버튼 -->					
									<div id="MembersFindCell11"  class="btn_page pad15l overf">
										<!-- 취소 -->
										<a class="openPopup"  href="${root}/doc/m_organization.jsp">
											<span>지정</span>
										</a>
									</div>
								</td>
								<td>
									<input type="text"   name="OrderName12" value="" readonly class="form_transparent" style='width:100%;'>
									<input type="hidden" name="OrderId12" value="">
									<!-- 지정/취소 버튼 -->					
									<div id="MembersFindCell12"  class="btn_page pad15l overf">
										<!-- 지정 -->
										<a class="openPopup"  href="${root}/doc/m_organization.jsp">
											<span>지정</span>
										</a>
									</div>
								</td>
								<td>
									<input type="text"   name="OrderName13" value="" readonly class="form_transparent" style='width:100%;'>
									<input type="hidden" name="OrderId13" value="">
									<!-- 지정/취소 버튼 -->					
									<div id="MembersFindCell13"  class="btn_page pad15l overf">
										<!-- 지정 -->
										<a class="openPopup"  href="${root}/doc/m_organization.jsp">
											<span>지정</span>
										</a>
									</div>
								</td>
								<td>
									<input type="text"   name="OrderName14" value="" readonly class="form_transparent" style='width:100%;'>
									<input type="hidden" name="OrderId14" value="">
									<!-- 지정/취소 버튼 -->					
									<div id="MembersFindCell14"  class="btn_page pad15l overf">
										<!-- 지정 -->
										<a class="openPopup"  href="${root}/doc/m_organization.jsp">
											<span>지정</span>
										</a>
									</div>
								</td>
								<td>
									<input type="text"   name="OrderName15" value="" readonly class="form_transparent" style='width:100%;'>
									<input type="hidden" name="OrderId15" value="">
									<!-- 지정/취소 버튼 -->					
									<div id="MembersFindCell15"  class="btn_page pad15l overf">
										<!-- 지정 -->
										<a class="openPopup"  href="${root}/doc/m_organization.jsp">
											<!--  <a class="openPopup"  href="myOrderUserAppointPopup.php?mode=order&number=15&total=5&WordUseHelper=Y">-->
											<span>지정</span>
										</a>
									</div>
								</td>
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
					<td class="pad15l"  colspan="3" >지출 결의서</td>
				</tr>
					<!-- 부서 -->
				<tr class="eword_meta_height">
					<th style="border-left: none;">부서</th>
					<td class="pad15l" colspan="3">${memberInfo.dep_name}</td>
				</tr>
				<!-- 기안일 -->
				<tr class="eword_meta_height">
					<th style="border-left: none;">기안일</th>
					<td class="pad15l" colspan="3" >
						<input name="DraftingY" type="text" value="" size="4" maxlength="4">
						<label>년</label>
						<input name="DraftingM" type="text" value="" size="2" maxlength="2">
						<label>월</label>
						<input name="DraftingD" type="text" value="" size="2" maxlength="2">
						<label>일</label>
					</td>
				</tr>
				<!-- 기안자, (출장인원) -->
				<tr class="eword_meta_height">
					<th style="border-left: none;">기안자</th>
					<td class="pad15l " colspan="3">${memberInfo.emp_name}</td>
				</tr>
				<!-- 공개여부, 보존기간 -->
				<tr class="eword_meta_height">
					<th style="border-left: none;">공개여부</th>
					<td class="txt_ce"  >
						<!-- 작성 -->
						<select name="Opening" onchange="ReceiveTreeKeyButton();">
							<option label="공개" value="Y" selected="selected">공개</option>
							<option label="비공개" value="N">비공개</option>
						</select>
					</td>

					<th>보존기간</th>
					<td class="txt_ce">
					<!-- 작성 -->
						<select name='StoragePeriod'><option label="3 개월" value="3">3 개월</option>
							<option label="6 개월" value="6">6 개월</option>
							<option label="1 년" value="12">1 년</option>
							<option label="2 년" value="24">2 년</option>
							<option label="3 년" value="36">3 년</option>
							<option label="4 년" value="48">4 년</option>
							<option label="5 년" value="60">5 년</option>
							<option label="6 년" value="72">6 년</option>
							<option label="7 년" value="84">7 년</option>
							<option label="8 년" value="96">8 년</option>
							<option label="9 년" value="108">9 년</option>
							<option label="10 년" value="120" selected="selected">10 년</option>
							<option label="무기한" value="12000">무기한</option>
						</select>
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
							<input type="text" name="ReceiveTreeKeyName" value="" readonly class="left" style="width:494px;"/>
							<span class="btn_page right">
								<!-- 수신부서 지정 -->
								<a class="cursor openPopupTreeKeyFind">
									<span class="txt_ce" style="width:80px;">수신부서 지정</span>
								</a>
							</span>
						</span>
					</td>
				</tr>
						
				<!-- 참조자 -->
				<tr class="eword_meta_height">
					<th style="border-left: none;">참조자</th>
					<td class="pad15l" style="padding-right:7px;">
						<input type="text" name="referenceUserName" value="" readonly class="left" style="width:494px;"/>
						<span class="btn_page right">
							<!-- 참조자 지정 -->
							<a class="openPopup">
								<span class="txt_ce"style="width:80px;">참조자 지정</span>
							</a>
						</span>
					</td>
				</tr>
										
				<!-- 제목 -->
				<tr class="eword_meta_height">
					<th style="border-left: none;" >제목</th>
					<td class="pad15l">
						<input name="Subject" type="text" value=""  style="width:98%;"/>
					</td>
				</tr>
			</table>
		</td>
	</tr>