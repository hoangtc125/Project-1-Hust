package com.prj1.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.metadata.TableMetaDataProvider;
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
	  
	  public User findByUsername(String username) {
		  List<User> list = userDAO.findAll();
		  for (User user : list) {
			if(user.getUsername().compareTo(username) == 0)
				return user;
		}
		return null;
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
	public List<User> sortByName() {
		// TODO Auto-generated method stub
		List<User> list = userDAO.findAll();
		List<User> res = new ArrayList<User>();
		int sz = list.size();
		while(list.size() != 0) {
			User tmp = list.get(0);
			for (User user : list) {
				if(tmp.getNameVN().compareTo(user.getNameVN()) > 0) tmp = user;
			}
			res.add(tmp);
			list.remove(tmp);
		}
		return res;
	}

	public List<User> sortByMssv() {
		// TODO Auto-generated method stub
		List<User> list = userDAO.findAll();
		List<User> res = new ArrayList<User>();
		int sz = list.size();
		while(list.size() != 0) {
			User tmp = list.get(0);
			for (User user : list) {
				if(tmp.getMssv().compareTo(user.getMssv()) > 0) tmp = user;
			}
			res.add(tmp);
			list.remove(tmp);
		}
		return res;
	}
	
	public List<User> sortByRole() {
		// TODO Auto-generated method stub
		List<User> list = userDAO.findAll();
		List<User> res = new ArrayList<User>();
		int sz = list.size();
		while(list.size() != 0) {
			User tmp = list.get(0);
			for (User user : list) {
				if(tmp.getRole().compareTo(user.getRole()) > 0) tmp = user;
			}
			res.add(tmp);
			list.remove(tmp);
		}
		return res;
	}
	public List<User> searchByMssv(String mssv) {
		// TODO Auto-generated method stub
		List<User> list = userDAO.findAll();
		List<User> res = new ArrayList<User>();
		for (User user : res) {
			if(user.getMssv().compareTo(mssv) == 0) {
				res.add(user);
			}
		}
		return res;
	}
}
