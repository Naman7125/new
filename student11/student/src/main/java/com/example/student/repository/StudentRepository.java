package com.example.student.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.student.model.StudentModel;

public interface StudentRepository extends JpaRepository<StudentModel, Integer>{

}
