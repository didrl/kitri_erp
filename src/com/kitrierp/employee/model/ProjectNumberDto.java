package com.kitrierp.employee.model;

public class ProjectNumberDto extends EmployeeDto {

	private int proj_id;
	private String col_start;
	private String col_end;
	private int col_progress;
	private String col_content;
	
	public int getProj_id() {
		return proj_id;
	}
	public void setProj_id(int proj_id) {
		this.proj_id = proj_id;
	}
	public String getCol_start() {
		return col_start;
	}
	public void setCol_start(String col_start) {
		this.col_start = col_start;
	}
	public String getCol_end() {
		return col_end;
	}
	public void setCol_end(String col_end) {
		this.col_end = col_end;
	}
	public int getCol_progress() {
		return col_progress;
	}
	public void setCol_progress(int col_progress) {
		this.col_progress = col_progress;
	}
	public String getCol_content() {
		return col_content;
	}
	public void setCol_content(String col_content) {
		this.col_content = col_content;
	}
	
}
