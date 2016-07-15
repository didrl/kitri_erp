package com.kitrierp.doc.model.service;

import com.kitrierp.doc.model.PaymentDto;

public interface PaymentService {
	int reportDoc(PaymentDto paymentDto);
	int tmpsaveDoc(PaymentDto paymentDto);
	PaymentDto viewDoc(String doc_id);
}
