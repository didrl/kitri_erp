package com.kitrierp.doc.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kitrierp.doc.model.dao.ConsultationDao;

@Service
public class ConsultationServiceImpl implements ConsultationService {
	@Autowired
	private ConsultationDao consultationDao;
}
