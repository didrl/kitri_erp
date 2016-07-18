package com.kitrierp.doc.model;

import com.kitrierp.employee.model.EmployeeDto;

public class CooperationDto extends EmployeeDto {

	private int coop_seq;
	private String doc_id;
	
	

	public String getDoc_id() {
		return doc_id;
	}

	public void setDoc_id(String doc_id) {
		this.doc_id = doc_id;
	}

	public int getCoop_seq() {
		return coop_seq;
	}

	public void setCoop_seq(int coop_seq) {
		this.coop_seq = coop_seq;
	}
	
}
