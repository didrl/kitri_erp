<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/side.jsp" %>

<!-- Page Content -->    
<div id="page-wrapper">

<div id="sub">
	<div id="title">
		<h2>
<!-- 업무일지 보기 -->
				<span class="buslog">업무일지 보기</span>
					</h2>
	</div>
	
	<div class="toparea mar10b">
		<span class="leftarea">
			<span class="btn">
				<!-- 목록 -->
				<a href="#goPageList" onclick="javascript:goPageList();">
					<img src="http://static.whoisdesk.net/Src/Img/Renewal/icon_list.gif" alt="" />
					목록
				</a>

				
					<!-- 인쇄 -->
					<a href="#printDiv" onclick="javascript:try { parent.Ext.Msg.alert('Groupware Demo','<span style=color:#C8C9CA;><br />데모 체험하기는 글쓰기 등록 및 수정이 제한되어 있습니다. <br /><br />이점 양해해주시기 바랍니다.</span>');return false; } catch(e) { try { parent.parent.Ext.Msg.alert('Groupware Demo','<span style=color:#C8C9CA;><br />데모 체험하기는 글쓰기 등록 및 수정이 제한되어 있습니다. <br /><br />이점 양해해주시기 바랍니다.</span>');return false; } catch(e) { alert('그룹웨어 데모에서는 사용하실 수 없습니다.');return false; } }printDiv();">
						<img src="http://static.whoisdesk.net/Src/Img/Renewal/icon_print.gif" alt="" />
						인쇄
					</a>
	
					<!-- WORD 다운받기 -->
					<a href="#setWordDown" onclick="javascript:try { parent.Ext.Msg.alert('Groupware Demo','<span style=color:#C8C9CA;><br />데모 체험하기는 글쓰기 등록 및 수정이 제한되어 있습니다. <br /><br />이점 양해해주시기 바랍니다.</span>');return false; } catch(e) { try { parent.parent.Ext.Msg.alert('Groupware Demo','<span style=color:#C8C9CA;><br />데모 체험하기는 글쓰기 등록 및 수정이 제한되어 있습니다. <br /><br />이점 양해해주시기 바랍니다.</span>');return false; } catch(e) { alert('그룹웨어 데모에서는 사용하실 수 없습니다.');return false; } }setWordDown();">
						<img src="http://static.whoisdesk.net/Src/Img/Renewal/Appr/icon_document-word.gif" alt="" />
						WORD 다운받기
					</a>
					
					<!-- PDF 다운받기 -->
										<a href="#blank-link" onclick="javascript:try { parent.Ext.Msg.alert('Groupware Demo','<span style=color:#C8C9CA;><br />데모 체험하기는 글쓰기 등록 및 수정이 제한되어 있습니다. <br /><br />이점 양해해주시기 바랍니다.</span>');return false; } catch(e) { try { parent.parent.Ext.Msg.alert('Groupware Demo','<span style=color:#C8C9CA;><br />데모 체험하기는 글쓰기 등록 및 수정이 제한되어 있습니다. <br /><br />이점 양해해주시기 바랍니다.</span>');return false; } catch(e) { alert('그룹웨어 데모에서는 사용하실 수 없습니다.');return false; } }">
											<img src="http://static.whoisdesk.net/Src/Img/Renewal/Appr/icon_document-pdf.gif" alt="" />
						PDF 다운받기
					</a>

					<!-- 글자크게 -->
					<a href="#setFontPlus" onclick="javascript:try { parent.Ext.Msg.alert('Groupware Demo','<span style=color:#C8C9CA;><br />데모 체험하기는 글쓰기 등록 및 수정이 제한되어 있습니다. <br /><br />이점 양해해주시기 바랍니다.</span>');return false; } catch(e) { try { parent.parent.Ext.Msg.alert('Groupware Demo','<span style=color:#C8C9CA;><br />데모 체험하기는 글쓰기 등록 및 수정이 제한되어 있습니다. <br /><br />이점 양해해주시기 바랍니다.</span>');return false; } catch(e) { alert('그룹웨어 데모에서는 사용하실 수 없습니다.');return false; } }setFontPlus('view_con1', 'view_con2', 'view_con3');" onfocus="this.blur();">
						<img src="http://static.whoisdesk.net/Src/Img/Renewal/icon_plus_sm.gif" align="absmiddle" />
						글자크게
					</a>
					
					<!-- 글자작게 -->
					<a href="#setFontMinus" onclick="javascript:try { parent.Ext.Msg.alert('Groupware Demo','<span style=color:#C8C9CA;><br />데모 체험하기는 글쓰기 등록 및 수정이 제한되어 있습니다. <br /><br />이점 양해해주시기 바랍니다.</span>');return false; } catch(e) { try { parent.parent.Ext.Msg.alert('Groupware Demo','<span style=color:#C8C9CA;><br />데모 체험하기는 글쓰기 등록 및 수정이 제한되어 있습니다. <br /><br />이점 양해해주시기 바랍니다.</span>');return false; } catch(e) { alert('그룹웨어 데모에서는 사용하실 수 없습니다.');return false; } }setFontMinus('view_con1', 'view_con2', 'view_con3');" onfocus="this.blur();">
						<img src="http://static.whoisdesk.net/Src/Img/Renewal/icon_all_close.gif" align="absmiddle" />
						글자작게
					</a>

					<!-- 미확인 업무일지 -->
										
					<!-- 이전글 -->
										
					<!-- 미확인 업무일지 -->
										
					<!-- 다음글 -->
										
				 
			</span>
		</span>

		<span class="rightarea">
			<span class="btn">

									<!-- 업무일지 제출하기 -->
										
					<!-- 수정 -->
										
					<!-- 삭제 -->
										
					<!-- 결재로그 -->
					<a id="btnApproveLog" href="#btnApproveLog">
						<img src="http://static.whoisdesk.net/Src/Img/Renewal/icon_kword.gif">
						결재로그
					</a>
	
							</span>
		</span>
	</div>
	
	<!--업무일지 -->
	<!-- JOBLOG FORM START -->
	<span id="objPrint">
		<table width="98%" border="0" cellpadding="0" cellspacing="0" style="table-layout: fixed; margin-left: 1%;">
			<form name="form" method="post" action='prc.php' enctype='multipart/form-data'>
				<input type="hidden" name="mode">
				<input type="hidden" name="presave">
				<input type="hidden" name="orderLine">
				<input type="hidden" name="Id" value="">
				<input type="hidden" name="Idx" value="16">
				<input type="hidden" name="Date" value="">
				<input type="hidden" name="listPageNow" value="1">
				<input type="hidden" name="returnPage" value="receive.php">
				<input type="hidden" name="receiveDate" value="">
				<input type="hidden" name="tempCategory" value="D">
				<input type="hidden" name="ApproveId1" value="">
				<input type="hidden" name="ApproveId2" value="">
				<input type="hidden" name="ApproveId3" value="">
				<input type="hidden" name="ApproveId4" value="">
				<input type="hidden" name="ApproveId5" value="">
				<input type="hidden" name="ReceiveTreeKey" value="">
				<input type="hidden" name="ReferenceUser" value="">
				<input type="hidden" name="Stat" value="1">

				<tr>
					<td class="pad5b">
						<table width="100%" border="1" cellpadding="0" cellspacing="1" bgcolor="#D4D4D4">
							<tr align="center">
								<td height="80" colspan="6" bgcolor="#FFFFFF">
									<!-- 업무일지 -->
									<div style="padding: 10px; font-size: 45px; font-weight: bold;">업무일지</div>
								</td>
							</tr>
							<tr align="center">
								<!-- 소속 -->
								<td width="10%" height="30" bgcolor="#F5F5F5" class="report_01">소 속</td>
								<td width="30%" bgcolor="#FFFFFF"></td>
								<!-- 성명 -->
								<td width="10%" height="30" bgcolor="#F5F5F5" class="report_01">성 명</td>
								<td width="20%" bgcolor="#FFFFFF"></td>
								<!-- 작성일 -->
								<td height="30" bgcolor="#F5F5F5" class="report_01">작성일</td>
								<td width="20%" bgcolor="#FFFFFF"></td>
							</tr>
						</table>
					</td>
				</tr>
				
				<tr>
					<td class="pad5b">
						<table width="100%" border="1" cellpadding="0" cellspacing="1" bgcolor="#D4D4D4">
							<tr align="center" bgcolor="#FFFFFF">
								<!-- 결재 -->
								<td width="10%" height="70" bgcolor="#F5F5F5" class="report_01" align="center" rowspan="3">
									결 재
									<input type='text' name='ApprovalSection' style='width: 1px; height: 1px; border: 0px;' readonly>
								</td>
								<td width="18%" height="30">
									<div id='ApproveUserInfo1' class='report_01'></div>
								</td>
								<td width="18%" height="30">
									<div id='ApproveUserInfo2' class='report_01'></div>
								</td>
								<td width="18%" height="30">
									<div id='ApproveUserInfo3' class='report_01'></div>
								</td>
								<td width="18%" height="30">
									<div id='ApproveUserInfo4' class='report_01'></div>
								</td>
								<td width="18%" height="30">
									<div id='ApproveUserInfo5' class='report_01'></div>
								</td>
							</tr>
							<tr align="center" bgcolor="#FFFFFF">
								<td width="18%" height="50">
									<table cellpadding='0' cellspacing='0' border='1'>
										<tr>
											<td>
												<div id='ApproveButton1'>
																<div style='width:41px; height:41px; overflow:hidden; margin:auto; margin-bottom:3px'><img src='' width='41' border=0 align='absmiddle' height='41' title=''></div>
																									</div>
											</td>
										</tr>
									</table>
								</td>
								<td width="18%" height="50">
									<table cellpadding='0' cellspacing='0' border='1'>
										<tr>
											<td>
												<div id='ApproveButton2'>
																											
																									</div>
											</td>
										</tr>
									</table>
								</td>
								<td width="18%" height="50">
									<table cellpadding='0' cellspacing='0' border='1'>
										<tr>
											<td>
												<div id='ApproveButton3'>
																											
																									</div>
											</td>
										</tr>
									</table>
								</td>
								<td width="18%" height="50">
									<table cellpadding='0' cellspacing='0' border='1'>
										<tr>
											<td>
												<div id='ApproveButton4'>
																											
																									</div>
											</td>
										</tr>
									</table>
								</td>
								<td width="18%" height="50">
									<table cellpadding='0' cellspacing='0' border='1'>
										<tr>
											<td>
												<div id='ApproveButton5'>
																											
																									</div>
											</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr align="center" bgcolor="#FFFFFF">
								<td width="18%" height="30">
									<div id='ApproveButton1' style='width: 77px;'></div>
								</td>
								<td width="18%" height="30">
									<div id='ApproveButton2'></div>
								</td>
								<td width="18%" height="30">
									<div id='ApproveButton3'></div>
								</td>
								<td width="18%" height="30">
									<div id='ApproveButton4'></div>
								</td>
								<td width="18%" height="30">
									<div id='ApproveButton5'></div>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				
				<tr>
					<td class="pad5b">
						<table width="100%" border="1" cellpadding="0" cellspacing="1" bgcolor="#D4D4D4">
							<tr>
								<td width="10%" height="30" bgcolor="#F5F5F5" class="report_01" align="center">수신부서</td>
								<td height="30" bgcolor="#FFFFFF" style="padding-left: 10px">
									<div style="width: 100%">
																				<span style="width: 80%; float: left">  </span>
										<span style="float: right">
											<span class="btn_page">
												<a class="cursor openPopupTreeKeyView">
													<span>수신부서 보기</span>
												</a>
											</span>
										</span>
																			</div>
								</td>
							</tr>
							<tr>
								<td width="10%" height="30" bgcolor="#F5F5F5" class="report_01" align="center">참조자</td>
								<td height="30" bgcolor="#FFFFFF" style="padding-left: 10px">
									<div style="width: 100%">
																				<span style="width: 80%; float: left">  </span>
										<span style="float: right">
											<span class="btn_page">
												<a class="cursor openPopupReferenceUserView">
													<span>참조자 보기</span>
												</a>
											</span>
										</span>
																			</div>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				
				<tr>
					<td class="pad5b">
						<table width="100%" border="1" cellpadding="0" cellspacing="1" bgcolor="#D4D4D4">
							<!-- 제목 -->
							<tr>
								<td width="10%" height="30" bgcolor="#F5F5F5" class="report_01" align="center">제 목</td>
								<td height="30" bgcolor="#FFFFFF" style='padding-left: 10px;'></td>
							</tr>
							<tr>
								<!-- 일지작성 -->
								<td width="10%" height="70" bgcolor="#F5F5F5" class="report_01" align="center">일지작성</td>
								<td bgcolor="#FFFFFF">
									<div style='padding: 10px;'>
										일일 업무일지
																			</div>
																		<div style='padding-left: 10px;'>
										<div style='float: left;' class='pad1tb'></div>
										<div style='float: left;' class='pad1tb'></div>
										<div style='float: left;' class='pad1tb'></div>
									</div>
																	</td>
							</tr>
						</table>
					</td>
				</tr>
				
				<tr>
					<td class="pad5b">
						<table width="100%" border="1" cellpadding="0" cellspacing="1" bgcolor="#D4D4D4">
							<tr>
								<td height="30" bgcolor="#F5F5F5" class="report_01" style="padding-left: 10px;">
									<span id="CategoryMenu01">금일내용</span>
								</td>
							</tr>
							<tr>
								<td height="30" bgcolor="#FFFFFF" style='padding: 10px;' id="view_con1">
								
								</td>
							</tr>
						</table>
					</td>
				</tr>
				
				<tr>
					<td class="pad5b">
						<table width="100%" border="1" cellpadding="0" cellspacing="1" bgcolor="#D4D4D4">
							<tr>
								<td height="30" bgcolor="#F5F5F5" class="report_01" style="padding-left: 10px;">
									<span id="CategoryMenu02">익일내용</span>
								</td>
							</tr>
							<tr>
								<td height="30" bgcolor="#FFFFFF" style='padding: 10px;' id="view_con2">
								</td>
							</tr>
						</table>
					</td>
				</tr>
				
				<tr>
					<td class="pad5b">
						<table width="100%" border="1" cellpadding="0" cellspacing="1" bgcolor="#D4D4D4">
							<!-- 특이사항 및 건의사항 -->
							<tr>
								<td height="30" bgcolor="#F5F5F5" class="report_01" style="padding-left: 10px;">특이사항 및 건의사항</td>
							</tr>
							<tr>
								<td height="30" bgcolor="#FFFFFF" style='padding: 10px;' id="view_con3">&nbsp;</td>
							</tr>
						</table>
					</td>
				</tr>
				
				<tr>
					<td class="pad5b">
						<table width="100%" border="1" cellpadding="0" cellspacing="1" bgcolor="#D4D4D4">
							<tr>
								<!-- 파일 첨부 -->
								<td width="15%" height="30" bgcolor="#F5F5F5" class="report_01" style="padding-left: 10px;">파일 첨부</td>
								<td bgcolor="#FFFFFF">
									<table width="100%" border="0" cellspacing="0" cellpadding="10">
										<tr>
											<td class="pad10l pad10t pad10b">
			<table width='100%' border='1' cellspacing='0' cellpadding='0'>
            <tr>
                <td>첨부된 파일이 없습니다.</td>
            </tr>
            </table>
			</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				
				
	<tr>
		 <td>
			<table width='100%' border='1' cellpadding='0' cellspacing='1' bgcolor='#D4D4D4'>
			<tr>
				<td height='30' bgcolor='#F5F5F5' class='report_01' style='padding-left:10px;'>
					의견
				</td>
			</tr>
			<tr>
				<td style='background-color: #ffffff'>
					<div id='layoutAdminMsg' style='padding: 5px'>&nbsp;</div>
				</td>
			</tr>
			</table>
		 </td>
	</tr>
	<tr>
		<td height='5'></td>
	</tr>
	 
				
								<tr>
					<td align="center">
						<a name="AgreeList"></a>
						<table width="100%" border="1" cellpadding="0" cellspacing="1" bgcolor="#D4D4D4" style="table-layout: fixed;">
							<tr>
								<!-- 의견 등록 -->
								<td width="20%" height="60" bgcolor="#F5F5F5" class="report_01" style="padding-left: 10px;" align="left">의견 등록</td>
								<td width="80%" bgcolor="#FFFFFF" style="padding-left: 5px;">
									<textarea name="editor" id="editor" cols="80" rows="4" style="width: 80%" class="left pad5l pad5r pad5b"></textarea>
										<script type="text/javascript">
											CKEDITOR.replace('editor');
										</script>
									<!-- 등록 -->
									<span class="btn_page2 left pad5l mar5t">
										<a href="#blank-link" onclick="javascript:try { parent.Ext.Msg.alert('Groupware Demo','<span style=color:#C8C9CA;><br />데모 체험하기는 글쓰기 등록 및 수정이 제한되어 있습니다. <br /><br />이점 양해해주시기 바랍니다.</span>');return false; } catch(e) { try { parent.parent.Ext.Msg.alert('Groupware Demo','<span style=color:#C8C9CA;><br />데모 체험하기는 글쓰기 등록 및 수정이 제한되어 있습니다. <br /><br />이점 양해해주시기 바랍니다.</span>');return false; } catch(e) { alert('그룹웨어 데모에서는 사용하실 수 없습니다.');return false; } }setAdminMsgSubmitChk();">
											<span>등록</span>
										</a>
									</span>

								</td>
							</tr>
						</table>
					</td>
				</tr>
				
				<tr>
					<td align="center" height="20">&nbsp;</td>
				</tr>

			</form>
		</table>
	</span>

	<!-- 
	<div>
				<table width='100%' border='0' cellpadding='0' cellspacing='1' bgcolor='#D4D4D4'>
			<tr>
				<td width='20%' height='30' align='center' bgcolor='#F5F5F5' style='font-weight:bold;'>
					다음글
				</td>
				<td width='80%' bgcolor='#FFFFFF' style='padding-left:10px;'>
											다음글이 없습니다.
									</td>
			</tr>
			<tr>
				<td width='20%' height='30' align='center' bgcolor='#F5F5F5' style='font-weight:bold;'>
					이전글
				</td>
				<td width='80%' bgcolor='#FFFFFF' style='padding-left:10px;'>
											이전글이 없습니다.
									</td>
			</tr>
		</table>
			</div>
	 -->

	<!-- /JOBLOG FORM END -->
	<span ID="objContents1">
		<!---->
		<!--2-->

	</span>
	<div ID="objContents2">
		<!-- 3 -->
	</div>
	<div ID="objContents3">
		<!--  4 -->
	</div>

	<!--업무일지 -->
	<div class="btmarea">
		<span class="leftarea">
			<span class="btn">
				<a href="#goPageList" onclick="javascript:goPageList();">
					<img src="http://static.whoisdesk.net/Src/Img/Renewal/icon_list.gif" alt="" />
					목록
				</a>

									<a href="#printDiv" onclick="javascript:try { parent.Ext.Msg.alert('Groupware Demo','<span style=color:#C8C9CA;><br />데모 체험하기는 글쓰기 등록 및 수정이 제한되어 있습니다. <br /><br />이점 양해해주시기 바랍니다.</span>');return false; } catch(e) { try { parent.parent.Ext.Msg.alert('Groupware Demo','<span style=color:#C8C9CA;><br />데모 체험하기는 글쓰기 등록 및 수정이 제한되어 있습니다. <br /><br />이점 양해해주시기 바랍니다.</span>');return false; } catch(e) { alert('그룹웨어 데모에서는 사용하실 수 없습니다.');return false; } }printDiv();">
						<img src="http://static.whoisdesk.net/Src/Img/Renewal/icon_print.gif" alt="" />
						인쇄
					</a>
	
					<a href="#setFontPlus" onclick="javascript:try { parent.Ext.Msg.alert('Groupware Demo','<span style=color:#C8C9CA;><br />데모 체험하기는 글쓰기 등록 및 수정이 제한되어 있습니다. <br /><br />이점 양해해주시기 바랍니다.</span>');return false; } catch(e) { try { parent.parent.Ext.Msg.alert('Groupware Demo','<span style=color:#C8C9CA;><br />데모 체험하기는 글쓰기 등록 및 수정이 제한되어 있습니다. <br /><br />이점 양해해주시기 바랍니다.</span>');return false; } catch(e) { alert('그룹웨어 데모에서는 사용하실 수 없습니다.');return false; } }setFontPlus('view_con1', 'view_con2', 'view_con3');" onfocus="this.blur();">
						<img src="http://static.whoisdesk.net/Src/Img/Renewal/icon_plus_sm.gif" align="absmiddle" />
						글자크게
					</a>
					<a href="#setFontMinus" onclick="javascript:try { parent.Ext.Msg.alert('Groupware Demo','<span style=color:#C8C9CA;><br />데모 체험하기는 글쓰기 등록 및 수정이 제한되어 있습니다. <br /><br />이점 양해해주시기 바랍니다.</span>');return false; } catch(e) { try { parent.parent.Ext.Msg.alert('Groupware Demo','<span style=color:#C8C9CA;><br />데모 체험하기는 글쓰기 등록 및 수정이 제한되어 있습니다. <br /><br />이점 양해해주시기 바랍니다.</span>');return false; } catch(e) { alert('그룹웨어 데모에서는 사용하실 수 없습니다.');return false; } }setFontMinus('view_con1', 'view_con2', 'view_con3');" onfocus="this.blur();">
						<img src="http://static.whoisdesk.net/Src/Img/Renewal/icon_all_close.gif" align="absmiddle" />
						글자작게
					</a>
	
	
										
										
										
									
							</span>
		</span>

		<span class="rightarea">
			<span class="btn">

														
										
									
							</span>
		</span>
	</div>
	<!--  //검색 버튼 영역 -->
	<!--업무일지 -->
	<form name="form2" style="display: none;">
		<textarea name="ContentThisDay"></textarea>
		<textarea name="ContentThisWeek"></textarea>
		<textarea name="ContentThisMonth"></textarea>
	</form>
</div>

<script type="text/javascript" src="http://js.whoisdesk.net/Src/WebCommon/Script/preventDuplicateSubmit.js"></script>
<script type="text/javascript">

$(function() {

	//결재선 지정하기(관리팝업)
	$('.openPopupManageOrder').click(function(){

		var dateObj = new Date();
		var dummy = dateObj.getTime();
		var url = 'orderLineSet.php?dummy='+dummy;
		$.openDOMWindow({
			height:500,
			width:600,
			loader:1,
			modal : 1,
			overlayColor: '#C2C2C2',
			overlayOpacity : '50',
			windowSource:'iframe',
			windowSourceURL: url,
			borderColor: '#737373',
			borderSize: 1,
			windowPadding:0
		});
	});

	//결재선 지정
	$('.openPopupOrder').openDOMWindow({
		height:510,
		width:478,
		eventType:'click',
		loader:1,
		modal : 1,
		overlayColor: '#C2C2C2',
		overlayOpacity : '50',
		windowSource:'iframe',
		borderColor: '#737373',
		borderSize: 1,
		windowPadding:0
	});

	// 캘린더
	$('#LogDay').datepick({
		renderer: $.extend({}, $.datepick.themeRollerRenderer, {picker: $.datepick.themeRollerRenderer.picker.replace(/\{button:clear\}/, '')}),
		showTrigger: '<img src="http://static.whoisdesk.net/Src/Img/Renewal/icon_calendar.gif" alt="날짜선택" class="vm">'
	});
	$('#LogWeek').datepick({
		renderer: $.extend({}, $.datepick.themeRollerRenderer, {picker: $.datepick.themeRollerRenderer.picker.replace(/\{button:clear\}/, '')}),
		rangeSelect: true,
		showOtherMonths: true,
		selectOtherMonths: true,
		showTrigger: '<img src="http://static.whoisdesk.net/Src/Img/Renewal/icon_calendar.gif" alt="날짜선택" class="vm">'
	});
	$('#LogMonth').datepick({
		renderer: $.extend({}, $.datepick.themeRollerRenderer, {picker: $.datepick.themeRollerRenderer.picker.replace(/\{button:clear\}/, '')}),
		dateFormat: 'yyyy-mm',
		onShow: $.datepick.monthOnly,
		showTrigger: '<img src="http://static.whoisdesk.net/Src/Img/Renewal/icon_calendar.gif" alt="날짜선택" class="vm">'
	});

	//결재로그
	$('#btnApproveLog').click(function(){
		var dateObj = new Date();
		var dummy = dateObj.getTime();
		var	didx = $("input[name='Idx']").val();
		var url = 'approveLogPopup.php?dummy='+dummy+'&idx='+didx;
		$.openDOMWindow({
			height:300,
			width:400,
			loader:1,
			modal : 1,
			overlayColor: '#C2C2C2',
			overlayOpacity : '50',
			windowSource:'iframe',
			windowSourceURL: url,
			borderColor: '#737373',
			borderSize: 1,
			windowPadding:0
		});
	});

	//수신부서 지정 팝업
	$('.openPopupTreeKeyFind').click(function() {
		var dateObj = new Date();
		var dummy = dateObj.getTime();

		var pars = $('input[name="ReceiveTreeKey"]').val();
		var url = 'receiveTreeKeyFind.php?dummy='+dummy;
		url += '&treeKeys='+pars;

		$.openDOMWindow({
			height:577,
			width:690,
			loader:1,
			modal : 1,
			overlayColor: '#C2C2C2',
			overlayOpacity : '50',
			windowSource:'iframe',
			windowSourceURL: url,
			borderColor: '#737373',
			borderSize: 1,
			windowPadding:0
		});
	});

	//수신부서 보기 팝업 (지정한 수신부서)
	$('.openPopupTreeKeyView').click(function(){

		var dateObj = new Date();
		var dummy = dateObj.getTime();

		var no = $('input[name="No"]').val();
		var pars = $('input[name="ReceiveTreeKey"]').val();
		var url = 'receiveTreeKeyView.php?dummy='+dummy+'&treeKeys='+pars;
		$.openDOMWindow({
			height:500,
			width:500,
			loader:1,
			modal : 1,
			overlayColor: '#C2C2C2',
			overlayOpacity : '50',
			windowSource:'iframe',
			windowSourceURL: url,
			borderColor: '#737373',
			borderSize: 1,
			windowPadding:0
		});
	});

	//참조자 지정 팝업
	$('.openPopupReferenceUser').click(function(){
		var dateObj = new Date();
		var dummy = dateObj.getTime();
		var pars = $('input[name="ReferenceUser"]').val();
		var url = 'referenceUserFind.php?dummy='+dummy+'&ids='+pars;

		$.openDOMWindow({
			height:577,
			width:690,
			loader:1,
			modal : 1,
			overlayColor: '#C2C2C2',
			overlayOpacity : '50',
			windowSource:'iframe',
			windowSourceURL: url,
			borderColor: '#737373',
			borderSize: 1,
			windowPadding:0
		});
	});

	//참조자 보기 팝업 (지정한 참조자 보기)
	$('.openPopupReferenceUserView').click(function(){

		var dateObj = new Date();
		var dummy = dateObj.getTime();

		var no = $('input[name="No"]').val();
		var pars = $('input[name="ReferenceUser"]').val();
		var url = 'referenceUserView.php?dummy='+dummy+'&ids='+pars;

		$.openDOMWindow({
			height:500,
			width:500,
			loader:1,
			modal : 1,
			overlayColor: '#C2C2C2',
			overlayOpacity : '50',
			windowSource:'iframe',
			windowSourceURL: url,
			borderColor: '#737373',
			borderSize: 1,
			windowPadding:0
		});
		return false;
	});

	//PDF다운받기 팝업
	$('.openPopupPdf').openDOMWindow({ 
		height:300, 
		width:370, 
		eventType:'click', 
		loader:1, 
		modal : 1,
		overlayColor: '#C2C2C2',
		overlayOpacity : '50',
		windowSource:'iframe', 
		borderColor: '#737373',
		borderSize: 1,
		windowPadding:0,
		loaderHeight:7, 
		loaderWidth:18 
	});

});

function setPopupClose()
{
	$.closeDOMWindow();
	if(document.form.Subject)
		document.form.Subject.focus();
}

// 결재자 선택 취소 (지정버튼 업데이트)
function membersCancel(num)
{
	if( !num ) num = 1;

	eval( "document.form.ApproveId"+num+".value = '' ");
	eval( "document.getElementById('ApproveUserInfo"+num+"').innerHTML = '' ");

	var btn = '<span class="btn_page"><a class="openPopupOrder'+num+'" href="orderUserAppointPopup.php?num='+num+'">';
	btn += '<span><img src="http://static.whoisdesk.net/Src/Img/Renewal/Appr/icon_user.gif" alt="" class="vm" />';
	btn += '지정</span></a></span>';

	var tmp = eval("document.getElementById('ApproveButton"+num+"')");
	tmp.innerHTML = btn;

	$('.openPopupOrder'+num).openDOMWindow({
		height:510,
		width:478,
		eventType:'click',
		loader:1,
		modal : 1,
		overlayColor: '#C2C2C2',
		overlayOpacity : '50',
		windowSource:'iframe',
		borderColor: '#737373',
		borderSize: 1,
		windowPadding:0
	});
}

//결재자 취소시 (지정버튼 업데이트)
function btnAppoint(num)
{
	var btn = '<span class="btn_page"><a class="openPopupOrder'+num+'" href="orderUserAppointPopup.php?num='+num+'">';
	btn += '<span><img src="http://static.whoisdesk.net/Src/Img/Renewal/Appr/icon_user.gif" alt="" class="vm" />';
	btn += '지정</span></a></span>';

}

//결재자 지정시 (취소버튼 업데이트)
function btnCancel(num)
{
	var btn = '<span class="btn_page">';
	btn += '<a href="#blank-link" onclick="membersCancel('+num+');">';
	btn += '<span><img src="http://static.whoisdesk.net/Src/Img/Renewal/icon_cross.png" alt="" class="vm" />';
	btn += '취소';
	btn += '</span></a>';

	document.getElementById('ApproveButton'+num).innerHTML = btn;
}

function setAdminMsgSubmitChk()
{
	var f = document.form;

	if( f.AdminMsgContents.value == '')
	{
		alert('의견을 입력해주세요.')
		f.AdminMsgContents.focus();
		return;
	}

	if( f.returnPage.value == '' ) f.returnPage.value = 'receive.php';

	f.mode.value = 'adminMsg';
	f.action = 'prc.php';
	f.submit();
}

function goPageList()
{
	var dateObj = new Date();
	var dummy = dateObj.getTime();

	f = document.form;
	var returnPage = f.returnPage.value;
	var listPageNow = f.listPageNow.value;
	var category = f.tempCategory.value;
	var receiveDate = f.receiveDate.value;

	if( !returnPage ) returnPage = 'main.php';

	var url = returnPage + '?dummy='+dummy;
	url += '&pageUrl=JTI2ZHVtbXklM0QxNDY3NzExNjUxJTI2Q2F0ZWdvcnklM0QlMjZTZWFyY2hLZXklM0QlMjZTZWFyY2hWYWwlM0QlMjZQYWdlU2l6ZSUzRCUyNkZpZWxkU29ydCUzRCUyNlRyZWVLZXklM0QlMjZyZWNlaXZlRGF0ZSUzRCUyNg==||';

	if(returnPage == 'inquireList.php') 
	{
		history.back();
	}
	else
	{
		location.href = url;
	}
}

function goPageModify()
{
	var dateObj = new Date();
	var dummy = dateObj.getTime();

	f = document.form;
	var idx = f.Idx.value;
	var category = f.tempCategory.value;

	var url = '?dummy='+dummy;
	url += '&Idx='+idx;
	url += '&mode=write';
	url += '&Category='+category;

	location.href = url;
}

function submitPrc()
{
	f = document.form;

	if( !f.presave.value )
	{
		if( f.ApproveId1.value == '' )
		{
			alert('결재자를 지정하세요.');
			f.ApprovalSection.focus();
			return false;
		}
	}

	if( f.Subject.value == '' )
	{
		alert('제목을 입력하세요.');
		f.Subject.focus();
		return false;
	}

	tinyMCE.triggerSave();
	if( f.Contents.value == '' )
	{
		alert('업무내용을 입력하세요.');
		f.Contents.focus();
		return false;
	}

	return true;
}

function preSubmitPrc()
{
	f = document.form;

	f.presave.value = 'true';
	if( submitPrc() )
	{
		f.submit();
		preventDuplicateSubmit(
				'전송중입니다.',
				document.getElementById('preSubmitBtn'),
				document.getElementById('preSubmitBtnBottom')
				);
	}
}

function exitSubmitPrc()
{
	f = document.form;

	f.presave.value = '';
	if( submitPrc() )
	{
		if(confirm('작성한 업무일지를 해당 결재자에게 보내시겠습니까 ? \n\n결재자의 업무확인 전까지는 수정이 가능합니다.'))
		{
			f.submit();
			preventDuplicateSubmit(
					'전송중입니다.',
					document.getElementById('exitSubmitBtn'),
					document.getElementById('exitSubmitBtnBottom')
					);
		}
	}
}

function LogDel()
{
	var f = document.form;
	var Idx = f.Idx.value;

	if(
		Idx > 0 &&
		confirm('해당 업무일지를 삭제 하시겠습니까 ?')
		)
	{
		f.mode.value = 'delete';
		f.action = 'prc.php';
		f.submit();
	}
}

function CategorySet()
{
	var f = document.form;
	var g = document.form2;

	var view_gbn1 = document.getElementById('view_gbn1');
	var view_gbn2 = document.getElementById('view_gbn2');
	var view_gbn3 = document.getElementById('view_gbn3');

	var ed = tinyMCE.get('Contents');
	
	if( f.Category[0].checked == true )
	{
		document.getElementById('view_gbn1').style.display = 'inline';
		document.getElementById('view_gbn2').style.display = 'none';
		document.getElementById('view_gbn3').style.display = 'none';
		document.getElementById("CategoryMenu01").innerHTML = '금일의 업무';
		document.getElementById("CategoryMenu02").innerHTML = '익일의 계획';

		// Recent Data Insert
		if( f.Idx.value == '' )
		{
			ed.setContent(g.ContentThisDay.value);
		}

	}
	else if( f.Category[1].checked == true )
	{
		document.getElementById('view_gbn1').style.display = 'none';
		document.getElementById('view_gbn2').style.display = 'inline';
		document.getElementById('view_gbn3').style.display = 'none';
		document.getElementById("CategoryMenu01").innerHTML = '금주의 업무';
		document.getElementById("CategoryMenu02").innerHTML = '차주의 계획';

		// Recent Data Insert
		if( f.Idx.value == '' )
		{
			ed.setContent(g.ContentThisWeek.value);
		}

	}
	else if( f.Category[2].checked == true )
	{
		document.getElementById('view_gbn1').style.display = 'none';
		document.getElementById('view_gbn2').style.display = 'none';
		document.getElementById('view_gbn3').style.display = 'inline';
		document.getElementById("CategoryMenu01").innerHTML = '이번달 업무';
		document.getElementById("CategoryMenu02").innerHTML = '다음달 계획';

		// Recent Data Insert
		if( f.Idx.value == '' )
		{
			ed.setContent(g.ContentThisMonth.value);
		}

	}

}

// 결재 처리
function setJoBlogApprove( number )
{
	var f = document.form;

	f.mode.value = 'approve';
	f.orderLine.value = number;

	f.action = 'prc.php';
	f.submit();

	preventDuplicateSubmit('전송중입니다.');
}


/*
function getOrderLineInfo( idx )
{
	if( idx )
	{
		window.open('orderLineInfoApply.php?Idx='+idx, 'orderLineInfoApply', "top=0,left=10,width=10,height=10,scrollbars=no");
	}

	//document.all.OrderLineInfo[0].selected = true;
}
*/

// 지시사항 등록
function adminMsgWrite()
{
	var dateObj = new Date();
	var dummy = dateObj.getTime();

	var f = document.form;
	var idx = f.Idx.value;
	var listPageNow = f.listPageNow.value;
	var returnPage = f.returnPage.value;
	var receiveDate = f.receiveDate.value;

	//window.open('adminMsg.php?Idx='+Idx, 'adminMsg', 'top=0,left=0,width=460,height=140');

	document.getElementById('light').style.display = 'block';
	document.getElementById('fade').style.display = 'block';
	var url = 'adminMsg.php?dummy='+dummy;
	url += '&Idx='+idx;
	url += '&listPageNow='+listPageNow;
	url += '&returnPage='+returnPage;
	url += "&receiveDate="+receiveDate;
	url += "&";

	setIframeSrc(url, 460, 150);
}

// 이전글, 다음글 보기
function goPageMove(idx, category)
{
	var dateObj = new Date();
	var dummy = dateObj.getTime();

	var f = document.form;
	var id			= f.Id.value;
	var returnpage	= f.returnPage.value;
	var listpagenow = f.listPageNow.value;
	var receiveDate = f.receiveDate.value;


	var url = "log.php?dummy="+dummy;
	url += "&Id="+id+"&Idx="+idx+"&Category="+category;
	url += "&mode=view&returnPage="+returnpage;
	url += "&listPageNow="+listpagenow;
	url += "&receiveDate="+receiveDate;
	url += "&";

	location.href = url;
}

// 부분인쇄관련
function printDiv()
{
	var dateObj = new Date();
	var dummy = dateObj.getTime();

	var f = document.form;
	var idx = f.Idx.value;

	document.getElementById('light').style.display = 'block';
	document.getElementById('fade').style.display = 'block';
	var url = 'logView.php?dummy='+dummy;
	url += '&Idx='+idx;
	url += '&mode=view';

	//setIframeSrc(url, 670, 600);
	//window.open(url, 'joblogPrint_'+idx, 'top=0,left=0,width=670,height=600,scrollbars=yes;');

	setIframeSrc2(url, 670, 480);
}

// WORD 다운
function setWordDown(){
	var dateObj = new Date();
	var dummy = dateObj.getTime();

	var f = document.form;
	var idx = f.Idx.value;

	var url = 'logView.php?dummy='+dummy;
	url += '&Idx='+idx;
	url += '&mode=view';
	url += '&type=word';

	location.href = url;
}

function setIframeSrc(url, width, height)
{
	var iframePopup2 = document.getElementById('iframePopup2');
	iframePopup2.src = 'about:blank';
	iframePopup2.style.display = 'none';

	var iframePopup = document.getElementById('iframePopup');
	iframePopup.src = url;
	iframePopup.width = width;
	iframePopup.height = height;
	iframePopup.style.display	= 'block';
}

function setIframeSrc2(url, width, height)
{
	var iframePopup = document.getElementById('iframePopup');
	iframePopup.src = 'about:blank';
	iframePopup.style.display = 'none';

	var iframePopup2 = document.getElementById('iframePopup2');
	iframePopup2.src = url;
	iframePopup2.width = width;
	iframePopup2.height = height;
	iframePopup2.style.display	= 'block';
}

// 업무일지 제출하기
function setJoblogOrderSend()
{
	var dateObj = new Date();
	var dummy = dateObj.getTime();

	var f = document.form;

	f.mode.value = 'solosubmit';
	f.action = 'prc.php?dummy='+dummy;
	f.submit();


	preventDuplicateSubmit(
			'전송중입니다.',
			document.getElementById('JoblogOrderSendBtn'),
			document.getElementById('JoblogOrderSendBtnBottom')
			);
}

// 해당 카테고리, 업무일지 시작일에 해당하는 받은 업무일지 리스트
function getThisDateReceiveList(category, receiveDate)
{
	var dateObj = new Date();
	var dummy = dateObj.getTime();

	var f = document.form;
	var listPageNow = f.listPageNow.value;

	var url = 'receive.php?dummy='+dummy;
	url += '&Category='+category;
	url += '&receiveDate='+receiveDate;
	url += '&listPageNow='+listPageNow;

	location.href = url;
}

function setFontPlus(id1, id2, id3)
{
	var l1 = eval("document.getElementById('"+id1+"')");
	var l2 = eval("document.getElementById('"+id2+"')");
	var l3 = eval("document.getElementById('"+id3+"')");

	var nSize1 = l1.style.fontSize  ? l1.style.fontSize  : '9pt';
	var iSize1 = parseInt(nSize1.replace('pt',''));

	var nSize2 = l2.style.fontSize  ? l2.style.fontSize  : '9pt';
	var iSize2 = parseInt(nSize2.replace('pt',''));

	var nSize3 = l3.style.fontSize  ? l3.style.fontSize  : '9pt';
	var iSize3 = parseInt(nSize3.replace('pt',''));

	if (iSize1 < 20)
	{
		l1.style.fontSize  = (iSize1 + 1) + 'pt';
		l1.style.lineHeight = '140%';

		l2.style.fontSize  = (iSize2 + 1) + 'pt';
		l2.style.lineHeight = '140%';

		l3.style.fontSize  = (iSize3 + 1) + 'pt';
		l3.style.lineHeight = '140%';
	}
}

function setFontMinus(id1, id2, id3)
{
	var l1 = eval("document.getElementById('"+id1+"')");
	var l2 = eval("document.getElementById('"+id2+"')");
	var l3 = eval("document.getElementById('"+id3+"')");

	var nSize1 = l1.style.fontSize ? l1.style.fontSize : '9pt';
	var iSize1 = parseInt(nSize1.replace('pt',''));

	var nSize2 = l2.style.fontSize ? l2.style.fontSize : '9pt';
	var iSize2 = parseInt(nSize2.replace('pt',''));

	var nSize3 = l3.style.fontSize ? l3.style.fontSize : '9pt';
	var iSize3 = parseInt(nSize3.replace('pt',''));

	if (iSize1 > 9)
	{
		l1.style.fontSize = (iSize1 - 1) + 'pt';
		l1.style.lineHeight = '140%';

		l2.style.fontSize = (iSize2 - 1) + 'pt';
		l2.style.lineHeight = '140%';

		l3.style.fontSize = (iSize3 - 1) + 'pt';
		l3.style.lineHeight = '140%';
	}
}

// Special Character Check
function checkSpecialChar()
{
	var lkeycode = window.event.keyCode;
	var sOrg = String.fromCharCode(lkeycode);
	noChar = /[\[\]`@\;\:+&\\=!#$%\-\_~*,.\{\}|/<\'\"^]/;

	if( sOrg.match(noChar) )
	{
		window.event.keyCode = 0;
	}
}

function getRequest(target, url, pars)
{
	$.ajax({
		type: "GET",
		url: url,
		data: pars,
		//async: true,
		cache: false,
		error:function(xhr, status, errorThrown)
		{
			alert(errorThrown+'\n'+status+'\n'+xhr.statusText);
		},
		success: function(html)
		{
		    //alert( "Data Result : " + html );
			document.getElementById(target).innerHTML = '';
			$("#"+target).append(html);
		}
	});

}

// 지시사항 처리
var reFlag = false;
var reIdx = '';
function getMsgIdx(el)
{
	var idx = el.split('_')[1];
	return idx;
}
function replyForm(el)
{
	if (!reFlag) {
		reIdx = getMsgIdx(el);
		$('#'+el).append('<div id="divReply" style="width:98%" class="clear"><span><textarea id="areaReply" class="left mar5r" style="background: #f4f4f4; border: 1px solid #d5d5d5; width: 80%; height: 50px"></textarea></span><span class="btn_page2 left pad5l mar5t"><a href="#blank-link" onclick="replySave(\''+el+'\');"><span><img src="http://static.whoisdesk.net/Src/Img/Renewal/icon_pencil2.gif" alt="" class="vm" />등록</span></a></span></div>');
		$('#'+el).focus();
		reFlag = true;
	} else {
		if (reIdx != getMsgIdx(el)) {
			$('#divReply').remove();
			reFlag = false;
			replyForm(el);
		} else {
			$('#divReply').remove();
			reFlag = false;
		}
	}
}
function replySave(el)
{
	var	didx = $("input[name='Idx']").val();
	var midx = getMsgIdx(el);
	var msg = $('#areaReply').val();
	$.ajax({
		type: 'POST',
		url: 'prc.php',
		data: 'mode=saveReplyMsg&didx='+didx+'&midx='+midx+'&msg='+msg,
		beforeSend: function() {
			$('#layoutAdminMsg').html('<img src="http://static.whoisdesk.net/Src/Img/Renewal/loading.gif" alt="" class="vm" />');
		},
		success: function(ret) {
			$('#layoutAdminMsg').html(ret);
		}
	});
}
function replyDelete(el)
{
	if (confirm('의견을 삭제하시겠습니까 ?')) {
		var	didx = $("input[name='Idx']").val();
		var midx = getMsgIdx(el);
		$.ajax({
			type: 'POST',
			url: 'prc.php',
			data: 'mode=deleteReplyMsg&didx='+didx+'&midx='+midx,
			beforeSend: function() {
				$('#layoutAdminMsg').html('<img src="http://static.whoisdesk.net/Src/Img/Renewal/loading.gif" alt="" class="vm" />');
			},
			success: function(ret) {
				$('#layoutAdminMsg').html(ret);
			}
		});
	}
}
</script>


<div id="light" class="white_content2">
	<table width='100%' height='100%' border='0'>
		<tr>
			<td align="center" valign="middle">
				<iframe id='iframePopup' name='iframePopup' frameborder='0' marginwidth='0' marginheight='0' scrolling='no'></iframe>
				<iframe id='iframePopup2' name='iframePopup2' frameborder='0' marginwidth='0' marginheight='0' scrolling='auto'></iframe>
			</td>
		</tr>
	</table>
</div>


<div id="fade" class="black_overlay2"></div>

<%@ include file="/common/end.jsp" %>

    