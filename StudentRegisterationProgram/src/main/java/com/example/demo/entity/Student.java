package com.example.demo.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "students")
public class Student {

    @Id
    private Long id; // 👈 Removed @GeneratedValue

    @Column(name = "student_name")
    private String studentName;

    private String course;
    private String email;
    private String address;

    // Constructors
    public Student() {}

    public Student(Long id, String studentName, String course, String email, String address) {
        this.id = id;
        this.studentName = studentName;
        this.course = course;
        this.email = email;
        this.address = address;
    }

    // Getters and Setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {  // 👈 Add this setter
        this.id = id;
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public String getCourse() {
        return course;
    }

    public void setCourse(String course) {
        this.course = course;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
