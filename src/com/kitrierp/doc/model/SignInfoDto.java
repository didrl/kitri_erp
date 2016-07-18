package com.kitrierp.doc.model;

import com.kitrierp.employee.model.EmployeeDto;

public class SignInfoDto extends EmployeeDto {

	private int appr_seq;
	private String doc_id;
	private int appr_flag;
	private String appr_date;
	
	public String getDoc_id() {
		return doc_id;
	}

	public void setDoc_id(String doc_id) {
		this.doc_id = doc_id;
	}

	public String getAppr_date() {
		return appr_date;
	}

	public void setAppr_date(String appr_date) {
		this.appr_date = appr_date;
	}

	public int getAppr_flag() {
		return appr_flag;
	}

	public void setAppr_flag(int appr_flag) {
		this.appr_flag = appr_flag;
	}

	public int getAppr_seq() {
		return appr_seq;
	}

	public void setAppr_seq(int appr_seq) {
		this.appr_seq = appr_seq;
	}
	
}
