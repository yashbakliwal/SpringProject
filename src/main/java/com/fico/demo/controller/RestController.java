package com.fico.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fico.demo.model.Menu;
import com.fico.demo.model.User;
import com.fico.demo.services.MenuService;
import com.fico.demo.services.UserService;

@Controller
public class RestController {
	@Autowired
	private MenuService menuService;
	@Autowired
	private UserService userService;


	@GetMapping("/save-user")
	public String saveUser(@RequestParam String username, @RequestParam String firstname, @RequestParam String lastname,
			@RequestParam String password, @RequestParam String email) {
		User user = new User(username, firstname, lastname, password, email);
//		System.out.println(user);
		userService.saveMyUser(user);
		return "login";
	}
	@PostMapping("/MenuDetails")
	public  String saveMenu(@RequestParam String name, @RequestParam int price) {
		Menu menu = new Menu(name, price);
//		System.out.println(user);
		menuService.saveMenu(menu);
		//map.addAttribute("list",menuService.findByAll(Menuname, price));
		return "MenuDetails";
	}
	

}
