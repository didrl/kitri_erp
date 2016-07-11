package com.kitrierp.doc.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kitrierp.doc.model.dao.BtripReportDao;

@Service
public class BtripReportServiceImpl implements BtripReportService {
	@Autowired
	private BtripReportDao btripReportDao;
}
