package com.fico.demo.controller;

import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fico.demo.model.Admin;
import com.fico.demo.model.User;
import com.fico.demo.repository.UserRepository;
import com.fico.demo.services.UserService;

@Controller
public class UserController {
	@Autowired
	UserService userService;
	

	@RequestMapping("/home1")
	public String Welcome() {
		return "home";
	}

	@RequestMapping("/home")

	public String W() {
		return "welcomepage";
	}


	

	@RequestMapping("/login")

	public String loginUser(@ModelAttribute User user, HttpServletRequest request) {

		Optional<User> u = userService.findByUsernameAndPassword(user.getUsername(), user.getPassword());
		if (u.isPresent()) {
			return "menu";
		} else {
			return "login";

		}
	}
	
	@RequestMapping("/OrderDetails")
	public String orderDetail() {
		return "OrderDetails";
	}
	

	
}
