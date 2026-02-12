package edu.student.project.service;

import java.util.List;

import edu.student.project.dao.StudentDAO;
import edu.student.project.model.Student;

public class StudentService {
    private StudentDAO studentDAO = new StudentDAO();

    public void registerStudent(String name, String email) {
        studentDAO.saveStudent(new Student(name, email));
    }

    public List<Student> getAllStudents() {
        return studentDAO.getAllStudents();
    }

    public Student getStudent(int id) {
        return studentDAO.getStudent(id);
    }

    public void updateStudentInfo(int id, String name, String email) {
        Student student = new Student(name, email);
        student.setId(id);
        studentDAO.updateStudent(student);
    }

    public void removeStudent(int id) {
        studentDAO.deleteStudent(id);
    }
}