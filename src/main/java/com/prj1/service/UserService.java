package com.prj1.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.prj1.dao.UserDAO;
import com.prj1.entities.User;

@Service
@Transactional
public class UserService {
	
	@Autowired
	  private UserDAO userDAO;
	  
	  public List<User> findAll() {
	    return userDAO.findAll();
	  }
	  public User findById(int id) {
	    return userDAO.findById(id);
	  }
	  
	  public void save(User user){
	    // validate business
	    userDAO.save(user);
	  }
	  public void update(User user){
	    // validate business
	    userDAO.update(user);
	  }
	  
	  public void delete(int id){
	    // validate business
	    userDAO.delete(userDAO.findById(id));
	  }
}
