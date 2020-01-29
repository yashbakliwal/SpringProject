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
	

	@RequestMapping("/admin")
	public String adminLogin() {
		return "admin";
	}

	@RequestMapping("/admin")
	public String loginAdmin(@ModelAttribute Admin admin, HttpServletRequest request) {

		Optional<Admin> v=adminService.findByUsernameAndPassword(admin.getUsername(), admin.getPassword());
				
		if (v.isPresent()) {
			return "menu_view";
		} else {
			return "menu_view";

		}
	}

	@RequestMapping("/MenuDetails")
	public String menuDetail() {
		return "MenuDetails";
	}
	
	@GetMapping("/allItem")
    public String getMenuOverview(ModelMap m) {
//        System.out.print("ALL ITEMs");
        List<Menu> list = menuService.getAllItem();
        m.put("list", list);
//            System.out.println(list.size());
        return "updateMenu";
    }
}
