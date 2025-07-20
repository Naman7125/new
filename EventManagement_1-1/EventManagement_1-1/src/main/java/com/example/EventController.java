package com.example;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class EventController {
	
	@Autowired
	private EventRepository repo;
	
	@GetMapping("/")
	public String showForm(Model model)
	{
		model.addAttribute("event", new EventModel());
		return "register";
	}
	
	@PostMapping("/register")
	public String register(@ModelAttribute EventModel event)
	{
		repo.save(event);
		return "redirect:/";
		
	}
	
	@GetMapping("/admin")
	public String showAdminForm()
	{
		return "adminForm";
	}
	
	@PostMapping("/admin/views")
	public String adminRedirect(@RequestParam String username, @RequestParam String password)
	{
		if(username.equals("admin") && password.equals("admin"))
		return "redirect:/views";
		else
		return "redirect:/";
	}
	
	@GetMapping("/views")
	public String viewall(Model model)
	{
		model.addAttribute("list", repo.findAll());
		return "view";
	}
}
