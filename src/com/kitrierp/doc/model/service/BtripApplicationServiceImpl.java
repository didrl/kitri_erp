package com.kitrierp.doc.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kitrierp.doc.model.BtripApplicationDto;
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
	public BtripApplicationDto viewDoc(String doc_id) {
		BtripApplicationDto btripApplicationDto = new BtripApplicationDto();
		btripApplicationDto = btripApplicationDao.viewDoc(doc_id);
		btripApplicationDto.setSign_info(btripApplicationDao.viewDocSignInfo(doc_id));
		btripApplicationDto.setReference(btripApplicationDao.viewDocReference(doc_id));
		btripApplicationDto.setCooperation(btripApplicationDao.viewDocCooperation(doc_id));
		btripApplicationDto.setReceiver(btripApplicationDao.viewDocReceiver(doc_id));
		return btripApplicationDto;
	}
}
