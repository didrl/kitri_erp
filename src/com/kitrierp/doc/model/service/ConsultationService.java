package com.kitrierp.doc.model.service;

import com.kitrierp.doc.model.DocumentDto;

public interface ConsultationService {
	int reportDoc(DocumentDto documentDto);
	int tmpsaveDoc(DocumentDto documentDto);
	DocumentDto viewDoc(String doc_id);
}
