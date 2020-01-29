package com.fico.demo.services;



import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fico.demo.model.Admin;
import com.fico.demo.model.Menu;
import com.fico.demo.model.User;
import com.fico.demo.repository.AdminRepository;
import com.fico.demo.repository.MenuRepository;
@Service
public class AdminService {
	@Autowired
	private AdminRepository adminRepository;
 @Autowired
 private MenuRepository menuRepository;
	public Optional<Admin> findByUsernameAndPassword(String username, String password) {
		return adminRepository.findByUsernameAndPassword(username, password);
	}
	
	
	public void deleteItemFromMenuList(int id) {
		adminRepository.deleteById(id);		
	}


	

		}