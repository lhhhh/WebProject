package com.gyq.model.query;

import java.util.Date;

import com.gyq.model.Student;

public class StudentQuery extends Student {
	private Date begindate;
	private Date enddate;
	public Date getBegindate() {
		return begindate;
	}
	public void setBegindate(Date begindate) {
		this.begindate = begindate;
	}
	public Date getEnddate() {
		return enddate;
	}
	public void setEnddate(Date enddate) {
		this.enddate = enddate;
	}
	
}
