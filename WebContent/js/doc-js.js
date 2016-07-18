$().ready(function() {
	
	$('#reportDoc').click(function(){
		alert("상신 되었습니다.");
		$('#docform').attr({action: root+controller+"/reportDoc.erp", method:'post'}).submit();
	});
	
	$('#tmpsaveDoc').click(function(){
		alert("임시저장 되었습니다.");
		document.docform.action = root+controller+"/tmpsaveDoc.erp";
		document.docform.submit();
	});
	$('#modifyDoc').click(function(){
		alert("수정 :    "+root+controller+"/modifyDoc.erp?doc_id="+doc_id);
		document.location.href = root+controller+"/modifyDoc.erp?doc_id="+doc_id;
	});
	
	
});
