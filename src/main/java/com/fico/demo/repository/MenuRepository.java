package com.fico.demo.repository;

import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.fico.demo.model.Menu;
import com.fico.demo.model.User;

public interface MenuRepository extends CrudRepository<Menu, Integer> {

	Optional<Menu> findByNameAndPrice(String Menuname, int price);

}
