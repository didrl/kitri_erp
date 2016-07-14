package com.kitrierp.doc.model.dao;

import com.kitrierp.doc.model.BtripReportDto;

public interface BtripReportDao {
	int reportDoc(BtripReportDto btripReportDto);
	int tmpsaveDoc(BtripReportDto btripReportDto);
}
