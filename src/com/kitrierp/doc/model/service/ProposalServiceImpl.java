package com.kitrierp.doc.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kitrierp.doc.model.DocumentDto;
import com.kitrierp.doc.model.dao.ProposalDao;

@Service
public class ProposalServiceImpl implements ProposalService {
	@Autowired
	private ProposalDao proposalDao;

	@Override
	public int reportDoc(DocumentDto documentDto) {
		return 0;
	}

	@Override
	public int tmpsaveDoc(DocumentDto documentDto) {
		return 0;
	}

	@Override
	public DocumentDto viewDoc(String doc_id) {
		return proposalDao.viewDoc(doc_id);
	}
}
