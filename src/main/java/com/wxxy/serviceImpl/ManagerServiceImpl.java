package com.wxxy.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wxxy.dao.StudentDao;
import com.wxxy.dao.TeacherDao;
import com.wxxy.entities.Student;
import com.wxxy.entities.Teacher;
import com.wxxy.service.ManagerService;

@Service("ManagerService")
public class ManagerServiceImpl implements ManagerService{

	@Autowired
	private StudentDao studentDao;
	
	@Autowired
	private TeacherDao teacherDao;
	
	@Override
	public void registerStudent(Student student) {
		studentDao.add(student);
	}

	@Override
	public void registerTeacher(Teacher teacher) {
		teacherDao.add(teacher);
	}

	@Override
	public List<Student> getStudentList() {
		return studentDao.findAllStudent();
	}

	@Override
	public List<Teacher> getTeacherList() {
		return teacherDao.getAllTeacher();
	}

	@Override
	public void removeStudent(int id) {
		studentDao.deleteById(id);
	}

	@Override
	public void removeTeacher(int id) {
		teacherDao.deleteById(id);
	}

	@Override
	public void updateStudent(Student student) {
		studentDao.update(student);
	}

	@Override
	public void updateTeacher(Teacher teacher) {
		teacherDao.update(teacher);
	}

}
