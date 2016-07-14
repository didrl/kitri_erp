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
}
