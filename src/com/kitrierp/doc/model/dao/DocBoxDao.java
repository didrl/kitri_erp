package com.kitrierp.doc.model.dao;

import java.util.List;

import com.kitrierp.doc.model.DocumentDto;

public interface DocBoxDao {

	List<DocumentDto> dep_docBoxList(int emp_id);
	
}
