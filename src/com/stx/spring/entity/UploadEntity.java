package com.stx.spring.entity;

public class UploadEntity {
	private int uid;
	private String fileName;
	private String content;
	private String fileUrl;
	private String person;
	private String time;
	public String getPerson() {
		return person;
	}

	public void setPerson(String person) {
		this.person = person;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public UploadEntity(){}
	
	public UploadEntity(int uid, String content, String fileUrl) {
		this.uid = uid;
		this.content = content;
		this.fileUrl = fileUrl;
	}
	
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getFileUrl() {
		return fileUrl;
	}
	public void setFileUrl(String fileUrl) {
		this.fileUrl = fileUrl;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	
}
