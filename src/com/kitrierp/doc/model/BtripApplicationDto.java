package com.kitrierp.doc.model;

public class BtripApplicationDto extends DocumentDto {
	private String start_date;
	private String end_date;
	private String btrip_location;
	private String btrip_purpose;
	
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
	public String getBtrip_purpose() {
		return btrip_purpose;
	}
	public void setBtrip_purpose(String btrip_purpose) {
		this.btrip_purpose = btrip_purpose;
	}

}
