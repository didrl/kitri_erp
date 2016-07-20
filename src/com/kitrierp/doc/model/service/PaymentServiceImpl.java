package com.kitrierp.doc.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kitrierp.doc.model.PaymentDto;
import com.kitrierp.doc.model.dao.PaymentDao;

@Service
public class PaymentServiceImpl implements PaymentService {
	@Autowired
	private PaymentDao paymentDao;

	@Override
	public int reportDoc(PaymentDto paymentDto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int tmpsaveDoc(PaymentDto paymentDto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public PaymentDto viewDoc(String doc_id) {
		PaymentDto paymentDto = new PaymentDto();
		paymentDto = paymentDao.viewDoc(doc_id);
		paymentDto.setSign_info(paymentDao.viewDocSignInfo(doc_id));
		paymentDto.setReference(paymentDao.viewDocReference(doc_id));
		paymentDto.setCooperation(paymentDao.viewDocCooperation(doc_id));
		paymentDto.setReceiver(paymentDao.viewDocReceiver(doc_id));
		return paymentDto;
	}
}
