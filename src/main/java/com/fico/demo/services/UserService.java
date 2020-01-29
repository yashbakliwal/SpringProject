package com.fico.demo.services;

import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fico.demo.model.User;
import com.fico.demo.repository.UserRepository;

@Service
//@Transactional
public class UserService {
	@Autowired
	private UserRepository userRepository;

	public void saveMyUser(User user) {
		userRepository.save(user);
	}
	public Optional<User> findByUsernameAndPassword(String username, String password) {
		return userRepository.findByUsernameAndPassword(username, password);
	}
	
}
