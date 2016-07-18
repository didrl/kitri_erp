package com.kitrierp.doc.model.service;

import java.util.List;

import com.kitrierp.doc.model.CooperationDto;
import com.kitrierp.doc.model.DocumentDto;
import com.kitrierp.doc.model.SignInfoDto;

public interface DocBoxService {

	//미결재 문서함
	List<DocumentDto> app_undone_docBoxList(int emp_id);
	List<SignInfoDto> app_undone_docBoxList2(int emp_id);
	
	//결재완료 문서함
	List<DocumentDto> app_done_docBoxList(int emp_id);
	List<SignInfoDto> app_done_docBoxList2(int emp_id);
	
	//상신문서함
	List<DocumentDto> per_report_docBoxList(int emp_id);
	
	//임시저장 문서함
	List<DocumentDto> per_temp_docBoxList(int emp_id);
	
	//반려 문서함
	List<DocumentDto> per_return_docBoxList(int emp_id);
	
	//결재 완료 문서함
	List<DocumentDto> per_done_docBoxList(int emp_id);
	
	//상신 취소 문서함
	List<DocumentDto> per_cancel_docBoxList(int emp_id);
	
	//협조 미결재 문서함
	List<DocumentDto> coop_undone_docBoxList(int emp_id);
	
	//협조 결재 문서함
	List<DocumentDto> coop_done_docBoxList(int emp_id);
	List<CooperationDto> coop_done_docBoxList2(int emp_id);
	
	//부서문서함
	List<DocumentDto> dep_docBoxList(int emp_id);
	
	//참조 문서함
	List<DocumentDto> ref_docBoxList(int emp_id);
	
}
