package com.bitcamp.pick.domain;

public class Interest {
	private String content;
	private String interestPhoto;
	public Interest() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Interest(String content, String interestPhoto) {
		super();
		this.content = content;
		this.interestPhoto = interestPhoto;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getInterestPhoto() {
		return interestPhoto;
	}
	
	public void setInterestPhoto(String interestPhoto) {
		this.interestPhoto = interestPhoto;
	}
	@Override
	public String toString() {
		return "Interest [content=" + content + ", interestPhoto=" + interestPhoto + "]";
	}
	
}
