package com.kitrierp.doc.model;

public class JournalDto extends DocumentDto {
	private String jou_today;
	private String jou_nextday;
	private String jou_note;
	private String jou_issue;
	
	public String getJou_today() {
		return jou_today;
	}
	public void setJou_today(String jou_today) {
		this.jou_today = jou_today;
	}
	public String getJou_nextday() {
		return jou_nextday;
	}
	public void setJou_nextday(String jou_nextday) {
		this.jou_nextday = jou_nextday;
	}
	public String getJou_note() {
		return jou_note;
	}
	public void setJou_note(String jou_note) {
		this.jou_note = jou_note;
	}
	public String getJou_issue() {
		return jou_issue;
	}
	public void setJou_issue(String jou_issue) {
		this.jou_issue = jou_issue;
	}
	
}
