package com.myProject.HRproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.myProject.HRproject.service.UserService;
import com.myProject.HRproject.validaition.DataValidation;
import com.myProject.HRproject.WebUtils;

import com.myProject.HRproject.model.Users;
import com.myProject.HRproject.repository.UserRepository;

@Controller
@SessionAttributes("loggedInUser")
public class LoginController {
	
	//private UserRepository userRepository;
	
	private DataValidation dataValidation;
	
	private WebUtils webUtils;
	
	private UserService userService;
	
	@Autowired
	public LoginController(UserService userService,
			//UserRepository userRepository, 
			DataValidation dataValidation, WebUtils webUtils) {
		super();
		//this.userRepository = userRepository;
		this.dataValidation = dataValidation;
		this.userService=userService;
		this.webUtils=webUtils;
	}

	@GetMapping("users")
	public String users(Model model) {
		
		model.addAttribute("users", userService.findAll());
		
		return "users";		
	}
	
	@GetMapping("login")
	public String login(Model model) {
		model.addAttribute("msg", "Login");
		return "login";		
	}
	
	@GetMapping("profile")
	public String profile(Model model) {
		model.addAttribute("msg", "Welcome back");
		return "profile";		
	}
	
	@PostMapping("login")
	public String signin(@RequestParam String email, 
			      @RequestParam String password, Model model) {
		try {
			Users user=userService.findByEmail(email).get();
			if(user !=null && password.equals(user.getPassword())) {
				model.addAttribute("msg", "Welcome "+email);
				model.addAttribute("loggedInUser", user);	
			}else {
				model.addAttribute("error", "Invalid Credentials");
				return "login";
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "profile";		
	}
	
	@PostMapping("search")
	public String search(@RequestParam String name, Model model) {
		
		model.addAttribute("msg", userService.findByLastname(name).size()+
				" user(s) found");
		model.addAttribute("users", userService.findByLastname(name));
		 
		return "users";		
	}
	
	@GetMapping("register")
	public String register(Model model) {
		
		model.addAttribute("msg", "Register");
		model.addAttribute("hidden", "");
		model.addAttribute("users", new Users());
		model.addAttribute("action", "register");
		
		return "register";		
	}
	
	@PostMapping("register")
	public String register(@ModelAttribute Users user, 
							Model model, BindingResult result,
							RedirectAttributes redirect) {
		
		try {
			dataValidation.validate(user, result);
			if (result.hasErrors()) {
				model.addAttribute("error", "Required* fields");
				model.addAttribute("hidden", "");
				model.addAttribute("action", "register");
		        return "register";
	        }
			user.setRole("USER");
			userService.save(user);
		    redirect.addFlashAttribute("success", "User "+user.getFname()+" saved");
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			//e.printStackTrace();
		}
    	return "redirect:/users";		
	}
	
	
	@GetMapping("delete")
	public String deleteuser(@RequestParam long id, 
			           RedirectAttributes redirect) {
		
		userService.delete(id);
		redirect.addFlashAttribute("success", "Delete Success");
		return "redirect:/users";		
	}
	
	@GetMapping("update")
	public String update(@RequestParam long id, Model model) {
		model.addAttribute("msg", "Update");
		model.addAttribute("users", userService.findById(id).get());
		model.addAttribute("hidden", "hidden");
		model.addAttribute("action", "updateUser");
		return "register";		
	}
	
	@PostMapping("updateUser")
	public String update(@ModelAttribute Users user, 
						RedirectAttributes model, Model mod,
						BindingResult result) {
		dataValidation.validateUpdate(user, result);
		if (result.hasErrors()) {
			mod.addAttribute("error", "Required* fields");
			mod.addAttribute("hidden", "hidden");
			mod.addAttribute("action", "updateUser");
	        return "register";
        }
		try {
			 userService.update(user);			   
			model.addFlashAttribute("success", "User "+user.getFname()+" Updated");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			//e.printStackTrace();
		}
		return "redirect:/users";		
	}
	
	@PostMapping("editprofile")
	public String editprofile(@ModelAttribute("user") Users user, 
						Model model) {
		
		try {
			Users usr= userService.findByEmail(user.getEmail()).get();
			usr.setFname(user.getFname());
			usr.setLname(user.getLname());
			usr.setPhone(user.getPhone());
			userService.save(usr);	
			model.addAttribute("loggedInUser", userService.findByEmail(user.getEmail()).get());
			
			model.addAttribute("success", " Updated success");
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			//e.printStackTrace();
		}
		return "profile";		
	}
	
	@GetMapping("logout")
	public String logout(Model model, WebRequest request, 
			SessionStatus status) {	
		status.setComplete();
		request.removeAttribute("loggedInUser", WebRequest.SCOPE_SESSION);
		model.addAttribute("success", "You have been signed out");
		return "login";
	}
	
	@PostMapping("editrole")
	public String giverole(RedirectAttributes model, @RequestParam long id, 
						   @RequestParam String role) {
	Users user= userService.findById(id).get();
	if(user !=null) {
		user.setRole(role);
		userService.save(user);
		model.addFlashAttribute("msg", user.getFname()+ " asigned role "+ role);
	}	
	return "redirect:/users";
	}
	
	@PostMapping("resetcode")
	public String resetcode(Model model, @RequestParam String email) {
	Users user= userService.findByEmail(email).get();
	if(user !=null) {
		//user.setCode(code);
		userService.save(user);
		webUtils.sendMail(email, "Please use this code"+888+" to reset password", "Password Reset");
		model.addAttribute("msg", "Check you email for seset instruction");
	}	
	return "resetpass";
	}
	
	@GetMapping("userprofile")
	public  String userpro(@RequestParam long id,
				Model model) {
		
		try {
			model.addAttribute("profiles",userService.findById(id).get());
			webUtils.getFiles(model, id);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			//e.printStackTrace();
		}
		
		return "userprofiles";		
	}
	
	@PostMapping("dropaline")
	public  String dropaline(@RequestParam String to,
							@RequestParam String from,
							@RequestParam String fromname,
							@RequestParam String message,
							RedirectAttributes model) {
		
		try {
			String msg=message+" Thanks. From "+fromname+" "+from;
			webUtils.sendMail(to, msg, "Hi Message");
			model.addFlashAttribute("msg", "Email sent");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			//e.printStackTrace();
		}
		
		return "redirect:/users";		
	}
	
	@ModelAttribute("profile")
	Users profile() {
		return new Users();
		
	}
	
}
