<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8" %>
<%@ include file="/common/user_sidebar.jsp" %>
<%@ include file="/doc/doc_header_view.jsp" %>
<c:set var="doc_type" value="docType"></c:set>
			<!-- 기본형 휴가계/출장계 -->
		<tr class="change_height_on_print">
			<td id="eword_content" class="eword_content_layout">
				<table id="eword_special" class="eword_meta">
					<col class="eword_th_width">
					<col style="width:87.5%;">
								

					<!-- 출장계 > 출장 신청서 -->
						 <tr class="eword_meta_height">
		                     <th style="border-top: none; border-left: none;">기간</th>
		                     <td class="pad15l" style="border-top: none;" >
		                     <div class="input-daterange input-group" >
								<c:out value="${document.start_date}"/>~<c:out value="${document.end_date}"/>
		                     </div>
		                     </td>
	                  	</tr>

						<tr class="eword_meta_height">
							<th style="border-left: none;">출장지</th>
							<td class="pad15l">
							${document.btrip_location}
							</td>
						</tr>
						<tr class="eword_meta_height">
							<th style="border-left: none;">출장목적</th>
							<td class="pad15l pad5tb">
								<textarea readonly="readonly" name="OutReason" style="width:98%;height:50px;">${document.btrip_purpose}</textarea>
							</td>
						</tr>
						<tr class="eword_meta_height">
							<th style="border-left: none;">연락처</th>
							<td class="pad15l">
																	<input name="OutTel" type="text" value="" style="width:98%;" >
															</td>
						</tr>
					
						
						<tr style="height:100px;">
							<td colspan="2" class="txt_ce" style="border-left: none;">상기와 같이 출장 신청서를 제출하오니 재가바랍니다.</td>
						</tr>
								
									</table>
			</td>
		</tr>
	</table>

<%@ include file="/doc/doc_footer_view.jsp" %>
	