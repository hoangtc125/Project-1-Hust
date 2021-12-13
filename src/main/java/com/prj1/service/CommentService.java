package com.prj1.service;

import java.util.ArrayList;
import java.util.Date;
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
		  Date date = new Date();
		  comment.setDate(date.toString());
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
	  
	  public List<String> loadUserCommentByIdNews(int idNews) {
		  List<Comment> comments = commentDAO.loadCommentByIdNews(idNews);
		  List<String> list = new ArrayList<String>();
		  for (Comment comment : comments) {
			list.add(comment.getSender());
		}
		  return list;
	  }
	  
	  public List<Comment> loadCommentsProduct(int idNews) {
		  return commentDAO.loadCommentByIdProduct(idNews);
	  }
	  
	  public List<String> loadUserCommentByIdProduct(int idNews) {
		  List<Comment> comments = commentDAO.loadCommentByIdProduct(idNews);
		  List<String> list = new ArrayList<String>();
		  for (Comment comment : comments) {
				list.add(comment.getSender());
			}
		  return list;
	  }
}
