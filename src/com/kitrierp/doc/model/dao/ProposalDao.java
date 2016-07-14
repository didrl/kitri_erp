package com.kitrierp.doc.model.dao;

import com.kitrierp.doc.model.DocumentDto;

public interface ProposalDao {
	int reportDoc(DocumentDto documentDto);
	int tmpsaveDoc(DocumentDto documentDto);
}
