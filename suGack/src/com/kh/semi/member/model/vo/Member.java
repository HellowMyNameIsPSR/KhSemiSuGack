package com.kh.semi.member.model.vo;

import java.sql.Date;

public class Member implements java.io.Serializable{
	private int memberId;
	private String email;
	private String password;
	private String memberName;
	private String nickName;
	private String phone;
	private String gender;
	private Date birthDate;
	private Date enrollDate;
	private String memberType;
	private Date authorDate;
	private int point;
	private String emailYN;
	private Date outDate;
	private Date modifyDate;
	
	
	
	
	public Member() {}




	public Member(int memberId, String email, String password, String memberName, String nickName, String phone,
			String gender, Date birthDate, Date enrollDate, String memberType, Date authorDate, int point,
			String emailYN, Date outDate, Date modifyDate) {
		super();
		this.memberId = memberId;
		this.email = email;
		this.password = password;
		this.memberName = memberName;
		this.nickName = nickName;
		this.phone = phone;
		this.gender = gender;
		this.birthDate = birthDate;
		this.enrollDate = enrollDate;
		this.memberType = memberType;
		this.authorDate = authorDate;
		this.point = point;
		this.emailYN = emailYN;
		this.outDate = outDate;
		this.modifyDate = modifyDate;
	}




	public int getMemberId() {
		return memberId;
	}




	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}




	public String getEmail() {
		return email;
	}




	public void setEmail(String email) {
		this.email = email;
	}




	public String getPassword() {
		return password;
	}




	public void setPassword(String password) {
		this.password = password;
	}




	public String getMemberName() {
		return memberName;
	}




	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}




	public String getNickName() {
		return nickName;
	}




	public void setNickName(String nickName) {
		this.nickName = nickName;
	}




	public String getPhone() {
		return phone;
	}




	public void setPhone(String phone) {
		this.phone = phone;
	}




	public String getGender() {
		return gender;
	}




	public void setGender(String gender) {
		this.gender = gender;
	}




	public Date getBirthDate() {
		return birthDate;
	}




	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}




	public Date getEnrollDate() {
		return enrollDate;
	}




	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}




	public String getMemberType() {
		return memberType;
	}




	public void setMemberType(String memberType) {
		this.memberType = memberType;
	}




	public Date getAuthorDate() {
		return authorDate;
	}




	public void setAuthorDate(Date authorDate) {
		this.authorDate = authorDate;
	}




	public int getPoint() {
		return point;
	}




	public void setPoint(int point) {
		this.point = point;
	}




	public String getEmailYN() {
		return emailYN;
	}




	public void setEmailYN(String emailYN) {
		this.emailYN = emailYN;
	}




	public Date getOutDate() {
		return outDate;
	}




	public void setOutDate(Date outDate) {
		this.outDate = outDate;
	}




	public Date getModifyDate() {
		return modifyDate;
	}




	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}




	@Override
	public String toString() {
		return "Member [memberId=" + memberId + ", email=" + email + ", password=" + password + ", memberName="
				+ memberName + ", nickName=" + nickName + ", phone=" + phone + ", gender=" + gender + ", birthDate="
				+ birthDate + ", enrollDate=" + enrollDate + ", memberType=" + memberType + ", authorDate=" + authorDate
				+ ", point=" + point + ", emailYN=" + emailYN + ", outDate=" + outDate + ", modifyDate=" + modifyDate
				+ "]";
	}

	


}
