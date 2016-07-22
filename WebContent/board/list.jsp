<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/user_sidebar.jsp" %>
<script type="text/javascript">
//$(function(){
//	$('#write').click(function(){
//		var data = CKEDITOR.instances.ck.getData();
//		$('#contents').val(data);
//		$('#writeform').submit();
//	})
//})
function writearticle() {
	var data = CKEDITOR.instances.ck.getData();
	document.writeForm.contents.value = data;
	document.writeForm.action = root + "/board/write.erp";
	document.writeForm.submit();
}
</script>

	<!-- Modal -->
	<div class="modal fade" id="write" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title" id="myModalLabel">글쓰기</h4>
	      </div>
	      <div class="modal-body">
	      	<table>
	      	<tr>
	      		<form name="writeForm" method="POST" action="">
				<input type="hidden" name="contents" id="contents" value="">
	      		<td>
	      		<div class="form-group">
	      		<label for="recipient-name" class="control-label">제목:</label>
	      		<input type="text" class="form-control" name="subject" id="subject">
	      		</div>
	      		</td>
	      	</tr>
	      	<tr>
	      		<td>
	      		<div class="form-group">
	      		<label for="recipient-name" class="control-label">내용:</label>
	      		<textarea name="ck" class="ckeditor" id="ck" style="width:100%;height:1500px;display:block;">
	      		</textarea>
	      		</div>
	      		</td>
	      		</form>
	      	</tr>
	      	</table>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-primary" name="writearticle" id="writearticle" onclick="javascript:writearticle();">등록</button>
	        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
	      </div>
	    </div>
	  </div>
	</div>
	

<div id="wrapper"> 
 <!-- Page Content -->
<div id="page-wrapper">

<div class="row">
	<div class=col-md-12>
	
	<!-- Button trigger modal -->
	<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#write">글쓰기</button>

	</div>
</div>

</div>
<!-- Page Content -->
</div>
<!-- wrapper -->

</body>
</html>