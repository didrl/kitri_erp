package com.kitrierp.doc.model;

import com.kitrierp.employee.model.EmployeeDto;

public class CooperationDto extends EmployeeDto {

	private int coop_seq;
	private String doc_id;
	private int coop_flag;
	private String coop_date;

	public int getCoop_flag() {
		return coop_flag;
	}

	public void setCoop_flag(int coop_flag) {
		this.coop_flag = coop_flag;
	}

	public String getCoop_date() {
		return coop_date;
	}

	public void setCoop_date(String coop_date) {
		this.coop_date = coop_date;
	}

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
