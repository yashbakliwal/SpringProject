package com.fico.demo.repository;

import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.fico.demo.model.Admin;
import com.fico.demo.model.Menu;

public interface AdminRepository extends CrudRepository<Admin, Integer> {
	Optional<Admin> findByUsernameAndPassword(String username, String password);

}
