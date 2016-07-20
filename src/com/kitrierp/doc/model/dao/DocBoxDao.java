package com.kitrierp.doc.model.dao;

import java.util.List;

import com.kitrierp.doc.model.CooperationDto;
import com.kitrierp.doc.model.DocumentDto;
import com.kitrierp.doc.model.SignInfoDto;

public interface DocBoxDao {

	List<DocumentDto> dep_docBoxList(int emp_id);

	List<DocumentDto> app_undone_docBoxList(int emp_id);
	List<SignInfoDto> app_undone_docBoxList2(int emp_id);
	
	List<DocumentDto> app_done_docBoxList(int emp_id);
	List<SignInfoDto> app_done_docBoxList2(int emp_id);
	
	List<DocumentDto> per_report_docBoxList(int emp_id);

	List<DocumentDto> per_temp_docBoxList(int emp_id);

	List<DocumentDto> per_return_docBoxList(int emp_id);

	List<DocumentDto> per_done_docBoxList(int emp_id);

	List<DocumentDto> per_cancel_docBoxList(int emp_id);

	List<DocumentDto> coop_undone_docBoxList(int emp_id);

	List<DocumentDto> coop_done_docBoxList(int emp_id);
	List<CooperationDto> coop_done_docBoxList2(int emp_id);
	
	
	List<DocumentDto> ref_docBoxList(int emp_id);
	
}
