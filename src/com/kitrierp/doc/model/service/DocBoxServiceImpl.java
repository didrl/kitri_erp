package com.kitrierp.doc.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kitrierp.doc.model.DocumentDto;
import com.kitrierp.doc.model.dao.DocBoxDao;

@Service
public class DocBoxServiceImpl implements DocBoxService {
	@Autowired
	private DocBoxDao docBoxDao;

	@Override
	public List<DocumentDto> dep_docBoxList(int emp_id) {
		
		return docBoxDao.dep_docBoxList(emp_id);
	}
	
}
