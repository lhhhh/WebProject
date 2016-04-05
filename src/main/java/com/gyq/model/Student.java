package com.gyq.model;

import java.util.Date;

public class Student {

	private String stuNo;
	private String stuName;
	private Integer sex;
	private Integer age;
	private String idCard;
	private String telphone;
	private Date startingDate;
	
	public String getStuNo() {
		return stuNo;
	}
	public void setStuNo(String stuNo) {
		this.stuNo = stuNo;
	}
	public String getStuName() {
		return stuName;
	}
	public void setStuName(String stuName) {
		this.stuName = stuName;
	}
	public Integer getSex() {
		return sex;
	}
	public void setSex(Integer sex) {
		this.sex = sex;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public String getIdCard() {
		return idCard;
	}
	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}
	public String getTelphone() {
		return telphone;
	}
	public void setTelphone(String telphone) {
		this.telphone = telphone;
	}
	public Date getStartingDate() {
		return startingDate;
	}
	public void setStartingDate(Date startingDate) {
		this.startingDate = startingDate;
	}
	public Student(){}
	
	public Student(String stuNo,String StuName,int sex,int age,String idCar,String telphone,Date startingDate){
		this.stuNo=stuNo;
		this.stuName=StuName;
		this.sex=sex;
		this.age=age;
		this.idCard=idCar;
		this.telphone=telphone;
		this.startingDate=startingDate;
	}
}
