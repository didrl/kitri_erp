package com.kitrierp.doc.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kitrierp.doc.model.DocumentDto;
import com.kitrierp.doc.model.dao.ConsultationDao;

@Service
public class ConsultationServiceImpl implements ConsultationService {
	@Autowired
	private ConsultationDao consultationDao;

	@Override
	public int reportDoc(DocumentDto documentDto) {
		return consultationDao.reportDoc(documentDto);
	}

	@Override
	public int tmpsaveDoc(DocumentDto documentDto) {
		return 0;
	}

	@Override
	public DocumentDto viewDoc(String doc_id) {
		return consultationDao.viewDoc(doc_id);
	}
}
