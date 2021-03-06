package com.prj1.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.metadata.TableMetaDataProvider;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.prj1.dao.UserDAO;
import com.prj1.entities.Cart;
import com.prj1.entities.User;

@Service
@Transactional
public class UserService {
	
	@Autowired
	  private UserDAO userDAO;

	 @Autowired
	  private CartService cartService;
	  
	  public List<User> findAll() {
	    return userDAO.findAll();
	  }
	  
	  public List<User> findAllUser() {
		  List<User> users = userDAO.findAll();
		  List<User> list = new ArrayList<User>();
		  for (User user : users) {
			if(user.getRole().compareTo("ROLE_USER") == 0) {
				list.add(user);
			}
		}
		  return list;
	  }
	  
	  public List<User> findAllAdmin() {
		  List<User> users = userDAO.findAll();
		  List<User> list = new ArrayList<User>();
		  for (User user : users) {
			if(user.getRole().compareTo("ROLE_ADMIN") == 0) {
				list.add(user);
			}
		}
		  return list;
	  }
  
	  public List<User> findAllDeleted() {
	    return userDAO.findAllDeleted();
	  }
	  
	  public User findById(int id) {
		  User user = userDAO.findById(id);
	    return user;
	  }
	  
	  public void restoreById(int id) {
		  User user = userDAO.findById(id);
		  user.setIsDeleted(0);
		    userDAO.update(user);
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
		  user.setPassword("$2a$04$GYGsaJj9l6kH2GikK6QVzO0v3sOCxt3vdkiA2/tcoSw8erI85ZYDG");
	    userDAO.save(user);
	  }
	  
	  public void saveUser(User user){
		    // validate business
		  Cart cart = new Cart();
		  cart.setListProduct("");
		  cart.setSumProduct("0");
		  cart.setUsername(user.getUsername());
		  cartService.save(cart);
		  user.setPassword("$2a$04$GYGsaJj9l6kH2GikK6QVzO0v3sOCxt3vdkiA2/tcoSw8erI85ZYDG");
		    userDAO.saveUser(user);
		  }
	  public void saveAdmin(User user){
		    // validate business
		  Cart cart = new Cart();
		  cart.setListProduct("");
		  cart.setSumProduct("0");
		  cart.setUsername(user.getUsername());
		  cartService.save(cart);
		  user.setPassword("$2a$04$GYGsaJj9l6kH2GikK6QVzO0v3sOCxt3vdkiA2/tcoSw8erI85ZYDG");
		    userDAO.saveAdmin(user);
		  }
	  
	  public void update(User user){
	    // validate business
		  user.setPassword("$2a$04$GYGsaJj9l6kH2GikK6QVzO0v3sOCxt3vdkiA2/tcoSw8erI85ZYDG");
	    userDAO.update(user);
	  }
	  
	  public void softDelete(int id, String username){
	    // validate business
		  User user = userDAO.findById(id);
		  if(username.compareTo(user.getUsername()) != 0) {
			  user.setIsDeleted(1);
			  userDAO.update(user);
		  }
	  }
	  
	  public void delete(int id){
	    // validate business
		  User user = userDAO.findById(id);
		  Cart cart = cartService.loadCartByUsername(user.getUsername());
		  cartService.delete(cart);
		  userDAO.delete(user);
	  }
	  
	public List<User> sortByName(List<User> list) {
		// TODO Auto-generated method stub
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

	public List<User> sortByMssv(List<User> list) {
		// TODO Auto-generated method stub
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
	
	public List<User> sortByRole(List<User> list) {
		// TODO Auto-generated method stub
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
	public List<User> searchByMssv(List<User> list, String mssv) {
		// TODO Auto-generated method stub
		List<User> res = new ArrayList<User>();
		for (User user : list) {
			if(user.getMssv().compareTo(mssv) == 0) {
				res.add(user);
			}
		}
		return res;
	}
}
