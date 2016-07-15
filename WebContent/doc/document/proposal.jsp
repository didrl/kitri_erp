<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ include file="/common/user_sidebar.jsp" %>
<%@ include file="/doc/doc_header.jsp" %>
			
			
			<!-- 기본형 에디터 -->
		<tr class="change_height_on_print">
			<td id="eword_content" class="pad5">
				<textarea name="doc_content" id="doc_content" style="width:100%;height:800px;display:block;">&nbsp;</textarea>
				<script type="text/javascript">
					CKEDITOR.replace('doc_content');
				</script>
			</td>
		</tr>
			
	</table>

<%@ include file="/doc/doc_footer.jsp" %>