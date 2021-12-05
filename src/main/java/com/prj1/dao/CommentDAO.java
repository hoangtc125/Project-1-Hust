package com.prj1.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.prj1.entities.Comment;


@Repository(value = "commentDAO")
@Transactional(rollbackFor = Exception.class)
public class CommentDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public List<Comment> loadCommentByIdNews(final int idNews) {
		Session session = this.sessionFactory.getCurrentSession();
		List<Comment> comments = session.createQuery("from Comment where idNews = ?", Comment.class).setParameter(0, idNews).getResultList();
		return comments;
	}
	
	public void save(final Comment comment) {
	    Session session = this.sessionFactory.getCurrentSession();
	    session.save(comment);
	  }
	  public void update(final Comment comment) {
	    Session session = this.sessionFactory.getCurrentSession();
	    session.update(comment);
	  }
	  public Comment findById(final int id) {
	    Session session = this.sessionFactory.getCurrentSession();
	    return session.get(Comment.class, id);
	  }
	  public void delete(final Comment comment) {
	    Session session = this.sessionFactory.getCurrentSession();
	    session.remove(comment);
	  }
}
