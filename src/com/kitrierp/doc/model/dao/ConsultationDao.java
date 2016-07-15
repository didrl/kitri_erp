package com.kitrierp.doc.model.dao;

import com.kitrierp.doc.model.DocumentDto;

public interface ConsultationDao {
	int reportDoc(DocumentDto documentDto);
	int tmpsaveDoc(DocumentDto documentDto);
	DocumentDto viewDoc(String doc_id);
}
