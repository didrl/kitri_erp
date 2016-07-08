package com.kitrierp.doc.model;

import java.util.List;

public class PaymentDto extends DocumentDto {
	private int payment_id;
	private int billing;
	private int settlement;
	private int doc_id;
	private String recipient;

	private List<PaymentInfoDto> pay_info;

	public int getPayment_id() {
		return payment_id;
	}

	public void setPayment_id(int payment_id) {
		this.payment_id = payment_id;
	}

	public int getBilling() {
		return billing;
	}

	public void setBilling(int billing) {
		this.billing = billing;
	}

	public int getSettlement() {
		return settlement;
	}

	public void setSettlement(int settlement) {
		this.settlement = settlement;
	}

	public int getDoc_id() {
		return doc_id;
	}

	public void setDoc_id(int doc_id) {
		this.doc_id = doc_id;
	}

	public String getRecipient() {
		return recipient;
	}

	public void setRecipient(String recipient) {
		this.recipient = recipient;
	}

	public List<PaymentInfoDto> getPay_info() {
		return pay_info;
	}

	public void setPay_info(List<PaymentInfoDto> pay_info) {
		this.pay_info = pay_info;
	}
	
}
