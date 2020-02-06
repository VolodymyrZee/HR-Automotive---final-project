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
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.myProject.HRproject.WebUtils;
import com.myProject.HRproject.service.CarService;
import com.myProject.HRproject.service.UserService;
import com.myProject.HRproject.validaition.DataValidation;
import com.myProject.HRproject.model.Cars;
import com.myProject.HRproject.model.Users;
import com.myProject.HRproject.repository.UserRepository;

@Controller
@SessionAttributes("loggedInUser")
public class AppController {

	private DataValidation dataValidation;

	@Autowired
	private UserService userService;
	@Autowired
	private CarService carService;

	@Autowired
	WebUtils webUtils;

	@GetMapping({ "index", "/" })
	public String index(Model model) {
		model.addAttribute("msg", "Welcome to spring ");
		model.addAttribute("users", userService.findAll());
		return "index";
	}

	@GetMapping("about")
	// @ResponseBody()
	String about(Model model) {
		model.addAttribute("msg", "this is about us page");
		return "about";
	}

	@GetMapping("services")
	public String service(Model model) {
		model.addAttribute("msg", "Get in touch with us by filling");
		return "services";
	}
	
	
	@GetMapping("mycars")
	public String mycars(Model model, @SessionAttribute Users loggedInUser) {
		Users carUser = userService.findById(loggedInUser.getId()).get();
		model.addAttribute("cars", carService.findAllByCarUser(carUser));
		return "mycars";
	}
	

	@PostMapping("addcar")
	public String addcar(@ModelAttribute Cars car, Model model, RedirectAttributes redirect,
			@SessionAttribute Users loggedInUser) {
		Users carUser = userService.findById(loggedInUser.getId()).get();
		if (carUser != null) {
			car.setCarUser(carUser);
			carService.savecars(car);
			redirect.addFlashAttribute("success", "Car " + car.getMake() + "" + car.getModel() + " saved");
		} else {
			redirect.addFlashAttribute("error", "failed to add a car due to invalid user");
		}
		return "redirect:/profile";
	}

	@PostMapping("sendemail")
	public String sendemail(Model model, @RequestParam String email, @RequestParam String name,
			@RequestParam String subject, @RequestParam String message) {

		try {
			webUtils.sendMail("kennjuma16@gmail.com", message + " From " + name, subject);
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
	public String login(@RequestParam String lname, @RequestParam String fname, Model model) {
		model.addAttribute("msg", "Last Name " + lname + " first name " + fname);

		return "index";
	}

}
