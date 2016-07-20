package com.kitrierp.doc.model;

import java.util.List;

import com.kitrierp.common.model.FileDto;
import com.kitrierp.employee.model.EmployeeDto;

public class DocumentDto extends EmployeeDto {
	private String doc_id;
	private int doc_status_id;
	private String doc_status_name;
	private String doc_subject;
	private String doc_content;
	private String doc_date;
	private String doc_deadline;
	private int doc_open; 
	private int doc_dep_id;
	private String doc_dep_name;
	private int doc_type_id;

	private String doc_type_name;
	private String doc_note;
	
	List<SignInfoDto> sign_info;
	List<ReferenceDto> reference;
	List<CooperationDto> cooperation;
	List<ReceiveListDto> receiver;
	List<FileDto> file;
	
	public String getDoc_status_name() {
		return doc_status_name;
	}
	public void setDoc_status_name(String doc_status_name) {
		this.doc_status_name = doc_status_name;
	}
	public String getDoc_dep_name() {
		return doc_dep_name;
	}
	public void setDoc_dep_name(String doc_dep_name) {
		this.doc_dep_name = doc_dep_name;
	}
	public int getDoc_type_id() {
		return doc_type_id;
	}
	public void setDoc_type_id(int doc_type_id) {
		this.doc_type_id = doc_type_id;
	}
	public String getDoc_type_name() {
		return doc_type_name;
	}
	public void setDoc_type_name(String doc_type_name) {
		this.doc_type_name = doc_type_name;
	}
	public String getDoc_id() {
		return doc_id;
	}
	public void setDoc_id(String doc_id) {
		this.doc_id = doc_id;
	}
	public int getDoc_status_id() {
		return doc_status_id;
	}
	public void setDoc_status_id(int doc_status_id) {
		this.doc_status_id = doc_status_id;
	}
	public String getDoc_subject() {
		return doc_subject;
	}
	public void setDoc_subject(String doc_subject) {
		this.doc_subject = doc_subject;
	}
	public String getDoc_content() {
		return doc_content;
	}
	public void setDoc_content(String doc_content) {
		this.doc_content = doc_content;
	}
	public String getDoc_date() {
		return doc_date;
	}
	public void setDoc_date(String doc_date) {
		this.doc_date = doc_date;
	}
	public String getDoc_deadline() {
		return doc_deadline;
	}
	public void setDoc_deadline(String doc_deadline) {
		this.doc_deadline = doc_deadline;
	}
	public int getDoc_open() {
		return doc_open;
	}
	public void setDoc_open(int doc_open) {
		this.doc_open = doc_open;
	}
	public int getDoc_dep_id() {
		return doc_dep_id;
	}
	public void setDoc_dep_id(int doc_dep_id) {
		this.doc_dep_id = doc_dep_id;
	}
	public String getDoc_note() {
		return doc_note;
	}
	public void setDoc_note(String doc_note) {
		this.doc_note = doc_note;
	}
	public List<SignInfoDto> getSign_info() {
		return sign_info;
	}
	public void setSign_info(List<SignInfoDto> sign_info) {
		this.sign_info = sign_info;
	}
	public List<ReferenceDto> getReference() {
		return reference;
	}
	public void setReference(List<ReferenceDto> reference) {
		this.reference = reference;
	}
	public List<CooperationDto> getCooperation() {
		return cooperation;
	}
	public void setCooperation(List<CooperationDto> cooperation) {
		this.cooperation = cooperation;
	}
	public List<ReceiveListDto> getReceiver() {
		return receiver;
	}
	public void setReceiver(List<ReceiveListDto> receiver) {
		this.receiver = receiver;
	}
	public List<FileDto> getFile() {
		return file;
	}
	public void setFile(List<FileDto> file) {
		this.file = file;
	}
	
}

