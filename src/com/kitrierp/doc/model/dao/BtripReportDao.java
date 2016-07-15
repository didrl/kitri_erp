package com.kitrierp.doc.model.dao;

import com.kitrierp.doc.model.BtripReportDto;
import com.kitrierp.doc.model.DocumentDto;

public interface BtripReportDao {
	int reportDoc(BtripReportDto btripReportDto);
	int tmpsaveDoc(BtripReportDto btripReportDto);
	BtripReportDto viewDoc(String doc_id);
}
