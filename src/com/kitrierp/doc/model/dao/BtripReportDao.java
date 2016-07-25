package com.kitrierp.doc.model.dao;

import java.util.List;

import com.kitrierp.doc.model.BtripReportDto;
import com.kitrierp.doc.model.CooperationDto;
import com.kitrierp.doc.model.ReceiveListDto;
import com.kitrierp.doc.model.ReferenceDto;
import com.kitrierp.doc.model.SignInfoDto;

public interface BtripReportDao {
	int reportDoc(BtripReportDto btripReportDto);
	int tmpsaveDoc(BtripReportDto btripReportDto);
	int expenseInfoSeq();
	BtripReportDto viewDoc(String doc_id);
	List<SignInfoDto> viewDocSignInfo(String doc_id);
	List<ReferenceDto> viewDocReference(String doc_id);
	List<CooperationDto> viewDocCooperation(String doc_id);
	List<ReceiveListDto> viewDocReceiver(String doc_id);
	void writeDoc(BtripReportDto btripReportDto);
	void writeSignInfo(BtripReportDto btripReportDto);
	void writeCooperation(BtripReportDto btripReportDto);
	void writeReceiveList(BtripReportDto btripReportDto);
	void writeReference(BtripReportDto btripReportDto);
	

}
