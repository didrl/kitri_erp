package com.kitrierp.doc.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kitrierp.doc.model.dao.PaymentDao;

@Service
public class PaymentServiceImpl implements PaymentService {
	@Autowired
	private PaymentDao paymentDao;
}
