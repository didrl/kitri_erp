package com.kitrierp.doc.model.service;

import com.kitrierp.doc.model.BtripReportDto;
import com.kitrierp.doc.model.DocumentDto;

public interface BtripReportService {
	int reportDoc(BtripReportDto btripReportDto);
	int tmpsaveDoc(BtripReportDto btripReportDto);
	int expenseInfoSeq();
	BtripReportDto viewDoc(String doc_id);

}
