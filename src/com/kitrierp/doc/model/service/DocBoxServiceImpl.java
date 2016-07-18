package com.kitrierp.doc.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kitrierp.doc.model.CooperationDto;
import com.kitrierp.doc.model.DocumentDto;
import com.kitrierp.doc.model.SignInfoDto;
import com.kitrierp.doc.model.dao.DocBoxDao;

@Service
public class DocBoxServiceImpl implements DocBoxService {
	@Autowired
	private DocBoxDao docBoxDao;

	@Override
	public List<DocumentDto> dep_docBoxList(int emp_id) {
		
		return docBoxDao.dep_docBoxList(emp_id);
	}

	@Override
	public List<DocumentDto> app_undone_docBoxList(int emp_id) {
		
		return docBoxDao.app_undone_docBoxList(emp_id);
	}

	@Override
	public List<SignInfoDto> app_undone_docBoxList2(int emp_id) {
		
		return docBoxDao.app_undone_docBoxList2(emp_id);
	}

	
	
	@Override
	public List<DocumentDto> app_done_docBoxList(int emp_id) {
		
		return docBoxDao.app_done_docBoxList(emp_id);
	}
	@Override
	public List<SignInfoDto> app_done_docBoxList2(int emp_id) {
	
		return docBoxDao.app_done_docBoxList2(emp_id);
	}
	
	

	@Override
	public List<DocumentDto> per_report_docBoxList(int emp_id) {
		
		return docBoxDao.per_report_docBoxList(emp_id);
	}

	@Override
	public List<DocumentDto> per_temp_docBoxList(int emp_id) {
		
		return docBoxDao.per_temp_docBoxList(emp_id);
	}

	@Override
	public List<DocumentDto> per_return_docBoxList(int emp_id) {
		
		return docBoxDao.per_return_docBoxList(emp_id);
	}

	@Override
	public List<DocumentDto> per_done_docBoxList(int emp_id) {
		return docBoxDao.per_done_docBoxList(emp_id);
	}

	@Override
	public List<DocumentDto> per_cancel_docBoxList(int emp_id) {
		return docBoxDao.per_cancel_docBoxList(emp_id);
	}

	@Override
	public List<DocumentDto> coop_undone_docBoxList(int emp_id) {
		return docBoxDao.coop_undone_docBoxList(emp_id);
	}

	@Override
	public List<DocumentDto> coop_done_docBoxList(int emp_id) {
		return docBoxDao.coop_done_docBoxList(emp_id);
	}

	@Override
	public List<CooperationDto> coop_done_docBoxList2(int emp_id) {
		return docBoxDao.coop_done_docBoxList2(emp_id);
	}
	
	
	@Override
	public List<DocumentDto> ref_docBoxList(int emp_id) {
		return docBoxDao.ref_docBoxList(emp_id);
	}

	

	
	
}
