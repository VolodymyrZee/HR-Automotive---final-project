package com.myProject.HRproject.controller;

import java.time.LocalDate;

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
import com.myProject.HRproject.service.CarServicesService;
import com.myProject.HRproject.service.UserService;
import com.myProject.HRproject.validaition.DataValidation;
import com.myProject.HRproject.model.CarServices;
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
	private CarServicesService carServicesService;
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
	
	@GetMapping("mycarServices")
	public String mycarServices(@RequestParam long carId, Model model, @SessionAttribute Users loggedInUser) {
		Cars car = carService.findByCarId(carId).get();
		model.addAttribute("car", car);
		model.addAttribute("carServices", carServicesService.findAllByCarServices(car));
		model.addAttribute("carService", new CarServices());
		return "mycarServices";
	}
	
	@PostMapping("addcarservice")
	public String addcarservice(@RequestParam long carId, @RequestParam String serviceDescription, 
			@RequestParam String serviceRequestDate, Model model, RedirectAttributes redirect,
			@SessionAttribute Users loggedInUser) {
		Cars car = carService.findByCarId(carId).get();
		if (car != null) {
			CarServices carService = new CarServices();
			carService.setServiceCar(car);
			carService.setServiceDescription(serviceDescription);
			carService.setServiceRequestDate(serviceRequestDate);
			carServicesService.savecarServices(carService);
			webUtils.sendMail("hrautomotiveservicesinc@gmail.com", loggedInUser.getFname()+" "+loggedInUser.getLname()+" scheduled the "+carService.getServiceDescription()+" for a "+car.getYear()+" "+car.getMake()+" "+car.getModel()+" on "+carService.getServiceRequestDate(), "Service scheduled");
			
			redirect.addFlashAttribute("success", "Car service added");
		} else {
			redirect.addFlashAttribute("error", "failed to add a car due to invalid user");
		}
//		redirect.addAttribute("carId", carId);
		return "redirect:/mycarServices?carId="+carId;
	}
	
	
	@PostMapping("completecarservice")
	public String completecarservice(@RequestParam long serviceId, Model model, RedirectAttributes redirect,
			@SessionAttribute Users loggedInUser) {
		CarServices service = carServicesService.findByCarServicesId(serviceId).get();
		if (service != null) {
			service.setServiceFulfillmentDate(LocalDate.now().toString());
			service.setServiceCompleted(true);
			carServicesService.savecarServices(service);
			webUtils.sendMail(service.getServiceCar().getCarUser().getEmail(), "The "+service.getServiceDescription()+" on the "+service.getServiceCar().getMake()+" "+service.getServiceCar().getModel() + " was completed. You can now pick up your vehicle. We are open Mon-Fri, 9am-5pm. Thank You for Your Business! Best Regards. HR Automotive Services.", "Service completed");
			redirect.addFlashAttribute("success", "Car Service completed");
		} else {
			redirect.addFlashAttribute("error", "failed to add a car due to invalid user");
		}
		return "redirect:/mycarServices?carId="+service.getServiceCar().getId();
	}
	
	
	@PostMapping("deletecarservice")
	public String deletecarservice(@RequestParam  long servicesId, Model model, RedirectAttributes redirect,
			@SessionAttribute Users loggedInUser) {
		
		
		CarServices service = carServicesService.findByCarServicesId(servicesId).get();
		if (service != null) {
			carServicesService.deletecarService(service.getId());
			
			redirect.addFlashAttribute("success", "Car Service deleted");
		}else {
			redirect.addFlashAttribute("error", "failed to delete service");
		}
		return "redirect:/mycarServices?carId="+service.getServiceCar().getId();
	}
	
	

	@PostMapping("sendemail")
	public String sendemail(Model model, @RequestParam String email, @RequestParam String name,
			@RequestParam String subject, @RequestParam String message) {

		try {
			webUtils.sendMail("hrautomotiveservicesinc@gmail.com", message + " From " + name, subject);
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
