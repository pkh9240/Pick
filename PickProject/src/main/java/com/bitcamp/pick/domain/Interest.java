package com.bitcamp.pick.domain;

import java.util.List;

public class Interest {
	private int interestNo;
	private String content;
	private String interestPhoto;
	private List<User> userList;
	
	
	public Interest(int interestNo) {
		super();
		this.interestNo = interestNo;
	}
	public Interest() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getInterestNo() {
		return interestNo;
	}
	public void setInterestNo(int interestNo) {
		this.interestNo = interestNo;
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
	public List<User> getUserList() {
		return userList;
	}
	public void setUserList(List<User> userList) {
		this.userList = userList;
	}
	@Override
	public String toString() {
		return "Interest [interestNo=" + interestNo + ", content=" + content + ", interestPhoto=" + interestPhoto + "]";
	}
	
	
}
