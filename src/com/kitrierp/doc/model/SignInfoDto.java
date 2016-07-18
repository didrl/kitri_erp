package com.kitrierp.doc.model;

import com.kitrierp.employee.model.EmployeeDto;

public class SignInfoDto extends EmployeeDto {

	private int appr_seq;
	private int appr_flag;

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
