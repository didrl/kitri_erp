<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ include file="/common/user_sidebar.jsp" %>
<%@ include file="/doc/doc_header_view.jsp" %>
			
			
			<!-- 기본형 에디터 -->
		<tr class="change_height_on_print">
			<td id="eword_content" class="pad5">
				<textarea readonly="readonly" name="doc_content" id="doc_content" style="width:100%;height:800px;display:block;">${document.doc_content}</textarea>
			</td>
		</tr>
	</table>

<%@ include file="/doc/doc_footer_view.jsp" %>