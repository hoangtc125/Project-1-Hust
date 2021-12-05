package com.prj1.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.prj1.dao.CommentDAO;
import com.prj1.entities.Comment;

@Service
@Transactional
public class CommentService {
	
	@Autowired
	  private CommentDAO commentDAO;
	  
	  public Comment findById(int id) {
	    return commentDAO.findById(id);
	  }
	  
	  public void save(Comment comment){
	    // validate business
	    commentDAO.save(comment);
	  }
	  
	  
	  public void update(Comment comment){
	    // validate business
	    commentDAO.update(comment);
	  }
	  
	  
	  public void delete(int id){
	    // validate business
		  commentDAO.delete(commentDAO.findById(id));
	  }
	  
	  public List<Comment> loadComments(int idNews) {
		  return commentDAO.loadCommentByIdNews(idNews);
	  }
}
