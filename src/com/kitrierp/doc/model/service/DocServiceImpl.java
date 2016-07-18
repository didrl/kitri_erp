package com.kitrierp.doc.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kitrierp.doc.model.DocumentDto;
import com.kitrierp.doc.model.dao.DocDao;

@Service
public class DocServiceImpl implements DocService {
	@Autowired
	private DocDao docDao;

	@Override
	public String doc_id(int doc_type_id) {
		return docDao.doc_id(doc_type_id);
	}

	@Override
	public List<DocumentDto> dep_docBoxList() {
		// TODO Auto-generated method stub
		return docDao.dep_docBoxList();
	}

	@Override
	public int approval(int emp_id, String doc_id) {
		Map map = new HashMap();
		map.put("emp_id", emp_id);
		map.put("doc_id", doc_id);
		return docDao.approval(map);
	}
	
}
