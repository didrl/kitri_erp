<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/user_sidebar.jsp" %>
<%@ include file="/doc/doc_header.jsp" %>

<link rel="stylesheet" type="text/css" href="http://css.whoisdesk.net/Src/Skin/Renewal/eword_common.css?v=20150706"/>
<link rel="stylesheet" type="text/css" href="http://css.whoisdesk.net/Src/Skin/Renewal/eword_write.css?v=20150702"/>
<div id="wrapper"> 
<div id="page-wrapper">
<div id="sub">

	<input type="button" value="상신하기" onclick="">
   <!-- 결재양식 제목 -->
<h1 class="eword_maincolumn">업무 보고서</h1>

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
         <input type="text" id="WordNo" name="WordNo" style="border:0pt;" value="상신 시 자동으로 등록됩니다." size='30' readonly />
      </span>
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
      <td style="border-top: none;">
            <input type="text" name="OrderTitle1" value="" readonly class="form_transparent" style='width:100%;line-height:21px;'>
         </td>
      <td style="border-top: none;">
            <input type="text" name="OrderTitle2" value="" readonly class="form_transparent" style='width:100%;line-height:21px;'>
         </td>
      <td style="border-top: none;">
            <input type="text" name="OrderTitle3" value="" readonly class="form_transparent" style='width:100%;line-height:21px;'>
         </td>
      <td style="border-top: none;">
            <input type="text" name="OrderTitle4" value="" readonly class="form_transparent" style='width:100%;line-height:21px;'>
         </td>
      <td style="border-top: none;">
            <input type="text" name="OrderTitle5" value="" readonly class="form_transparent" style='width:100%;line-height:21px;'>
         </td>
   </tr>
<tr class="date" style="height:61px;">
   <!-- 결재 버튼/결재완료 서명 표시 영역 -->
         <td>
            <input type="text"   name="OrderName1" value="" readonly class="form_transparent" style='width:100%;'>
            <input type="hidden" name="OrderId1" value="ME">
         <!-- 지정/취소 버튼 -->               
         <div id="MembersFindCell2"  class="btn_page pad15l overf">
         <!-- 지정 -->
            <a class="openPopup"  href="myOrderUserAppointPopup.php?mode=order&number=2&total=5&WordUseHelper=Y">
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
            <a class="openPopup"  href="myOrderUserAppointPopup.php?mode=order&number=2&total=5&WordUseHelper=Y">
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
               <a class="openPopup"  href="myOrderUserAppointPopup.php?mode=order&number=3&total=5&WordUseHelper=Y">
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
               <a class="openPopup"  href="myOrderUserAppointPopup.php?mode=order&number=4&total=5&WordUseHelper=Y">
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
   </tr>                     <!-- 협조선 -->
                     <tr class="txt_ce" style="height:20px;">
   <th rowspan="3" 
      style="border-left: none; border-top: none; border-bottom: none;"
         >
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
               <a class="openPopup"  href="myOrderUserAppointPopup.php?mode=order&number=12&total=5&WordUseHelper=Y">
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
            <a class="openPopup"  href="myOrderUserAppointPopup.php?mode=order&number=12&total=5&WordUseHelper=Y">
               <span>지정</span>
               </a>
            </div>
         </td>
         <td>
                     <input type="text"   name="OrderName13" value="" readonly class="form_transparent" style='width:100%;'>
            <input type="hidden" name="OrderId13" value="">
                           <!-- 지정/취소 버튼 -->               <div id="MembersFindCell13"  class="btn_page pad15l overf">
                                       <!-- 지정 -->
                     <a class="openPopup"  href="myOrderUserAppointPopup.php?mode=order&number=13&total=5&WordUseHelper=Y">
                        <span>지정</span>
                     </a>
                                 </div>
                           </td>
         <td>
                     <input type="text"   name="OrderName14" value="" readonly class="form_transparent" style='width:100%;'>
            <input type="hidden" name="OrderId14" value="">
                           <!-- 지정/취소 버튼 -->               <div id="MembersFindCell14"  class="btn_page pad15l overf">
                                       <!-- 지정 -->
                     <a class="openPopup"  href="myOrderUserAppointPopup.php?mode=order&number=14&total=5&WordUseHelper=Y">
                        <span>지정</span>
                     </a>
                                 </div>
                           </td>
         <td>
                     <input type="text"   name="OrderName15" value="" readonly class="form_transparent" style='width:100%;'>
            <input type="hidden" name="OrderId15" value="">
                           <!-- 지정/취소 버튼 -->               <div id="MembersFindCell15"  class="btn_page pad15l overf">
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
   </tr>                  </table>
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
<td class="pad15l" colspan="3">부서이름</td>

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
<td class="pad15l " colspan="3">기안자 이름</td>

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
                        <input type="text" name="ReceiveTreeKeyName" value="" readonly class="left" style="width:494px;"/>
                        <span class="btn_page right">
                                                         <!-- 수신부서 지정 -->
                              <a class="cursor openPopupTreeKeyFind">
                                 <span class="txt_ce"style="width:80px;">수신부서 지정</span>
                              </a>
                        </span>
                     </span>
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
								
								
											<!-- 출장계 > 출장 보고서 -->
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
									<label class="vm">일</label>
									
									<span class="vm">(</span>
									<input type="text" name="OutTerm" value="" size="2" readonly  class="vm txt_ce">
									<label class="vm">일</label>
									<span class="vm">)</span>
					
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
						<tr>
							<th style="border-left: none;">출장보고</th>
							<td class="pad15l pad5tb">
									<textarea name="editor" id="editor" style="width:98%;height:50px;">&nbsp;</textarea>
											<script type="text/javascript">
													CKEDITOR.replace('editor');
											</script>
							</td>
						</tr>
						<tr>
							<th style="border-left: none;">출장여비</th>
							<td>
								<table id="expense_detail" class="eword_meta">
									<col class="eword_th_width">
									<col>
									<col class="eword_th_width">
									<col>
									<tr class="eword_meta_height">
										<th style="border-top: none; border-left: none;">일비</th>
										<td class="pad15l" style="border-top: none;">
																							<input name="OutWorkExpense" type="text" value="" style="width:87%;" onkeypress="num_only3(event, 'int');" onkeyup='auto_comma2(event, this.form, this);' onblur='AutoExpenseCalculation();' >
																						원
										</td>
										<th style="border-top: none;">숙박비</th>
										<td class="pad15l" style="border-top: none;">
																							<input name="OutHotelExpense" type="text" value="" style="width:87%;" onkeypress="num_only3(event, 'int');" onkeyup='auto_comma2(event, this.form, this);' onblur='AutoExpenseCalculation();' >
																						원
										</td>
									</tr>
									<tr class="eword_meta_height">
										<th style="border-left: none;">식비</th>
										<td class="pad15l">
																							<input name="OutFoodExpense" type="text" value="" style="width:87%;" onkeypress="num_only3(event, 'int');" onkeyup='auto_comma2(event, this.form, this);' onblur='AutoExpenseCalculation();' >
																						원
										</td>
										<th>교통비</th>
										<td class="pad15l">
																							<input name="OutTrafficExpense" type="text" value="" style="width:87%;" onkeypress="num_only3(event, 'int');" onkeyup='auto_comma2(event, this.form, this);' onblur='AutoExpenseCalculation();' >
																						원
										</td>
									</tr>
									<tr class="eword_meta_height">
										<th style="border-left: none;">기타비</th>
										<td class="pad15l">
																							<input name="OutEtcExpense" type="text" value="" style="width:87%;" onkeypress="num_only3(event, 'int');" onkeyup='auto_comma2(event, this.form, this);' onblur='AutoExpenseCalculation();' >
																						원
										</td>
										<th>합계</th>
										<td class="pad15l">
																							<input name="OutTotalExpense" type="text" value="" style="width:87%;" readonly>
																						원
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr class="eword_meta_height">
							<th style="border-left: none;">기타</th>
							<td class="pad15l">
																	<textarea name="OutEtc3" class="mar5tb" style="width:98%;height:50px;"></textarea>
															</td>
						</tr>
						<tr style="height:100px;">
							<td colspan="2" class="txt_ce"  style="border-left: none;">상기와 같이 출장 보고서를 제출하오니 재가바랍니다.</td>
						</tr>
									</table>
			</td>
		</tr>
	</table>
<%@ include file="/doc/doc_footer.jsp" %>


    