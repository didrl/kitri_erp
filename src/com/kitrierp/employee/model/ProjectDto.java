package com.kitrierp.employee.model;

import java.util.List;

import com.kitrierp.common.model.FileDto;

public class ProjectDto extends EmployeeDto {

	private int proj_id;
	private int proj_category;
	private String proj_start;
	private String proj_end;
	private String proj_name;
	private String proj_explain;
	private String proj_file;
	private String proj_rdate;
	
	List<ProjectNumberDto> pn;
	List<FileDto> file;
	
	public int getProj_id() {
		return proj_id;
	}
	public void setProj_id(int proj_id) {
		this.proj_id = proj_id;
	}
	public int getProj_category() {
		return proj_category;
	}
	public void setProj_category(int proj_category) {
		this.proj_category = proj_category;
	}
	public String getProj_start() {
		return proj_start;
	}
	public void setProj_start(String proj_start) {
		this.proj_start = proj_start;
	}
	public String getProj_end() {
		return proj_end;
	}
	public void setProj_end(String proj_end) {
		this.proj_end = proj_end;
	}
	public String getProj_name() {
		return proj_name;
	}
	public void setProj_name(String proj_name) {
		this.proj_name = proj_name;
	}
	public String getProj_explain() {
		return proj_explain;
	}
	public void setProj_explain(String proj_explain) {
		this.proj_explain = proj_explain;
	}
	public String getProj_file() {
		return proj_file;
	}
	public void setProj_file(String proj_file) {
		this.proj_file = proj_file;
	}
	public String getProj_rdate() {
		return proj_rdate;
	}
	public void setProj_rdate(String proj_rdate) {
		this.proj_rdate = proj_rdate;
	}
	public List<ProjectNumberDto> getPn() {
		return pn;
	}
	public void setPn(List<ProjectNumberDto> pn) {
		this.pn = pn;
	}
	public List<FileDto> getFile() {
		return file;
	}
	public void setFile(List<FileDto> file) {
		this.file = file;
	}
	
}
