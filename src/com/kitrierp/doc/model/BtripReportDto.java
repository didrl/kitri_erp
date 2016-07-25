package com.kitrierp.doc.model;

public class BtripReportDto extends DocumentDto {
	private int expense_info_id;
	private String start_date;
	private String end_date;
	private String btrip_location;
	private int exp_daily;
	private int exp_room;
	private int exp_food;
	private int exp_trans;
	private int exp_etc;
	private int exp_total;
	
	
	public int getExp_daily() {
		return exp_daily;
	}
	public void setExp_daily(int exp_daily) {
		this.exp_daily = exp_daily;
	}
	public int getExp_room() {
		return exp_room;
	}
	public void setExp_room(int exp_room) {
		this.exp_room = exp_room;
	}
	public int getExp_food() {
		return exp_food;
	}
	public void setExp_food(int exp_food) {
		this.exp_food = exp_food;
	}
	public int getExp_trans() {
		return exp_trans;
	}
	public void setExp_trans(int exp_trans) {
		this.exp_trans = exp_trans;
	}
	public int getExp_etc() {
		return exp_etc;
	}
	public void setExp_etc(int exp_etc) {
		this.exp_etc = exp_etc;
	}
	public int getExp_total() {
		return exp_total;
	}
	public void setExp_total(int exp_total) {
		this.exp_total = exp_total;
	}
	public int getExpense_info_id() {
		return expense_info_id;
	}
	public void setExpense_info_id(int expense_info_id) {
		this.expense_info_id = expense_info_id;
	}
	public String getStart_date() {
		return start_date;
	}
	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}
	public String getEnd_date() {
		return end_date;
	}
	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}
	public String getBtrip_location() {
		return btrip_location;
	}
	public void setBtrip_location(String btrip_location) {
		this.btrip_location = btrip_location;
	}
}
