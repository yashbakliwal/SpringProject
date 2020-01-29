package com.fico.demo.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fico.demo.model.Admin;
import com.fico.demo.model.Menu;
import com.fico.demo.model.User;
import com.fico.demo.repository.MenuRepository;

@Service
//@Transactional
public class MenuService {
	@Autowired
	private MenuRepository menuRepository;

	public void saveMenu(Menu menu) {
		menuRepository.save(menu);
	}

	public void saveMymenu(Menu menu) {
		menuRepository.save(menu);
	}

	public Optional<Menu> findByAll(String Menu_name, int price) {
		return menuRepository.findByNameAndPrice(Menu_name, price);
	}
	 public List<Menu> getAllItem() {
	        return (List<Menu>) menuRepository.findAll();
	      }

}
