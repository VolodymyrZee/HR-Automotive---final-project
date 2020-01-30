package com.myProject.HRproject.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.myProject.HRproject.model.Users;
import com.myProject.HRproject.repository.UserRepository;

@Controller
public class LoginController {
	private UserRepository userRepository;

	@Autowired
	public LoginController(UserRepository userRepository) {
	super();
	this.userRepository = userRepository;
	}


	@PostMapping("search")
	public String search(@RequestParam String name, Model model) {
	model.addAttribute("msg", userRepository.findByName(name).size()+" user found");
	model.addAttribute("users", userRepository.findByName(name));
	return "index";
	}


	@GetMapping("register")
	public String register(Model model) {
	model.addAttribute("msg", "Register");
	return "register";
	}

	@PostMapping("register")
	public String register(@ModelAttribute Users user, RedirectAttributes model) {

		
		
		Users usr = userRepository.findByEmail(user.getEmail());
		if(usr !=null) {
			
			
			
			usr.setFname(user.getFname());
			usr.setLname(user.getLname());
			usr.setPhone(user.getPhone());
			
			usr.setCarYear(user.getCarYear());
			usr.setCarMake(user.getCarMake());
			usr.setCarModel(user.getCarModel());
			usr.setCarColor(user.getCarColor());
			usr.setCarLicensePlate(user.getCarLicensePlate());
			userRepository.save(usr);
			model.addFlashAttribute("success", "User "+user.getFname()+" "+user.getLname()+" Updated");
		}else { 
			userRepository.save(user);
			model.addAttribute("success", "User "+user.getFname()+" "+user.getLname()+" saved");
			
			return "redirect:/index";
				
		}
		
	userRepository.save(user);
	    model.addFlashAttribute("success", "User "+user.getFname()+" "+user.getLname()+" saved");
	return "redirect:/index";
	}

	@GetMapping("delete")
	public String deleteUser(@RequestParam long id, RedirectAttributes redirect) {
		
		userRepository.deleteById(id);
		redirect.addFlashAttribute("success", "Delete Successfull");
		
		return "redirect:/index";
	}

	@GetMapping("update")
	public String update(@RequestParam long id, Model model) {
		
		userRepository.findById(id);
		model.addAttribute("msg", "Update Successfull");
		model.addAttribute("user", userRepository.findById(id));
//		model.addAttribute("action", "updateUser" );
		
		return "register";
	}

	@PostMapping("updateUser")
	public String update(@ModelAttribute Users user, RedirectAttributes model) {
		Users usr = userRepository.findByEmail(user.getEmail());
		usr.setFname(user.getFname());
		usr.setLname(user.getLname());
		usr.setPhone(user.getPhone());
		
		usr.setCarYear(user.getCarYear());
		usr.setCarMake(user.getCarMake());
		usr.setCarModel(user.getCarModel());
		usr.setCarColor(user.getCarColor());
		usr.setCarLicensePlate(user.getCarLicensePlate());
		userRepository.save(usr);
		model.addFlashAttribute("success", "User "+user.getFname()+" "+user.getLname()+" Updated");
		return "redirect:/index";
	}





	@ModelAttribute("user")
	Users user() {
	return new Users();
	}




}
