<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/user_sidebar.jsp" %>

<link rel="stylesheet" type="text/css" href="http://css.whoisdesk.net/Src/Skin/Renewal/eword_common.css?v=20150706"/>
<link rel="stylesheet" type="text/css" href="http://css.whoisdesk.net/Src/Skin/Renewal/eword_write.css?v=20150702"/>

<!-- Page Content -->    
<div id="page-wrapper">

<div id="sub">
	<!-- 버튼영역 -->
	<div id="title">
		<h2>
			<span class="appr">결재문서 작성</span>
		</h2>
	</div>

	<div class="toparea mar10b">
		<span class="leftarea">
			<span class="btn">
				<!-- 목록 -->
				<a class="cursor" onclick="GoList();">
					<img src="http://static.whoisdesk.net/Src/Img/Renewal/icon_list.gif" alt="" width="16" height="16"  align="absmiddle" />
					목록
				</a>
					<!-- 결재선 지정 -->
					<a class="cursor openPopupLineSet">
						<img src="http://static.whoisdesk.net/Src/Img/Renewal/icon_pencil.gif" alt=""  align="absmiddle" />
						결재선 지정
					</a>
							</span>
		</span>
		<span class="rightarea">
			<span class="btn">
													<!-- 임시 저장하기 -->
					<a id="preSubmitBtn" class="cursor" onclick="try { parent.Ext.Msg.alert('Groupware Demo','<span style=color:#C8C9CA;><br />데모 체험하기는 글쓰기 등록 및 수정이 제한되어 있습니다. <br /><br />이점 양해해주시기 바랍니다.</span>');return false; } catch(e) { try { parent.parent.Ext.Msg.alert('Groupware Demo','<span style=color:#C8C9CA;><br />데모 체험하기는 글쓰기 등록 및 수정이 제한되어 있습니다. <br /><br />이점 양해해주시기 바랍니다.</span>');return false; } catch(e) { alert('그룹웨어 데모에서는 사용하실 수 없습니다.');return false; } }preSubmitPrc();">
						<img src="http://static.whoisdesk.net/Src/Img/Renewal/icon_document-save.gif" alt="" width="16" height="16"  align="absmiddle" />
						임시 저장하기
					</a>
								<!-- 상신하기 -->
				<a id="exitSubmitBtn" class="cursor" onclick="try { parent.Ext.Msg.alert('Groupware Demo','<span style=color:#C8C9CA;><br />데모 체험하기는 글쓰기 등록 및 수정이 제한되어 있습니다. <br /><br />이점 양해해주시기 바랍니다.</span>');return false; } catch(e) { try { parent.parent.Ext.Msg.alert('Groupware Demo','<span style=color:#C8C9CA;><br />데모 체험하기는 글쓰기 등록 및 수정이 제한되어 있습니다. <br /><br />이점 양해해주시기 바랍니다.</span>');return false; } catch(e) { alert('그룹웨어 데모에서는 사용하실 수 없습니다.');return false; } }exitSubmitPrc();">
					<img src="http://static.whoisdesk.net/Src/Img/Renewal/document-icon_import.gif" alt=""  align="absmiddle" />
					상신하기
				</a>
			</span>
		</span>
	</div>
	<!-- //버튼영역 -->

	<!-- 전자결재 문서 -->
	<form name="btripAppli_Form" method="post" action="" enctype='multipart/form-data'>
	
		
		
		
		<!-- 결재양식 제목 -->
<h1 class="eword_maincolumn">출장 신청서</h1>

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
			<input type="text" id="WordNo" name="WordNo" style="border:0pt;" value="1607-XXXX" size='10' readonly />
		</span>
					<span id ="sub_subject1" style ="display: none;">
				<input type="text" id="WordNo1" name="WordNo" value="1607-XXXX" size='10'  />
			</span>
			<!-- 문서번호 등록 -->
			<input type="checkbox"  id="AutoWordNo" name="AutoWordNo" value="1" class="form_transparent" onclick="getAutoWordNo()" />
			<span>문서번호 등록</span>
			</td>

					<td rowspan="6" style="border-top: none; border-right: none;"  >
						<table id="eword_orderline" class="eword_meta">
							<col class="orderline_th_width">
							<col class="orderline_width" span="5">
							<!-- 결재선 -->
							<tr class="txt_ce" style="height:20px;">
	<th rowspan="3" 
		style="border-left: none; border-top: none; "
			>
		<!-- 결재선/협조선 제목 -->
		<!-- 결재 -->
			결<br><br>재
			</th>
		
		<!-- 결재자/협조자 직급 표시 영역 -->
		<td 
		style="border-top: none;"			>
				<input type="text" name="OrderTitle1" value="" readonly class="form_transparent" style='width:100%;line-height:21px;'>
			</td>
		<td 
		style="border-top: none;"			>
				<input type="text" name="OrderTitle2" value="" readonly class="form_transparent" style='width:100%;line-height:21px;'>
			</td>
		<td 
		style="border-top: none;"			>
				<input type="text" name="OrderTitle3" value="" readonly class="form_transparent" style='width:100%;line-height:21px;'>
			</td>
		<td 
		style="border-top: none;"			>
				<input type="text" name="OrderTitle4" value="" readonly class="form_transparent" style='width:100%;line-height:21px;'>
			</td>
		<td 
		style="border-top: none;"			>
				<input type="text" name="OrderTitle5" value="" readonly class="form_transparent" style='width:100%;line-height:21px;'>
			</td>
	</tr>
<tr class="date" style="height:61px;">
	<!-- 결재 버튼/결재완료 서명 표시 영역 -->
			<td>
							<input type="text"   name="OrderName1" value="" readonly class="form_transparent" style='width:100%;'>
				<input type="hidden" name="OrderId1" value="ME">
									</td>
			<td>
							<input type="text"   name="OrderName2" value="" readonly class="form_transparent" style='width:100%;'>
				<input type="hidden" name="OrderId2" value="">
									<!-- 지정/취소 버튼 -->					<div id="MembersFindCell2"  class="btn_page pad15l overf">
													<!-- 지정 -->
							<a class="openPopup"  href="myOrderUserAppointPopup.php?mode=order&number=2&total=5&WordUseHelper=Y">
								<span>지정</span>
							</a>
											</div>
									</td>
			<td>
							<input type="text"   name="OrderName3" value="" readonly class="form_transparent" style='width:100%;'>
				<input type="hidden" name="OrderId3" value="">
									<!-- 지정/취소 버튼 -->					<div id="MembersFindCell3"  class="btn_page pad15l overf">
													<!-- 지정 -->
							<a class="openPopup"  href="myOrderUserAppointPopup.php?mode=order&number=3&total=5&WordUseHelper=Y">
								<span>지정</span>
							</a>
											</div>
									</td>
			<td>
							<input type="text"   name="OrderName4" value="" readonly class="form_transparent" style='width:100%;'>
				<input type="hidden" name="OrderId4" value="">
									<!-- 지정/취소 버튼 -->					<div id="MembersFindCell4"  class="btn_page pad15l overf">
													<!-- 지정 -->
							<a class="openPopup"  href="myOrderUserAppointPopup.php?mode=order&number=4&total=5&WordUseHelper=Y">
								<span>지정</span>
							</a>
											</div>
									</td>
			<td>
							<input type="text"   name="OrderName5" value="" readonly class="form_transparent" style='width:100%;'>
				<input type="hidden" name="OrderId5" value="">
									<!-- 지정/취소 버튼 -->					<div id="MembersFindCell5"  class="btn_page pad15l overf">
													<!-- 지정 -->
							<a class="openPopup"  href="myOrderUserAppointPopup.php?mode=order&number=5&total=5&WordUseHelper=Y">
								<span>지정</span>
							</a>
											</div>
									</td>
	</tr>
<tr class="date" style="height:20px;">
	<!-- 결재일시 표시 영역 -->
			<td >
							<span id="appDate1">&nbsp;</span>
					</td>
			<td >
							<span id="appDate2">&nbsp;</span>
					</td>
			<td >
							<span id="appDate3">&nbsp;</span>
					</td>
			<td >
							<span id="appDate4">&nbsp;</span>
					</td>
			<td >
							<span id="appDate5">&nbsp;</span>
					</td>
	</tr>							<!-- 협조선 -->
							<tr class="txt_ce" style="height:20px;">
	<th rowspan="3" 
		style="border-left: none; border-top: none; border-bottom: none;"
			>
		<!-- 결재선/협조선 제목 -->
								<!-- 협조 -->
				협<br><br>조
						</th>
	<!-- 결재자/협조자 직급 표시 영역 -->
		<td 
					>
				<input type="text" name="OrderTitle11" value="" readonly class="form_transparent" style='width:100%;line-height:21px;'>
			</td>
		<td 
					>
				<input type="text" name="OrderTitle12" value="" readonly class="form_transparent" style='width:100%;line-height:21px;'>
			</td>
		<td 
					>
				<input type="text" name="OrderTitle13" value="" readonly class="form_transparent" style='width:100%;line-height:21px;'>
			</td>
		<td 
					>
				<input type="text" name="OrderTitle14" value="" readonly class="form_transparent" style='width:100%;line-height:21px;'>
			</td>
		<td 
					>
				<input type="text" name="OrderTitle15" value="" readonly class="form_transparent" style='width:100%;line-height:21px;'>
			</td>
	</tr>
<tr class="date" style="height:61px;">
	<!-- 결재 버튼/결재완료 서명 표시 영역 -->
			<td>
							<input type="text"   name="OrderName11" value="" readonly class="form_transparent" style='width:100%;'>
				<input type="hidden" name="OrderId11" value="">
									<!-- 지정/취소 버튼 -->					<div id="MembersFindCell11"  class="btn_page pad15l overf">
													<!-- 지정 -->
							<a class="openPopup"  href="myOrderUserAppointPopup.php?mode=order&number=11&total=5&WordUseHelper=Y">
								<span>지정</span>
							</a>
											</div>
									</td>
			<td>
							<input type="text"   name="OrderName12" value="" readonly class="form_transparent" style='width:100%;'>
				<input type="hidden" name="OrderId12" value="">
									<!-- 지정/취소 버튼 -->					<div id="MembersFindCell12"  class="btn_page pad15l overf">
													<!-- 지정 -->
							<a class="openPopup"  href="myOrderUserAppointPopup.php?mode=order&number=12&total=5&WordUseHelper=Y">
								<span>지정</span>
							</a>
											</div>
									</td>
			<td>
							<input type="text"   name="OrderName13" value="" readonly class="form_transparent" style='width:100%;'>
				<input type="hidden" name="OrderId13" value="">
									<!-- 지정/취소 버튼 -->					<div id="MembersFindCell13"  class="btn_page pad15l overf">
													<!-- 지정 -->
							<a class="openPopup"  href="myOrderUserAppointPopup.php?mode=order&number=13&total=5&WordUseHelper=Y">
								<span>지정</span>
							</a>
											</div>
									</td>
			<td>
							<input type="text"   name="OrderName14" value="" readonly class="form_transparent" style='width:100%;'>
				<input type="hidden" name="OrderId14" value="">
									<!-- 지정/취소 버튼 -->					<div id="MembersFindCell14"  class="btn_page pad15l overf">
													<!-- 지정 -->
							<a class="openPopup"  href="myOrderUserAppointPopup.php?mode=order&number=14&total=5&WordUseHelper=Y">
								<span>지정</span>
							</a>
											</div>
									</td>
			<td>
							<input type="text"   name="OrderName15" value="" readonly class="form_transparent" style='width:100%;'>
				<input type="hidden" name="OrderId15" value="">
									<!-- 지정/취소 버튼 -->					<div id="MembersFindCell15"  class="btn_page pad15l overf">
													<!-- 지정 -->
							<a class="openPopup"  href="myOrderUserAppointPopup.php?mode=order&number=15&total=5&WordUseHelper=Y">
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
	</tr>						</table>
					</td>
				</tr>
				<!-- 문서종류 -->
				<tr class="eword_meta_height">
					<th style="border-left: none;" >문서종류</th>
<td class="pad15l"  colspan="3" >출장계 &gt; 출장 신청서</td>

				</tr>
				<!-- 부서 -->
				<tr class="eword_meta_height">
					<th style="border-left: none;">부서</th>
<td class="pad15l" colspan="3">임원</td>

				</tr>
				<!-- 기안일 -->
				<tr class="eword_meta_height">
					<th style="border-left: none;">기안일</th>
<td class="pad15l" colspan="3" >
			<input name="DraftingY" type="text" value="2016" size="4" maxlength="4">
		<label>년</label>
		<input name="DraftingM" type="text" value="07" size="2" maxlength="2">
		<label>월</label>
		<input name="DraftingD" type="text" value="05" size="2" maxlength="2">
		<label>일</label>
	</td>

				</tr>
				<!-- 기안자, (출장인원) -->
				<tr class="eword_meta_height">
					<th style="border-left: none;">기안자</th>
<td class="pad15l " colspan="3">대표 한상준</td>

					<!-- 출장인원 -->
									</tr>
				<!-- 공개여부, 보존기간 -->
				<tr class="eword_meta_height">
					<th style="border-left: none;">공개여부</th>
<td class="txt_ce"  >
										<!-- 작성 -->
				<select name="Opening" onchange="ReceiveTreeKeyButton();"><option label="공개" value="Y" selected="selected">공개</option>
<option label="비공개" value="N">비공개</option>
</select>
						</td>

					<th  >보존기간</th>
<td class="txt_ce"  >
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
								<input type="text" name="receiveDepartmentName" value="" readonly class="left" style="width:394px;"/>
								<span class="btn_page right">
																			<!-- 수신부서 지정 -->
										<a class="cursor openPopupTreeKeyFind">
											<span class="txt_ce"style="width:80px;">수신부서 지정</span>
										</a>
																		<!-- 수신부서 보기 -->
									<a class="cursor openPopupTreeKeyView">
										<span class="txt_ce"style="width:80px;">수신부서 보기</span>
									</a>
								</span>
							</span>
											</td>
				</tr>
						
								<!-- 참조자 -->
				<tr class="eword_meta_height">
					<th style="border-left: none;">참조자</th>
					<td class="pad15l" style="padding-right:7px;">
													<input type="text" name="referenceUserName" value="" readonly class="left" style="width:394px;"/>
							<span class="btn_page right">
							<!-- 참조자 지정 -->
								<a class="cursor openPopupReferenceUser">
									<span class="txt_ce"style="width:80px;">참조자 지정</span>
								</a>
							<!-- 참조자 보기 -->
							<a class="cursor openPopupReferenceUserView">
								<span class="txt_ce"style="width:80px;">참조자 보기</span>
							</a>
											</td>
				</tr>
						
				<!-- 제목 -->
				<tr class="eword_meta_height">
					<th style="border-left: none;" >제목</th>
					<td class="pad15l"  >
						<input name="Subject" type="text" value=""  style="width:98%;"/>
					</td>
				</tr>
			</table>
		</td>
	</tr>
	
			
			
			
			<!-- 기본형 휴가계/출장계 -->
		<tr class="change_height_on_print">
			<td id="eword_content" class="eword_content_layout">
				<table id="eword_special" class="eword_meta">
					<col class="eword_th_width">
					<col style="width:87.5%;">
								
											<!-- 출장계 > 출장 신청서 -->
						<tr class="eword_meta_height">
							<th style="border-top: none; border-left: none;" >기간</th>
							<td class="pad15l" style="border-top: none;" >
																	<select name="OutStartYear"  onblur="AutoCalculation('OutTerm');" class="vm"><option label="2015" value="2015">2015</option>
<option label="2016" value="2016" selected="selected">2016</option>
<option label="2017" value="2017">2017</option>
</select>
									<label class="vm">년</label>
									<select name="OutStartMonth" onblur="AutoCalculation('OutTerm');" class="vm"><option label="1" value="1">1</option>
<option label="2" value="2">2</option>
<option label="3" value="3">3</option>
<option label="4" value="4">4</option>
<option label="5" value="5">5</option>
<option label="6" value="6">6</option>
<option label="7" value="7" selected="selected">7</option>
<option label="8" value="8">8</option>
<option label="9" value="9">9</option>
<option label="10" value="10">10</option>
<option label="11" value="11">11</option>
<option label="12" value="12">12</option>
</select>
									<label class="vm">월</label>
									<select name="OutStartDay"   onblur="AutoCalculation('OutTerm');" class="vm"><option label="1" value="1">1</option>
<option label="2" value="2">2</option>
<option label="3" value="3">3</option>
<option label="4" value="4">4</option>
<option label="5" value="5" selected="selected">5</option>
<option label="6" value="6">6</option>
<option label="7" value="7">7</option>
<option label="8" value="8">8</option>
<option label="9" value="9">9</option>
<option label="10" value="10">10</option>
<option label="11" value="11">11</option>
<option label="12" value="12">12</option>
<option label="13" value="13">13</option>
<option label="14" value="14">14</option>
<option label="15" value="15">15</option>
<option label="16" value="16">16</option>
<option label="17" value="17">17</option>
<option label="18" value="18">18</option>
<option label="19" value="19">19</option>
<option label="20" value="20">20</option>
<option label="21" value="21">21</option>
<option label="22" value="22">22</option>
<option label="23" value="23">23</option>
<option label="24" value="24">24</option>
<option label="25" value="25">25</option>
<option label="26" value="26">26</option>
<option label="27" value="27">27</option>
<option label="28" value="28">28</option>
<option label="29" value="29">29</option>
<option label="30" value="30">30</option>
<option label="31" value="31">31</option>
</select>
									<label class="vm">일</label>
									
									<span class="vm">&nbsp;~&nbsp;</span>
					
									<select name="OutEndYear"  onblur="AutoCalculation('OutTerm');" class="vm"><option label="2015" value="2015">2015</option>
<option label="2016" value="2016" selected="selected">2016</option>
<option label="2017" value="2017">2017</option>
</select>
									<label class="vm">년</label>
									<select name="OutEndMonth" onblur="AutoCalculation('OutTerm');" class="vm"><option label="1" value="1">1</option>
<option label="2" value="2">2</option>
<option label="3" value="3">3</option>
<option label="4" value="4">4</option>
<option label="5" value="5">5</option>
<option label="6" value="6">6</option>
<option label="7" value="7" selected="selected">7</option>
<option label="8" value="8">8</option>
<option label="9" value="9">9</option>
<option label="10" value="10">10</option>
<option label="11" value="11">11</option>
<option label="12" value="12">12</option>
</select>
									<label class="vm">월</label>
									<select name="OutEndDay"   onblur="AutoCalculation('OutTerm');" class="vm"><option label="1" value="1">1</option>
<option label="2" value="2">2</option>
<option label="3" value="3">3</option>
<option label="4" value="4">4</option>
<option label="5" value="5" selected="selected">5</option>
<option label="6" value="6">6</option>
<option label="7" value="7">7</option>
<option label="8" value="8">8</option>
<option label="9" value="9">9</option>
<option label="10" value="10">10</option>
<option label="11" value="11">11</option>
<option label="12" value="12">12</option>
<option label="13" value="13">13</option>
<option label="14" value="14">14</option>
<option label="15" value="15">15</option>
<option label="16" value="16">16</option>
<option label="17" value="17">17</option>
<option label="18" value="18">18</option>
<option label="19" value="19">19</option>
<option label="20" value="20">20</option>
<option label="21" value="21">21</option>
<option label="22" value="22">22</option>
<option label="23" value="23">23</option>
<option label="24" value="24">24</option>
<option label="25" value="25">25</option>
<option label="26" value="26">26</option>
<option label="27" value="27">27</option>
<option label="28" value="28">28</option>
<option label="29" value="29">29</option>
<option label="30" value="30">30</option>
<option label="31" value="31">31</option>
</select>
									
					
									<input type="checkbox" id="flagHoliday" name="flagHoliday" class="vm" value="1" onclick="chkHoliday(this, 'OutTerm');">
									<label class="vm">휴일포함</label>
															</td>
						</tr>
						<tr class="eword_meta_height">
							<th style="border-left: none;">출장지</th>
							<td class="pad15l">
																	<input name="OutDestination" type="text" value="" style="width:98%;" >
															</td>
						</tr>
						<tr class="eword_meta_height">
							<th style="border-left: none;">출장목적</th>
							<td class="pad15l pad5tb">
																	<textarea name="OutReason" style="width:98%;height:50px;"></textarea>
															</td>
						</tr>
						<tr class="eword_meta_height">
							<th style="border-left: none;">연락처</th>
							<td class="pad15l">
																	<input name="OutTel" type="text" value="" style="width:98%;" >
															</td>
						</tr>
					
						<tr class="eword_meta_height">
							<th style="border-left: none;">기타</th>
							<td>
								<textarea name="OutEtc3" class="ckeditor" style="width:100%;height:100px;"></textarea>
							</td>
						</tr>
						<tr style="height:100px;">
							<td colspan="2" class="txt_ce" style="border-left: none;">상기와 같이 출장 신청서를 제출하오니 재가바랍니다.</td>
						</tr>
								
									</table>
			</td>
		</tr>
	</table>

<!-- 첨부파일 -->
<table class="eword_maincolumn eword_meta mar10b">
	<col class="eword_th_width">
	<col>
		<tr>
		<th>첨부파일</th>
		<td>
			<textarea rows="10" cols="90" style="height: 100px; overflow: auto;"></textarea>
				
				<div class="form-inline" style="padding-top: 4px; padding-bottom: 4px;">
					<div class="form-group" style="padding-top: 4px"><input type="file" value="첨부파일"></div>
					<div class="form-group" style="padding-top: 4px"><input type="reset" value="삭제"></div>
				</div>
		
		</td>
	</tr>
	</table>


<!-- 안내 -->
<div class="eword_maincolumn mar10b black">
	<b>※ 한번에 올릴 수 있는 파일용량은 최대 10MB 입니다.</b><br>
	※ 파일 업로드시 파일명을 되도록 영문 또는 숫자로 해주시고, 한글로 할 경우에는 파일열기가 안될경우도 있습니다.<br>

	</div>

<!-- 회사명 -->
<div class="company eword_maincolumn mar10b black"></div>
	</form>
	<!-- 전자결재 문서 -->

	<!-- 버튼영역 -->
	<div class="btmarea">
		<span class="leftarea">
			<span class="btn">
				<!-- 목록 -->
				<a class="cursor" onclick="GoList();">
					<img src="http://static.whoisdesk.net/Src/Img/Renewal/icon_list.gif" alt="" width="16" height="16"  align="absmiddle" />
					목록
				</a>
									<!-- 결재선 지정 -->
					<a class="cursor openPopupLineSet">
						<img src="http://static.whoisdesk.net/Src/Img/Renewal/icon_pencil.gif" alt=""  align="absmiddle" />
						결재선 지정
					</a>
							</span>
		</span>
		<span class="rightarea">
			<span class="btn">
													<!-- 임시 저장하기 -->
					<a id="preSubmitBtnBottom" class="cursor" onclick="try { parent.Ext.Msg.alert('Groupware Demo','<span style=color:#C8C9CA;><br />데모 체험하기는 글쓰기 등록 및 수정이 제한되어 있습니다. <br /><br />이점 양해해주시기 바랍니다.</span>');return false; } catch(e) { try { parent.parent.Ext.Msg.alert('Groupware Demo','<span style=color:#C8C9CA;><br />데모 체험하기는 글쓰기 등록 및 수정이 제한되어 있습니다. <br /><br />이점 양해해주시기 바랍니다.</span>');return false; } catch(e) { alert('그룹웨어 데모에서는 사용하실 수 없습니다.');return false; } }preSubmitPrc();">
						<img src="http://static.whoisdesk.net/Src/Img/Renewal/icon_document-save.gif" alt="" width="16" height="16"  align="absmiddle" />
						임시 저장하기
					</a>
								<!-- 상신하기 -->
				<a id="exitSubmitBtnBottom" class="cursor" onclick="try { parent.Ext.Msg.alert('Groupware Demo','<span style=color:#C8C9CA;><br />데모 체험하기는 글쓰기 등록 및 수정이 제한되어 있습니다. <br /><br />이점 양해해주시기 바랍니다.</span>');return false; } catch(e) { try { parent.parent.Ext.Msg.alert('Groupware Demo','<span style=color:#C8C9CA;><br />데모 체험하기는 글쓰기 등록 및 수정이 제한되어 있습니다. <br /><br />이점 양해해주시기 바랍니다.</span>');return false; } catch(e) { alert('그룹웨어 데모에서는 사용하실 수 없습니다.');return false; } }exitSubmitPrc();">
					<img src="http://static.whoisdesk.net/Src/Img/Renewal/document-icon_import.gif" alt=""  align="absmiddle" />
					상신하기
				</a>
			</span>
		</span>
	</div>
	<!-- //버튼영역 -->
</div>

<script type="text/javascript" src="http://js.whoisdesk.net/Src/WebCommon/Script/preventDuplicateSubmit.js"></script>

       
       
       
       </div>
        <!-- /.container -->
     </div>
     <!-- /#page-wrapper -->
</div>
<!-- /#wrapper -->  
</body>
</html> 