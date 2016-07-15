$().ready(function() {

	$('#reportDoc').click(function(){
		alert("reportDoc");
		document.docform.action = root+controller+"/reportDoc.erp";
		document.docform.submit();
	});
	
	$('#tmpsaveDoc').click(function(){
		alert("tmpsaveDoc");
		document.docform.action = root+controller+"/tmpsaveDoc.erp";
		document.docform.submit();
	});
	
});
