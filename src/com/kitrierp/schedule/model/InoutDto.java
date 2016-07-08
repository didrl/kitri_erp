package com.kitrierp.schedule.model;

public class InoutDto {

	private int emp_id;
	private String inout_date;
	private String start_time;
	private String end_time;
	private String note;
	private int in_code;
	private int out_code;
	
	public int getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(int emp_id) {
		this.emp_id = emp_id;
	}
	public String getInout_date() {
		return inout_date;
	}
	public void setInout_date(String inout_date) {
		this.inout_date = inout_date;
	}
	public String getStart_time() {
		return start_time;
	}
	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}
	public String getEnd_time() {
		return end_time;
	}
	public void setEnd_time(String end_time) {
		this.end_time = end_time;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public int getIn_code() {
		return in_code;
	}
	public void setIn_code(int in_code) {
		this.in_code = in_code;
	}
	public int getOut_code() {
		return out_code;
	}
	public void setOut_code(int out_code) {
		this.out_code = out_code;
	}

}
