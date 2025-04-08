package com.example.SpringPaymentApp.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.SpringPaymentApp.Entity.UserEntity;
import com.example.SpringPaymentApp.Repository.UserRepository;

@Service
public class UserService {
	@Autowired
	UserRepository userRepo;
	
	public boolean login(String username, String password) {
		boolean found=false;
		found=userRepo.existsByUserNameAndPassword(username,password);
		return found;
	}
	
	public UserEntity getProfile() 
	{
		UserEntity user = userRepo.findById(1).orElse(null);
	    System.out.println("Fetched user: " + user);
	    return user;
		
	}

	public UserEntity getUserByUserName(String userName) {
		
		return userRepo.findByUserName(userName);

	}
	public void updateUser(UserEntity user) {
	    userRepo.save(user); // JPA will update if ID exists
	}
	
	 public void deleteUserById(int id) {
	        userRepo.deleteById(id);
	    }

	    public UserEntity getUserById(int id) {
	        return userRepo.findById(id).orElse(null);


	    }
}
