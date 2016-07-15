package com.kitrierp.doc.model.service;

import java.util.List;

import com.kitrierp.doc.model.DocumentDto;

public interface DocBoxService {

	List<DocumentDto> dep_docBoxList(int emp_id);
	
}
