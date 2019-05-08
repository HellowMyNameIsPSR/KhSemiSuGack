package com.kh.semi.member.model.vo;

import java.sql.Date;

public class Member implements java.io.Serializable{
	private int uno;
	private String email;
	private String userPwd;
	private String nickName;
	private String phone;
	private Date enrollDate;
	private Date modifyDate;
	private String status;
	private Date BirthDate;
	
	public Member() {}

	public Member(int uno, String email, String userPwd, String nickName, String phone, Date enrollDate,
			Date modifyDate, String status, Date birthDate) {
		super();
		this.uno = uno;
		this.email = email;
		this.userPwd = userPwd;
		this.nickName = nickName;
		this.phone = phone;
		this.enrollDate = enrollDate;
		this.modifyDate = modifyDate;
		this.status = status;
		BirthDate = birthDate;
	}

	public int getUno() {
		return uno;
	}

	public String getEmail() {
		return email;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public String getNickName() {
		return nickName;
	}

	public String getPhone() {
		return phone;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public Date getModifyDate() {
		return modifyDate;
	}

	public String getStatus() {
		return status;
	}

	public Date getBirthDate() {
		return BirthDate;
	}

	public void setUno(int uno) {
		this.uno = uno;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public void setBirthDate(Date birthDate) {
		BirthDate = birthDate;
	}

	@Override
	public String toString() {
		return "Member [uno=" + uno + ", email=" + email + ", userPwd=" + userPwd + ", nickName=" + nickName
				+ ", phone=" + phone + ", enrollDate=" + enrollDate + ", modifyDate=" + modifyDate + ", status="
				+ status + ", BirthDate=" + BirthDate + "]";
	}
	
	
	


}
