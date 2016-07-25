package com.kitrierp.doc.model.service;

import com.kitrierp.doc.model.BtripReportDto;

public interface BtripReportService {
	int reportDoc(BtripReportDto btripReportDto);
	int tmpsaveDoc(BtripReportDto btripReportDto);
	int expenseInfoSeq();
	BtripReportDto viewDoc(String doc_id);

	void writeDoc(BtripReportDto btripReportDto);
	void writeSignInfo(BtripReportDto btripReportDto);
	void writeCooperation(BtripReportDto btripReportDto);
	void writeReceiveList(BtripReportDto btripReportDto);
	void writeReference(BtripReportDto btripReportDto);
	
}
