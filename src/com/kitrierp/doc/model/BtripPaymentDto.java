package com.kitrierp.doc.model;

public class BtripPaymentDto extends DocumentDto {
	private int exp_daily;
	private int exp_room;
	private int exp_food;
	private int exp_transe;
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
	public int getExp_transe() {
		return exp_transe;
	}
	public void setExp_transe(int exp_transe) {
		this.exp_transe = exp_transe;
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
