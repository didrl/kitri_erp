package com.kitrierp.doc.model.dao;

import java.util.List;
import java.util.Map;

import com.kitrierp.doc.model.DocumentDto;

public interface DocDao {

	String doc_id(int doc_type_id);

	List<DocumentDto> dep_docBoxList();

	int approval(Map map);
	
}
