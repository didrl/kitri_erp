$().ready(function() {
	
	$('#reportDoc').click(function(){
		$('#doc_status_id').val(1);
		alert("상신 되었습니다.  "+$('#doc_status_id').val);
		$('#docform').attr({action: root+controller+"/reportDoc.erp", method:'post'}).submit();
	});
	
	$('#tmpsaveDoc').click(function(){
		alert("임시저장 되었습니다.");
		$('#doc_status_id').val(0);
		document.docform.action = root+controller+"/tmpsaveDoc.erp";
		document.docform.submit();
	});
	$('#modifyDoc').click(function(){
		alert("수정 :    "+root+controller+"/modifyDoc.erp?doc_id="+doc_id);
		document.location.href = root+controller+"/modifyDoc.erp?doc_id="+doc_id;
	});
	
});

(function ($){
	$.mvDocBoxtoviewDoc = function(doc_type_id,doc_id){
	
		var root ="/kitrierp";
		var doc_type = doc_type_id;
		var doc_id = doc_id+"";
		var controller="";
		if(doc_type == 1){
			controller="/proposal";
		}else if(doc_type==2){
			controller="/consultation";
		}else if(doc_type==3){
			controller="/payment";
		}else if(doc_type==4){
			controller="/btripApplication";
		}else if(doc_type==5){
			controller="/btripReport";
		}else if(doc_type==6){
			controller="/vacation";
		}else if(doc_type==7){
			controller="/journal";
		}
		
		document.location.href = root+controller+"/viewDoc.erp?doc_id="+doc_id;
		
	};
})(jQuery);

