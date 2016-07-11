package com.kitrierp.board.model;

public class BbsDto extends BoardDto {

	private int bbs_seq;
	private String bbs_origin_name;
	private String bbs_path;
	private String bbs_savefolder;
	private String bbs_save_name;
	
	public int getBbs_seq() {
		return bbs_seq;
	}
	public void setBbs_seq(int bbs_seq) {
		this.bbs_seq = bbs_seq;
	}
	public String getBbs_origin_name() {
		return bbs_origin_name;
	}
	public void setBbs_origin_name(String bbs_origin_name) {
		this.bbs_origin_name = bbs_origin_name;
	}
	public String getBbs_path() {
		return bbs_path;
	}
	public void setBbs_path(String bbs_path) {
		this.bbs_path = bbs_path;
	}
	public String getBbs_savefolder() {
		return bbs_savefolder;
	}
	public void setBbs_savefolder(String bbs_savefolder) {
		this.bbs_savefolder = bbs_savefolder;
	}
	public String getBbs_save_name() {
		return bbs_save_name;
	}
	public void setBbs_save_name(String bbs_save_name) {
		this.bbs_save_name = bbs_save_name;
	}
	
}
