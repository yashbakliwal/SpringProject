package com.fico.demo.repository;

import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.fico.demo.model.User;

public interface UserRepository extends CrudRepository<User, Integer> {

	Optional<User> findByUsernameAndPassword(String username, String password);
}
