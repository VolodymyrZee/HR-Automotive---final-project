package com.myProject.HRproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.myProject.HRproject.model.Users;
import com.myProject.HRproject.repository.UserRepository;




@Controller
public class AppController {

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
		model.addAttribute("msg","Professional diagnostic and reasonable prices. Egnine, Transmission, Suspension, Brakes, Perfomance and much more. We can do it all!");
		model.addAttribute("success","Certified mechanics with years of experience. State of the art facility with new lifts and professional tools.");
		 return "about";
		 
	 }
	
	
	@GetMapping("services")
	
	 public String services(Model model) {
		model.addAttribute("msg"," We specialize in European vehicles and we can guarantee an exceptional experience while providing quality car maintenance and repairs. Your experience with HR Automotive Services will be unlike any other because of our quick, reliant, and efficient work.");
		model.addAttribute("success","We know it can be difficult to find the perfect auto shop, but your search is over. After visiting HR Automotive Services you will be able to tell the difference. ");
		 return "services";
		 
	 }
	
	@GetMapping("name")
	
	 public String name(@RequestParam String id, Model model) {
		model.addAttribute("msg", id);
		
		 return "services";
		 
	 }
	
	@GetMapping("getName-{id}")
	
	 public String getName(@PathVariable String id, Model model) {
		model.addAttribute("msg", id);
		 return "index";
		 
	 }
	
//	@GetMapping("Login")
//	public String login(@RequestParam String fname, @RequestParam String lname, Model model) {
//		model.addAttribute("msg", fname+" "+lname);
//		return "index";
//	}
	
	@PostMapping("Login")
	public String login(@RequestParam String fname, @RequestParam String lname, Model model) {
		model.addAttribute("msg", fname+" "+lname);
		return "index";
	}
	
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
