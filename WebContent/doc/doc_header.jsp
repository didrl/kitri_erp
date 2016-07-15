<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/common.jsp"%>

<!-- css & script src start -->
<!-- whois css -->
<link rel="stylesheet" type="text/css"
	href="http://css.whoisdesk.net/Src/Skin/Renewal/eword_common.css?v=20150706" />
<link rel="stylesheet" type="text/css"
	href="http://css.whoisdesk.net/Src/Skin/Renewal/eword_write.css?v=20150702" />
<!-- datepicker -->
<link
	href="${root}/webjars/bootstrap-datepicker/1.6.1/dist/css/bootstrap-datepicker.min.css"
	rel="stylesheet">
<script
	src="${root}/webjars/bootstrap-datepicker/1.6.1/dist/js/bootstrap-datepicker.min.js"></script>
<script
	src="${root}/webjars/bootstrap-datepicker/1.6.1/dist/locales/bootstrap-datepicker.ko.min.js"></script>
<!-- for time format -->
<script src='${root}/webjars/moment/2.14.1/moment.js'></script>
<!-- css & script src end -->

<!--script start -->
<script>
	$(document).ready(
			function() {
				$('#datepicker').datepicker();
				$('#datepicker').on(
						"changeDate",
						function() {
							$('#my_hidden_input').val(
									$('#datepicker').datepicker(
											'getFormattedDate'));
						});

				$('.input-daterange input').each(function() {
					$(this).datepicker("clearDates");
				});

				$('#sandbox-container .input-daterange').datepicker({
					format : "yyyy/mm/dd",
					todayBtn : "linked",
					clearBtn : true,
					language : "kr",
					todayHighlight : true,
					toggleActive : true,
					defaultViewDate : {
						year : 2016,
						month : 07,
						day : 07
					}
				});

			});
</script>

<script type="text/javascript">
	function golist(cellnum) {

		window
				.open(
						"${root}/organization/list.erp?cellnum=" + cellnum,
						"select",
						"top=200, left=300, width=400, height=280, menubar=no, status=no, toolbar=no, location=no, scrollbars=no");

	}
</script>
<!--script end -->

<div id="wrapper">
	<!-- Page Content -->
	<div id="page-wrapper">
		<div id="sub">



			<!-- 전자결재 문서   
	**** hidden 정리하기!!!! ****
	-->

			<form name="docform" id="docform" method="post" action=''
				enctype='multipart/form-data' class="mar10b black">

				<input type="hidden" name="doc_type_id" value=""> <input
					type="hidden" name="doc_id" value=""> <input type="hidden"
					name="doc_controller" value="">

				<form name="approvalfirm" id="approvalfirm">

					<input type="hidden" id="approval_1" name="approval_1" value=""> <input
						type="hidden" id="approval_2" name="approval_2" value=""> <input
						type="hidden" id="approval_3" name="approval_3" value=""> <input
						type="hidden" id="approval_4" name="approval_4" value="">
						<input type="hidden" id="approval_5" name="approval_5" value="">
							<input type="hidden" id="approval_11" name="approval_11" value=""> <input
						type="hidden" id="approval_12" name="approval_12" value=""> <input
						type="hidden" id="approval_13" name="approval_13" value=""> <input
						type="hidden" id="approval_14" name="approval_14" value="">
						<input type="hidden" id="approval_15" name="approval_15" value="">
				</form>

		


				<!-- 버튼 -->
				<br>
				<button type="button" class="btn btn-primary" id="reportDoc">상신하기</button>
				<button type="button" class="btn btn-primary" id="tmpsaveDoc">임시저장</button>

				<!-- 결재양식 제목 -->
				<h1 class="eword_maincolumn">${doc_type_name}</h1>

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
								<col style="width: 50%;">
								<!-- 문서번호, 결재선/협조선 -->
								<tr class="eword_meta_height">
									<th style="border-top: none; border-left: none;">문서번호</th>

									<td class="pad15l" colspan="3" style="border-top: none;">
										<span id="sub_subject"> <input type="text" id="doc_id"
											name="doc_id" style="border: 0pt;" value="상신 시 자동으로 등록됩니다."
											size='30' readonly />
									</span>
									</td>

									<td rowspan="6" style="border-top: none; border-right: none;">
										<table id="eword_orderline" class="eword_meta">
											<col class="orderline_th_width">
											<col class="orderline_width" span="5">
											<!-- 결재선 -->
											<tr class="txt_ce" style="height: 20px;">
												<th rowspan="3" style="border-left: none; border-top: none;">
													<!-- 결재선/협조선 제목 --> <!-- 결재 --> 결<br>
												<br>재
												</th>
												<!-- 결재자/협조자 직급 표시 영역 -->
												<td style="border-top: none;"><input type="text"
													name="grade_name1" value="" readonly
													class="form_transparent"
													style='width: 100%; line-height: 21px;'></td>
												<td style="border-top: none;"><input type="text"
													name="grade_name2" value="" readonly
													class="form_transparent"
													style='width: 100%; line-height: 21px;'></td>
												<td style="border-top: none;"><input type="text"
													name="grade_name3" value="" readonly
													class="form_transparent"
													style='width: 100%; line-height: 21px;'></td>
												<td style="border-top: none;"><input type="text"
													name="grade_name4" value="" readonly
													class="form_transparent"
													style='width: 100%; line-height: 21px;'></td>
												<td style="border-top: none;"><input type="text"
													name="grade_name5" value="" readonly
													class="form_transparent"
													style='width: 100%; line-height: 21px;'></td>
											</tr>
											<tr class="date" style="height: 61px;">
												<!-- 결재 버튼/결재완료 서명 표시 영역 -->
												<td><input type="text" name="appr_name" value=""
													readonly class="form_transparent" style='width: 100%;'>
													<input type="hidden" name="appr_name" value=""> <!-- 지정/취소 버튼 -->
													<div id="MembersFindCell1" class="btn_page pad15l overf">
														<!-- 지정 -->
														<a onclick="javascript:golist('1');"> <span>지정</span>
														</a> <input type="text" id="emp_name1" value="" disabled="disabled">
													</div></td>
												<td><input type="text" name="OrderName2" value=""
													readonly class="form_transparent" style='width: 100%;'>
													<input type="hidden" name="OrderId2" value=""> <!-- 지정/취소 버튼 -->
													<div id="MembersFindCell2" class="btn_page pad15l overf">
														<!-- 지정 -->
														<a onclick="javascript:golist('2');"> <span>지정</span>
														</a><input type="text" id="emp_name2" value="" disabled="disabled">
													</div></td>
												<td><input type="text" name="OrderName3" value=""
													readonly class="form_transparent" style='width: 100%;'>
													<input type="hidden" name="OrderId3" value=""> <!-- 지정/취소 버튼 -->
													<div id="MembersFindCell3" class="btn_page pad15l overf">
														<!-- 지정 -->
														<a onclick="javascript:golist('3');"> <span>지정</span>
														</a><input type="text" id="emp_name3" value="" disabled="disabled">
													</div></td>
												<td><input type="text" name="OrderName4" value=""
													readonly class="form_transparent" style='width: 100%;'>
													<input type="hidden" name="OrderId4" value=""> <!-- 지정/취소 버튼 -->
													<div id="MembersFindCell4" class="btn_page pad15l overf">
														<!-- 지정 -->
														<a onclick="javascript:golist('4');"> <span>지정</span>
														</a><input type="text" id="emp_name4" value="" disabled="disabled">
													</div></td>
												<td><input type="text" name="OrderName5" value=""
													readonly class="form_transparent" style='width: 100%;'>
													<input type="hidden" name="OrderId5" value=""> <!-- 지정/취소 버튼 -->
													<div id="MembersFindCell5" class="btn_page pad15l overf">
														<!-- 지정 -->
														<a onclick="javascript:golist('5');"> <span>지정</span>
														</a><input type="text" id="emp_name5" value="" disabled="disabled">
													</div></td>
											</tr>
											<tr class="date" style="height: 20px;">
												<!-- 결재일시 표시 영역 -->
												<td><span id="appDate1">&nbsp;</span></td>
												<td><span id="appDate2">&nbsp;</span></td>
												<td><span id="appDate3">&nbsp;</span></td>
												<td><span id="appDate4">&nbsp;</span></td>
												<td><span id="appDate5">&nbsp;</span></td>
											</tr>
											<!-- 협조선 -->

											<tr class="txt_ce" style="height: 20px;">
												<th rowspan="3"
													style="border-left: none; border-top: none; border-bottom: none;">
													<!-- 결재선/협조선 제목 --> <!-- 협조 --> 협<br>
												<br>조
												</th>
												<!-- 결재자/협조자 직급 표시 영역 -->
												<td><input type="text" name="OrderTitle11" value=""
													readonly class="form_transparent"
													style='width: 100%; line-height: 21px;'></td>
												<td><input type="text" name="OrderTitle12" value=""
													readonly class="form_transparent"
													style='width: 100%; line-height: 21px;'></td>
												<td><input type="text" name="OrderTitle13" value=""
													readonly class="form_transparent"
													style='width: 100%; line-height: 21px;'></td>
												<td><input type="text" name="OrderTitle14" value=""
													readonly class="form_transparent"
													style='width: 100%; line-height: 21px;'></td>
												<td><input type="text" name="OrderTitle15" value=""
													readonly class="form_transparent"
													style='width: 100%; line-height: 21px;'></td>
											</tr>
											<tr class="date" style="height: 61px;">
												<!-- 결재 버튼/결재완료 서명 표시 영역 -->
												<td><input type="text" name="OrderName11" value=""
													readonly class="form_transparent" style='width: 100%;'>
													<input type="hidden" name="OrderId11" value="admin">
													<!-- 지정/취소 버튼 -->
													<div id="MembersFindCell11" class="btn_page pad15l overf">
														<!-- 취소 -->
														<a onclick="javascript:golist('11');"> <span>지정</span>
														</a><input type="text" id="emp_name11" value="" disabled="disabled">
													</div></td>
												<td><input type="text" name="OrderName12" value=""
													readonly class="form_transparent" style='width: 100%;'>
													<input type="hidden" name="OrderId12" value=""> <!-- 지정/취소 버튼 -->
													<div id="MembersFindCell12" class="btn_page pad15l overf">
														<!-- 지정 -->
														<a onclick="javascript:golist('12');"> <span>지정</span>
														</a><input type="text" id="emp_name12" value="" disabled="disabled">
													</div></td>
												<td><input type="text" name="OrderName13" value=""
													readonly class="form_transparent" style='width: 100%;'>
													<input type="hidden" name="OrderId13" value=""> <!-- 지정/취소 버튼 -->
													<div id="MembersFindCell13" class="btn_page pad15l overf">
														<!-- 지정 -->
														<a onclick="javascript:golist('13');"> <span>지정</span>
														</a><input type="text" id="emp_name13" value="" disabled="disabled">
													</div></td>
												<td><input type="text" name="OrderName14" value=""
													readonly class="form_transparent" style='width: 100%;'>
													<input type="hidden" name="OrderId14" value=""> <!-- 지정/취소 버튼 -->
													<div id="MembersFindCell14" class="btn_page pad15l overf">
														<!-- 지정 -->
														<a onclick="javascript:golist('14');"> <span>지정</span>
														</a><input type="text" id="emp_name14" value="" disabled="disabled">
													</div></td>
												<td><input type="text" name="OrderName15" value=""
													readonly class="form_transparent" style='width: 100%;'>
													<input type="hidden" name="OrderId15" value=""> <!-- 지정/취소 버튼 -->
													<div id="MembersFindCell15" class="btn_page pad15l overf">
														<!-- 지정 -->
														<a onclick="javascript:golist('15');"> <!--  <a class="openPopup"  href="myOrderUserAppointPopup.php?mode=order&number=15&total=5&WordUseHelper=Y">-->
															<span>지정</span>
														</a><input type="text" id="emp_name15" value="" disabled="disabled">
													</div></td>
											</tr>
											<tr class="date" style="height: 20px;">
												<!-- 결재일시 표시 영역 -->
												<td style="border-bottom: none;"><span id="appDate11">&nbsp;</span>
												</td>
												<td style="border-bottom: none;"><span id="appDate12">&nbsp;</span>
												</td>
												<td style="border-bottom: none;"><span id="appDate13">&nbsp;</span>
												</td>
												<td style="border-bottom: none;"><span id="appDate14">&nbsp;</span>
												</td>
												<td style="border-bottom: none;"><span id="appDate15">&nbsp;</span>
												</td>
											</tr>
										</table>
									</td>
								</tr>

								<!-- 문서종류 -->
								<tr class="eword_meta_height">
									<th style="border-left: none;">문서종류</th>
									<td class="pad15l" colspan="3">${doc_type_name}</td>
								</tr>
								<!-- 부서 -->
								<tr class="eword_meta_height">
									<th style="border-left: none;">부서</th>
									<td class="pad15l" colspan="3">${memberInfo.dep_name}</td>
								</tr>
								<!-- 기안일 -->
								<tr class="eword_meta_height">
									<th style="border-left: none;">기안일</th>
									<td class="pad15l" colspan="3"><input name="doc_date"
										class="datepicker" id="datepicker" type="text"></td>
								</tr>
								<!-- 기안자, (출장인원) -->
								<tr class="eword_meta_height">
									<th style="border-left: none;">기안자</th>
									<td class="pad15l " colspan="3">${memberInfo.emp_name}</td>
								</tr>
								<!-- 공개여부, 보존기간 -->
								<tr class="eword_meta_height">
									<th style="border-left: none;">공개여부</th>
									<td class="txt_ce">
										<!-- 작성 --> <select name="Opening"
										onchange="ReceiveTreeKeyButton();">
											<option label="공개" value="Y" selected="selected">공개</option>
											<option label="비공개" value="N">비공개</option>
									</select>
									</td>

									<th>보존기간</th>
									<td class="txt_ce">
										<!-- 작성 --> <select name='StoragePeriod'><option
												label="3 개월" value="3">3 개월</option>
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
											<option label="10 년" value="120" selected="selected">10
												년</option>
											<option label="무기한" value="12000">무기한</option>
									</select>
									</td>
								</tr>
							</table> <!-- /ORDER 5 -->

							<table id="eword_header_common" class="eword_meta">
								<col class="eword_th_width">
								<col>
								<!-- 수신부서 -->
								<tr class="eword_meta_height">
									<th style="border-left: none;">수신부서</th>
									<td class="pad15l" style="padding-right: 7px;"><span
										id="ReceiveTreeKeyButtonArea" style='width: 100%;'> <input
											type="text" name="ReceiveTreeKeyName" value="" readonly
											class="left" style="width: 494px;" /> <span
											class="btn_page right"> <!-- 수신부서 지정 --> <a
												class="cursor openPopupTreeKeyFind"> <span
													class="txt_ce" style="width: 80px;">수신부서 지정</span>
											</a>
										</span>
									</span></td>
								</tr>

								<!-- 참조자 -->
								<tr class="eword_meta_height">
									<th style="border-left: none;">참조자</th>
									<td class="pad15l" style="padding-right: 7px;"><input
										type="text" name="referenceUserName" value="" readonly
										class="left" style="width: 494px;" /> <span
										class="btn_page right"> <!-- 참조자 지정 --> <a
											class="openPopup"> <span class="txt_ce"
												style="width: 80px;">참조자 지정</span>
										</a>
									</span></td>
								</tr>

								<!-- 제목 -->
								<tr class="eword_meta_height">
									<th style="border-left: none;">제목</th>
									<td class="pad15l"><input name="Subject" type="text"
										value="" style="width: 98%;" /></td>
								</tr>
							</table>
						</td>
					</tr>