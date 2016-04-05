package com.gyq.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.junit.Test;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gyq.dao.StudentDao;
import com.gyq.model.Student;
import com.gyq.model.query.StudentQuery;

@Controller
@RequestMapping("/student")
public class StudentController {
//	这是分支1
//	就是一下切换分支后是否还可以看到
	protected final Log log = LogFactory.getLog(getClass());
	
	@Resource
	private StudentDao stuDao;
	
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");  

	@RequestMapping("/getStudent.do")
	public String getStudent(HttpServletRequest request,Model model,String stuNo){  
		Student stu = new Student();
		stu = stuDao.getStudent(stuNo);
		request.setAttribute("stu", stu);
		
        return "wel";  
    } 
	
	@RequestMapping("/getAllStudent.do")
	public String getAllStudent(HttpServletRequest request,Model model){
		List<Student> stus = stuDao.getAllStudent();
		request.setAttribute("stus", stus);
		return "allStudentInfo";
	}
	
	@RequestMapping("/searchStudent.do")
	public String searchStudent(HttpServletRequest request,Model model,String stuName,Integer sex,String begindate,String enddate){
		StudentQuery stuQuery = new StudentQuery();
		if(stuName!="" && stuName!=null)
			stuQuery.setStuName(stuName);
		if(sex!=null)
			stuQuery.setSex(sex);
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		try {
			if(begindate!="" && begindate!=null)
				stuQuery.setBegindate(sdf.parse(begindate+" 00:00:00"));
			if(enddate!="" && enddate!=null)
				stuQuery.setEnddate(sdf.parse(enddate+" 00:00:00"));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		List<Student> stus = stuDao.getStudents(stuQuery);
		request.setAttribute("stus", stus);
		return "allStudentInfo";
	}
	
	@RequestMapping("/initStudent.do")
	public String initStudent(HttpServletRequest request,Model model,String stuNo){
		if(stuNo!=null && stuNo!=""){
			Student stu = stuDao.getStudent(stuNo);
			request.setAttribute("stu", stu);
		}
		return "/addStudent";
	}
	
	@RequestMapping("/addStudent.do")
	public String addStudent(HttpServletRequest request,Model model,Student student,String startingDateStr){
		try {
			student.setStartingDate(sdf.parse(startingDateStr+" 00:00:00"));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		stuDao.addStudent(student);
		return "../../index";
	}
	
	@RequestMapping("/updateStudent.do")
	public String updateStudent(HttpServletRequest request,Model model,Student student,String startingDateStr){
		try {
			student.setStartingDate(sdf.parse(startingDateStr+" 00:00:00"));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		stuDao.updateStudent(student);
		return "../../index";
	}
	
	@RequestMapping("/deleteStudent.do")
	public String deleteStudent(HttpServletRequest request,Model model,String stuNo){
		stuDao.deleteStudent(stuNo);
		return "../../index";
	}
}
