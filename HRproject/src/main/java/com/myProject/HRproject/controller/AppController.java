package com.myProject.HRproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.myProject.HRproject.WebUtils;
import com.myProject.HRproject.service.UserService;
import com.myProject.HRproject.model.Users;
import com.myProject.HRproject.repository.UserRepository;




@Controller
public class AppController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	WebUtils webUtils;

	@Autowired
	private UserRepository userRepository;
	
	@GetMapping({"index", "/"})
	
	 public String index(Model model) {
		model.addAttribute("msg","Hello. We are HR Automotive. Happy to have you with us!");
		model.addAttribute("users",userRepository.findAll());
		 return "index";
		 
	 }
	
	@GetMapping("about")
	
	 public String about(Model model) {
		model.addAttribute("msg","Professional diagnostic and reasonable prices. Egnine, Transmission, Suspension, Brakes, Perfomance and much more. We can do it all! Certified mechanics with years of experience. State of the art facility with new lifts and professional tools.");
		
		 return "about";
		 
	 }
	
	
	@GetMapping("services")
	
	 public String services(Model model) {
		model.addAttribute("msg"," We specialize in European vehicles and we can guarantee an exceptional experience while providing quality car maintenance and repairs. Your experience with HR Automotive Services will be unlike any other because of our quick, reliant, and efficient work. We know it can be difficult to find the perfect auto shop, but your search is over. After visiting HR Automotive Services you will be able to tell the difference.");
		
		 return "services";
		 
	 }
	
	
	
	@PostMapping("sendemail")
	public String sendemail(Model model, @RequestParam String email,
							@RequestParam String name,
							@RequestParam String subject,
							@RequestParam String message) {
		
		try {
			webUtils.sendMail("kennjuma16@gmail.com", 
							  message+ " From "+name, subject);
			model.addAttribute("msg", "email sent");
		} catch (Exception e) {
			model.addAttribute("msg", e);
		}
		return "services";
	}
	
	
	@GetMapping("name")
	
	 public String name(@RequestParam int id, Model model) {
		model.addAttribute("msg", id);
		
		 return "index";
		 
	 }
	
	@GetMapping("getname-{id}")
	public String getname(@PathVariable String id, Model model) {
	model.addAttribute("msg", id);
	return "index";		
	}
	
	@PostMapping("whatisyouname")
	public String login(@RequestParam String lname,
						@RequestParam String fname, Model model) {
		model.addAttribute("msg", "Last Name "+ lname+" first name "+fname);
		
	return "index";		
	}
	
//	@GetMapping("Login")
//	public String login(@RequestParam String fname, @RequestParam String lname, Model model) {
//		model.addAttribute("msg", fname+" "+lname);
//		return "index";
//	}
	
//	@PostMapping("Login")
//	public String login(@RequestParam String fname, @RequestParam String lname, Model model) {
//		model.addAttribute("msg", fname+" "+lname);
//		return "index";
//	}
	
//	
//	@GetMapping("register")
//	public String register(Model model) {
//		model.addAttribute("msg", "Register");
//	model.addAttribute("user", new Users());    //user tag is model Attribute      initialize new Users
//		return "register";
//	}
//	
//	@PostMapping("register")
//	public String register(@ModelAttribute Users user, Model model) {
//		
//	model.addAttribute("msg", user);    //user tag is model Attribute      initialize new Users
//	model.addAttribute("users", user);  
//	model.addAttribute("user", new Users());  
//		return "register";
//	
//}
}
