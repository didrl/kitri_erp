package com.kitrierp.employee.model;

public class AddressbookDto extends EmployeeDto {

	private int addr_seq; 
	private String addr_name;
	private String addr_email;
	private String addr_tel;
	private String addr_etel;
	private String addr_fax;
	private String addr_flag;
	
	private String addr_addr;
	private String addr_cpname;
	private String addr_cpdep;
	private String addr_cpgrade;
	private String addr_cptel;
	private String addr_cpaddr;
	
	
	public String getAddr_addr() {
		return addr_addr;
	}
	public void setAddr_addr(String addr_addr) {
		this.addr_addr = addr_addr;
	}
	public String getAddr_cpname() {
		return addr_cpname;
	}
	public void setAddr_cpname(String addr_cpname) {
		this.addr_cpname = addr_cpname;
	}
	public String getAddr_cpdep() {
		return addr_cpdep;
	}
	public void setAddr_cpdep(String addr_cpdep) {
		this.addr_cpdep = addr_cpdep;
	}
	public String getAddr_cpgrade() {
		return addr_cpgrade;
	}
	public void setAddr_cpgrade(String addr_cpgrade) {
		this.addr_cpgrade = addr_cpgrade;
	}
	public String getAddr_cptel() {
		return addr_cptel;
	}
	public void setAddr_cptel(String addr_cptel) {
		this.addr_cptel = addr_cptel;
	}
	public String getAddr_cpaddr() {
		return addr_cpaddr;
	}
	public void setAddr_cpaddr(String addr_cpaddr) {
		this.addr_cpaddr = addr_cpaddr;
	}
	public String getAddr_name() {
		return addr_name;
	}
	public void setAddr_name(String addr_name) {
		this.addr_name = addr_name;
	}
	public String getAddr_tel() {
		return addr_tel;
	}
	public void setAddr_tel(String addr_tel) {
		this.addr_tel = addr_tel;
	}
	public String getAddr_etel() {
		return addr_etel;
	}
	public void setAddr_etel(String addr_etel) {
		this.addr_etel = addr_etel;
	}
	public String getAddr_fax() {
		return addr_fax;
	}
	public void setAddr_fax(String addr_fax) {
		this.addr_fax = addr_fax;
	}
	public String getAddr_flag() {
		return addr_flag;
	}
	public void setAddr_flag(String addr_flag) {
		this.addr_flag = addr_flag;
	}
	public int getAddr_seq() {
		return addr_seq;
	}
	public void setAddr_seq(int addr_seq) {
		this.addr_seq = addr_seq;
	}
	public String getAddr_email() {
		return addr_email;
	}
	public void setAddr_email(String addr_email) {
		this.addr_email = addr_email;
	}
	
}
