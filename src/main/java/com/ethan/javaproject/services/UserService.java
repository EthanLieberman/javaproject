package com.ethan.javaproject.services;

import java.util.Optional;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.ethan.javaproject.models.LoginUser;
import com.ethan.javaproject.models.User;
import com.ethan.javaproject.repositories.UserRepository;
    
@Service
public class UserService {
    
    @Autowired
    private UserRepository userRepo;
    
    // TO-DO: Write register and login methods!
    public User register(User newUser, BindingResult result) {
        // TO-DO: Additional validations!
		//reject if email is taken
		Optional<User> potentialUser = userRepo.findByEmail(newUser.getEmail());
		if (potentialUser.isPresent()){
			result.rejectValue("email", "uniqueunicorns", "email is taken");	//path code message
		}
		// reject if password and confirm doesnt match
		if (!newUser.getPassword().equals(newUser.getConfirm())){
			result.rejectValue("confirm", "uniqueunicorns", "passwords must match");
		}
		// return null is result has errors
		if (result.hasErrors()){
			return null;
		}
		else {
			//hash and set password, then save user
			String hashed = BCrypt.hashpw(newUser.getPassword(), BCrypt.gensalt());
			newUser.setPassword(hashed);
			return userRepo.save(newUser);
		}

    }

    public User login(LoginUser newLoginObject, BindingResult result) {
        // TO-DO: Additional validations!
		Optional<User> potentialUser = userRepo.findByEmail(newLoginObject.getEmail());
		if(!potentialUser.isPresent()){
			result.rejectValue("email", "loginerror", "email not found");
		}
		else {

		User user = potentialUser.get();

		// reject if BCrypt password fails
		if (!BCrypt.checkpw(newLoginObject.getPassword(), user.getPassword())){
			result.rejectValue("password", "loginerror", "invalid password");
		}
		//return null if errors

		if(result.hasErrors()){
			return null;
		}
		else {
			return user;
		}

		}

		return null;

    }


	// find one
	public User findOne(Long id){
		Optional<User> potentialUser = userRepo.findById(id);
        if(potentialUser.isPresent()) {
            return potentialUser.get();
        } else {
            return null;
        }

	}
}