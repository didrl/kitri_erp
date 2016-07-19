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
		DocumentDto documentDto = new DocumentDto();
		documentDto = consultationDao.viewDoc(doc_id);
		documentDto.setSign_info(consultationDao.viewDocSignInfo(doc_id));
		documentDto.setReference(consultationDao.viewDocReference(doc_id));
		documentDto.setCooperation(consultationDao.viewDocCooperation(doc_id));
		documentDto.setReceiver(consultationDao.viewDocReceiver(doc_id));
		return documentDto;
	}
}
