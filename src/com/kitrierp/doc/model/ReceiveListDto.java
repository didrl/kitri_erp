package com.kitrierp.doc.model;

import com.kitrierp.employee.model.EmployeeDto;

public class ReceiveListDto extends EmployeeDto {

	private int recei_seq;
	private String doc_id;
	
	public String getDoc_id() {
		return doc_id;
	}

	public void setDoc_id(String doc_id) {
		this.doc_id = doc_id;
	}

	public int getRecei_seq() {
		return recei_seq;
	}

	public void setRecei_seq(int recei_seq) {
		this.recei_seq = recei_seq;
	}

}
