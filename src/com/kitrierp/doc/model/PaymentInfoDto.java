package com.kitrierp.doc.model;

public class PaymentInfoDto {
	private int payinfo_seq;
	private int payment_id;
	private int amount;
	private String pay_date;
	private String pay_info;
	private String note;
	
	public int getPayinfo_seq() {
		return payinfo_seq;
	}
	public void setPayinfo_seq(int payinfo_seq) {
		this.payinfo_seq = payinfo_seq;
	}
	public int getPayment_id() {
		return payment_id;
	}
	public void setPayment_id(int payment_id) {
		this.payment_id = payment_id;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getPay_date() {
		return pay_date;
	}
	public void setPay_date(String pay_date) {
		this.pay_date = pay_date;
	}
	public String getPay_info() {
		return pay_info;
	}
	public void setPay_info(String pay_info) {
		this.pay_info = pay_info;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	
}
