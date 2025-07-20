package com.example.demo.controller;

import com.example.demo.entity.Student;
import com.example.demo.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class StudentController {

    @Autowired
    private StudentService studentService;

    // Display home page with list of all students
    @GetMapping("/")
    public String viewHomePage(Model model) {
        model.addAttribute("students", studentService.getAllStudents());
        return "index"; // refers to index.html or index.jsp
    }

    // Show registration form
    @GetMapping("/register")
    public String showForm(Model model) {
        model.addAttribute("student", new Student()); // bind empty object to form
        return "register"; // refers to register.html or register.jsp
    }

    // Save new student to database
    @PostMapping("/save")
    public String saveStudent(@ModelAttribute("student") Student student) {
        studentService.saveStudent(student); // save to DB using service
        return "redirect:/"; // redirect to home page
    }

    // Delete student by ID
    @GetMapping("/delete")
    public String deleteStudent(@RequestParam("id") int id) {
        studentService.deleteStudentById(id); // delete from DB
        return "redirect:/"; // refresh list
    }
}
