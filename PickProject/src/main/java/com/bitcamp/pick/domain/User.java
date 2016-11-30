package com.bitcamp.pick.domain;

import java.util.List;

public class User {
		
	private String userEmail;
	private String userPassword;
	private String userName;
	private String userGender;
	private String userAge;
	private String userPhoto;
	private String userType;
	private List<Interest> interestList;
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(String userEmail, String userPassword, String userName, String userGender, String userAge,
			String userPhoto, String userType, List<Interest> interestList) {
		super();
		this.userEmail = userEmail;
		this.userPassword = userPassword;
		this.userName = userName;
		this.userGender = userGender;
		this.userAge = userAge;
		this.userPhoto = userPhoto;
		this.userType = userType;
		this.interestList = interestList;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserGender() {
		return userGender;
	}
	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}
	public String getUserAge() {
		return userAge;
	}
	public void setUserAge(String userAge) {
		this.userAge = userAge;
	}
	public String getUserPhoto() {
		return userPhoto;
	}
	public void setUserPhoto(String userPhoto) {
		this.userPhoto = userPhoto;
	}
	public String getUserType() {
		return userType;
	}
	public void setUserType(String userType) {
		this.userType = userType;
	}
	public List<Interest> getInterestList() {
		return interestList;
	}
	public void setInterestList(List<Interest> interestList) {
		this.interestList = interestList;
	}
	@Override
	public String toString() {
		return "User [userEmail=" + userEmail + ", userPassword=" + userPassword + ", userName=" + userName
				+ ", userGender=" + userGender + ", userAge=" + userAge + ", userPhoto=" + userPhoto + ", userType="
				+ userType + ", interestList=" + interestList + "]";
	}
}
