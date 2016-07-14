package com.kitrierp.doc.model.service;

import java.util.List;

import com.kitrierp.doc.model.DocumentDto;
import com.kitrierp.employee.model.EmployeeDto;

public interface DocService {

	String doc_id(int doc_type_id);
	
	List<DocumentDto> dep_docBoxList();
	
}
