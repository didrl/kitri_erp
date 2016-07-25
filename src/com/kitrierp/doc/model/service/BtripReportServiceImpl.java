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
		BtripReportDto btripReportDto = new BtripReportDto();
		btripReportDto = btripReportDao.viewDoc(doc_id);
		btripReportDto.setSign_info(btripReportDao.viewDocSignInfo(doc_id));
		btripReportDto.setReference(btripReportDao.viewDocReference(doc_id));
		btripReportDto.setCooperation(btripReportDao.viewDocCooperation(doc_id));
		btripReportDto.setReceiver(btripReportDao.viewDocReceiver(doc_id));
		return btripReportDto;
	}

	@Override
	public void writeDoc(BtripReportDto btripReportDto) {
		
		btripReportDao.writeDoc(btripReportDto);
		
	}

	@Override
	public void writeSignInfo(BtripReportDto btripReportDto) {
		btripReportDao.writeSignInfo(btripReportDto);
		
	}

	@Override
	public void writeCooperation(BtripReportDto btripReportDto) {
		btripReportDao.writeCooperation(btripReportDto);
		
	}

	@Override
	public void writeReceiveList(BtripReportDto btripReportDto) {
		btripReportDao.writeReceiveList(btripReportDto);
		
	}

	@Override
	public void writeReference(BtripReportDto btripReportDto) {
		btripReportDao.writeReference(btripReportDto);
		
	}

	
}
