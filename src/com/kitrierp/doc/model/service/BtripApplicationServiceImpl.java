package com.kitrierp.doc.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kitrierp.doc.model.BtripApplicationDto;
import com.kitrierp.doc.model.DocumentDto;
import com.kitrierp.doc.model.dao.BtripApplicationDao;

@Service
public class BtripApplicationServiceImpl implements BtripApplicationService {
	@Autowired
	private BtripApplicationDao btripApplicationDao;

	@Override
	public int reportDoc(BtripApplicationDto btripApplicationDto) {
		return btripApplicationDao.reportDoc(btripApplicationDto);
	}

	@Override
	public int tmpsaveDoc(BtripApplicationDto btripApplicationDto) {
		return btripApplicationDao.tmpsaveDoc(btripApplicationDto);
	}
 
	@Override
	public DocumentDto viewDoc(String doc_id) {
		return btripApplicationDao.viewDoc(doc_id);
	}
}
