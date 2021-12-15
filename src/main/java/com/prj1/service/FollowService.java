package com.prj1.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.prj1.dao.FollowDAO;
import com.prj1.entities.Follow;

@Service
@Transactional
public class FollowService {
	
	@Autowired
	  private FollowDAO followDAO;

	public List<Follow> findAll() {
	    return followDAO.findAll();
	  }
	  
	  public List<Follow> findAllDeleted() {
		    return followDAO.findAllDeleted();
		  }
	  
	  public Follow findById(int id) {
	    return followDAO.findById(id);
	  }
	  
	  public void restoreById(int id) {
		  Follow follow = followDAO.findById(id);
		    followDAO.update(follow);
	  }
	  
	  public void save(Follow follow){
	    // validate business
	    followDAO.save(follow);
	  }
	  
	  public List<Follow> loadFollowByUsername(String username) { 
		  return followDAO.loadFollowByUsername(username);
	  }

	  public List<Follow> loadFollowByFollower(String username) { 
		  return followDAO.loadFollowByFollower(username);
	  }
	  
	  public Follow loadFollow(String username, String follower) {
		  return followDAO.loadFollow(username, follower);
	  }
	  
	  public void softDelete(int id, String followname){
	    // validate business
		  Follow follow = followDAO.findById(id);
			  followDAO.update(follow);
	  }
	  
	  public void delete(int id){
	    // validate business
		  followDAO.delete(followDAO.findById(id));
	  }
}
