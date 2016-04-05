package com.gyq.dao;

import java.util.List;

import com.gyq.model.Student;
import com.gyq.model.query.StudentQuery;

public interface StudentDao {
	
	/**
	 * 通过学生编号查询学生信息
	 * @param stuNo
	 * @return
	 */
	public Student getStudent(String stuNo);
	
	/**
	 * 获取全部学生信息
	 * @return
	 */
	public List<Student> getAllStudent();
	
	/**
	 * 通过查询条件查询学生信息
	 * @param student
	 * @return
	 */
	public List<Student> getStudents(StudentQuery studentQuery);
	
	/**
	 * 添加学生信息
	 * @param student
	 */
	public void addStudent(Student student);
	
	/**
	 * ͨ修改学生信息
	 * @param student
	 */
	public void updateStudent(Student student);
	
	/**
	 * ͨ删除学生信息
	 * @param stuNo
	 */
	public void deleteStudent(String stuNo);
}
