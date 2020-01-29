package com.fico.demo.controller;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fico.demo.model.Admin;
import com.fico.demo.model.Menu;
import com.fico.demo.services.AdminService;
import com.fico.demo.services.MenuService;

@Controller
public class AdminController {
	@Autowired
	MenuService menuService;
	
	@Autowired
	AdminService adminService;
	

	@RequestMapping("/admin/login")
	public String adminLogin() {
		return "admin";
	}

	@RequestMapping("/admin")
	public String loginAdmin(@ModelAttribute Admin admin, HttpServletRequest request) {

		Optional<Admin> v=adminService.findByUsernameAndPassword(admin.getUsername(), admin.getPassword());
				
		if (v.isPresent()) {
			return "menu_view";
		} else {
			return "admin";

		}
	}
	
	

	@GetMapping("/MenuInfo")
	public  String saveMenu(@RequestParam String Menuname, @RequestParam int price) {
		Menu menu = new Menu(Menuname, price);
			//System.out.println(user);
			menuService.saveMenu(menu);
			//map.addAttribute("list",menuService.findByAll(Menuname, price));
			return "MenuDetails";
	}
	
	@RequestMapping("/menu_view_delete")
	public String ab(ModelMap m)
	{
		List<Menu> list = menuService.getAllItem();
		m.put("list", list);

		return "updateMenu";
	}
	
	@RequestMapping("/menu_view")
	public String a()
	{
		return "MenuInfo";
	}
	
	@GetMapping("/allItem")
    public String getMenuOverview() {
        List<Menu> list = menuService.getAllItem();
      //  m.put("list", list);
        return "MenuDetails";
    }
	
	
	
	
}
