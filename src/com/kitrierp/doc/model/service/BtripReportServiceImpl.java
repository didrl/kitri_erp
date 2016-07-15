package com.kitrierp.doc.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kitrierp.doc.model.BtripReportDto;
import com.kitrierp.doc.model.DocumentDto;
import com.kitrierp.doc.model.dao.BtripReportDao;

@Service
public class BtripReportServiceImpl implements BtripReportService {
	@Autowired
	private BtripReportDao btripReportDao;

	@Override
	public int reportDoc(BtripReportDto btripReportDto) {
		return btripReportDao.reportDoc(btripReportDto);
	}

	@Override
	public int tmpsaveDoc(BtripReportDto btripReportDto) {
		return btripReportDao.tmpsaveDoc(btripReportDto);
	}

	@Override
	public int expenseInfoSeq() {
		return btripReportDao.expenseInfoSeq();
	}

	@Override
	public BtripReportDto viewDoc(String doc_id) {
		return btripReportDao.viewDoc(doc_id);
	}
}
