package com.kitrierp.doc.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kitrierp.doc.model.BtripReportDto;
import com.kitrierp.doc.model.dao.BtripReportDao;

@Service
public class BtripReportServiceImpl implements BtripReportService {
	@Autowired
	private BtripReportDao btripReportDao;

	@Override
	public int reportDoc(BtripReportDto btripReportDto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int tmpsaveDoc(BtripReportDto btripReportDto) {
		// TODO Auto-generated method stub
		return 0;
	}
}
