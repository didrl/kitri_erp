package com.kitrierp.doc.model.dao;

import java.util.List;

import com.kitrierp.doc.model.CooperationDto;
import com.kitrierp.doc.model.PaymentDto;
import com.kitrierp.doc.model.ReceiveListDto;
import com.kitrierp.doc.model.ReferenceDto;
import com.kitrierp.doc.model.SignInfoDto;

public interface PaymentDao {
	int reportDoc(PaymentDto paymentDto);
	int tmpsaveDoc(PaymentDto paymentDto);
	PaymentDto viewDoc(String doc_id);
	List<SignInfoDto> viewDocSignInfo(String doc_id);
	List<ReferenceDto> viewDocReference(String doc_id);
	List<CooperationDto> viewDocCooperation(String doc_id);
	List<ReceiveListDto> viewDocReceiver(String doc_id);
}
