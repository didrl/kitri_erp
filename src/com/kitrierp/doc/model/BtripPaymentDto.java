package com.kitrierp.doc.model;

public class BtripPaymentDto extends DocumentDto {
	private int expense_info_id;
	private int exp_seq;
	private int exp_daily;
	private int exp_room;
	private int exp_food;
	private int EXP_TRANS;
	private int exp_etc;
	private int exp_total;
	
	public int getExpense_info_id() {
		return expense_info_id;
	}
	public void setExpense_info_id(int expense_info_id) {
		this.expense_info_id = expense_info_id;
	}
	public int getExp_seq() {
		return exp_seq;
	}
	public void setExp_seq(int exp_seq) {
		this.exp_seq = exp_seq;
	}
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
	public int getEXP_TRANS() {
		return EXP_TRANS;
	}
	public void setEXP_TRANS(int EXP_TRANS) {
		this.EXP_TRANS = EXP_TRANS;
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
	
}
