package com.kitrierp.doc.model.dao;

import com.kitrierp.doc.model.DocumentDto;
import com.kitrierp.doc.model.PaymentDto;

public interface PaymentDao {
	int reportDoc(PaymentDto paymentDto);
	int tmpsaveDoc(PaymentDto paymentDto);
	PaymentDto viewDoc(String doc_id);
}
