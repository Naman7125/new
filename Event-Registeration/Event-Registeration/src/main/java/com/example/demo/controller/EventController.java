package com.example.demo.controller;

import com.example.demo.model.EventRegistration;
import com.example.demo.repository.EventRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class EventController {

    @Autowired
    private EventRepository eventRepository;

    // Home page mapped to registration form
    @GetMapping("/")
    public String showForm(Model model) {
        model.addAttribute("event", new EventRegistration()); // Form backing object
        return "register"; // Maps to /WEB-INF/views/register.jsp
    }

    // Handles registration form submission
    @PostMapping("/register")
    public String submitForm(@ModelAttribute("event") EventRegistration registration) {
        eventRepository.save(registration); // Save to DB using Spring Data JPA
        return "redirect:/participants"; // Redirect to participant list
    }

    // Display list of all participants
    @GetMapping("/participants")
    public String viewParticipants(Model model) {
        model.addAttribute("participants", eventRepository.findAll()); // Fetch all registrations
        return "viewParticipant"; // Maps to /WEB-INF/views/viewParticipant.jsp
    }
}
