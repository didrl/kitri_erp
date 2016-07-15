<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/user_sidebar.jsp" %>
<%@ include file="/doc/doc_header_view.jsp" %>

	
			
			
		<tr class="change_height_on_print">
			<td id="eword_content" class="pad5">
				<textarea name="Contents" readonly="readonly" id="Contents" style="width:100%;height:1500px;display:block;">
				<table border="0" cellspacing="1" cellpadding="0" width="620" bgcolor="#cccccc" align="center">
						<tbody>
							<tr>
								<td class="f01" width="25%" height="30" align="center" bgcolor="#ffffff">청구금액</td>
								<td colspan="3" bgcolor="#ffffff">${document.billing}</td>
							</tr>
							<tr>
								<td class="f01" height="30" align="center" bgcolor="#ffffff">정산금액</td>
								<td colspan="3" bgcolor="#ffffff">${document.settlement}</td>
							</tr>
							<tr>
								<td class="f01" height="30" align="center" bgcolor="#ffffff">수 령 인 </td>
								<td colspan="3" bgcolor="#ffffff">${document.recipient}</td>
							</tr>
							<tr align="center" bgcolor="#ffffff">
								<td class="f01" colspan="4" height="50">지 출 내 역 </td>
							</tr>
							<tr>
								<td class="f01" height="30" align="center" bgcolor="#f1f1f1">날짜</td>
								<td class="f01" width="25%" align="center" bgcolor="#f1f1f1">지출내역</td>
								<td class="f01" width="25%" align="center" bgcolor="#f1f1f1">금액</td>
								<td class="f01" align="center" bgcolor="#f1f1f1">비고</td>
							</tr>
							<tr>
								<td height="30" bgcolor="#ffffff">&nbsp;</td>
								<td bgcolor="#ffffff">&nbsp;</td>
								<td bgcolor="#ffffff">&nbsp;</td>
								<td bgcolor="#ffffff">&nbsp;</td>
							</tr>
							<tr>
								<td height="30" bgcolor="#ffffff">&nbsp;</td>
								<td bgcolor="#ffffff">&nbsp;</td>
								<td bgcolor="#ffffff">&nbsp;</td>
								<td bgcolor="#ffffff">&nbsp;</td>
							</tr>
							<tr>
								<td height="30" bgcolor="#ffffff">&nbsp;</td>
								<td bgcolor="#ffffff">&nbsp;</td>
								<td bgcolor="#ffffff">&nbsp;</td>
								<td bgcolor="#ffffff">&nbsp;</td>
							</tr>
							<tr>
								<td height="30" bgcolor="#ffffff">&nbsp;</td>
								<td bgcolor="#ffffff">&nbsp;</td>
								<td bgcolor="#ffffff">&nbsp;</td>
								<td bgcolor="#ffffff">&nbsp;</td>
							</tr>
							<tr>
								<td height="30" bgcolor="#ffffff">&nbsp;</td>
								<td bgcolor="#ffffff">&nbsp;</td>
								<td bgcolor="#ffffff">&nbsp;</td>
								<td bgcolor="#ffffff">&nbsp;</td>
							</tr>
							<tr>
								<td class="f01" height="30" align="center" bgcolor="#ffffff">합계</td>
								<td bgcolor="#ffffff">&nbsp;</td>
								<td bgcolor="#ffffff">&nbsp;</td>
								<td bgcolor="#ffffff">&nbsp;</td>
							</tr>
						</tbody>
					</table>
				</textarea>
			</td>
		</tr>
	</table>

<%@ include file="/doc/doc_footer_view.jsp" %>