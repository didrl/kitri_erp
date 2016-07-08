package com.kitrierp.schedule.model;

public class ScheduleDto {

	private int sch_seq;
	private String sch_start;
	private String sch_end;
	private String sch_subject;
	private String sch_content;
	private int sch_open;
	
	public int getSch_seq() {
		return sch_seq;
	}
	public void setSch_seq(int sch_seq) {
		this.sch_seq = sch_seq;
	}
	public String getSch_start() {
		return sch_start;
	}
	public void setSch_start(String sch_start) {
		this.sch_start = sch_start;
	}
	public String getSch_end() {
		return sch_end;
	}
	public void setSch_end(String sch_end) {
		this.sch_end = sch_end;
	}
	public String getSch_subject() {
		return sch_subject;
	}
	public void setSch_subject(String sch_subject) {
		this.sch_subject = sch_subject;
	}
	public String getSch_content() {
		return sch_content;
	}
	public void setSch_content(String sch_content) {
		this.sch_content = sch_content;
	}
	public int getSch_open() {
		return sch_open;
	}
	public void setSch_open(int sch_open) {
		this.sch_open = sch_open;
	}
	
}
