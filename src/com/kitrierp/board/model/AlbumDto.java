package com.kitrierp.board.model;

public class AlbumDto extends BoardDto {

	private int bfile_seq;
	private String bfile_origin_name;
	private String bfile_path;
	private String bfile_savefolder;
	private String bfile_save_name;
	
	public int getBfile_seq() {
		return bfile_seq;
	}
	public void setBfile_seq(int bfile_seq) {
		this.bfile_seq = bfile_seq;
	}
	public String getBfile_origin_name() {
		return bfile_origin_name;
	}
	public void setBfile_origin_name(String bfile_origin_name) {
		this.bfile_origin_name = bfile_origin_name;
	}
	public String getBfile_path() {
		return bfile_path;
	}
	public void setBfile_path(String bfile_path) {
		this.bfile_path = bfile_path;
	}
	public String getBfile_savefolder() {
		return bfile_savefolder;
	}
	public void setBfile_savefolder(String bfile_savefolder) {
		this.bfile_savefolder = bfile_savefolder;
	}
	public String getBfile_save_name() {
		return bfile_save_name;
	}
	public void setBfile_save_name(String bfile_save_name) {
		this.bfile_save_name = bfile_save_name;
	}
	
}
