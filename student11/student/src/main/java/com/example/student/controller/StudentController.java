package com.example.student.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.example.student.model.StudentModel;
import com.example.student.repository.StudentRepository;

@Controller
public class StudentController {

    @Autowired
    private StudentRepository studRepo;

    @GetMapping("/")
    public String showForm(Model model) {
        model.addAttribute("student", new StudentModel());
        return "register";
    }

    @PostMapping("/register")
    public String register(@ModelAttribute StudentModel student) {
        studRepo.save(student);
        return "redirect:/students";
    }

    @GetMapping("/students")
    public String listStudents(Model model) {
        model.addAttribute("students", studRepo.findAll());
        return "students";
    }

    @GetMapping("/edit/{id}")
    public String showEditForm(@PathVariable Integer id, Model model) {
        StudentModel student = studRepo.findById(id)
            .orElseThrow(() -> new IllegalArgumentException("Invalid student Id: " + id));
        model.addAttribute("student", student);
        return "edit";
    }

    @PostMapping("/update")
    public String updateStudent(@ModelAttribute StudentModel student) {
        studRepo.save(student);
        return "redirect:/students";
    }

    @GetMapping("/delete/{id}")
    public String deleteStudent(@PathVariable Integer id) {
        StudentModel student = studRepo.findById(id)
            .orElseThrow(() -> new IllegalArgumentException("Invalid student Id: " + id));
        studRepo.delete(student);
        return "redirect:/students";
    }
}
