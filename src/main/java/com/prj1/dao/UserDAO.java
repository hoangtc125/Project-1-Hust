package com.prj1.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.prj1.entities.User;

@Repository(value = "userDAO")
@Transactional(rollbackFor = Exception.class)
public class UserDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public User loadUserByUsername(final String username) {
		List<User> users = new ArrayList<User>();
		Session session = this.sessionFactory.getCurrentSession();
		users = session.createQuery("from User where username=?", User.class).setParameter(0, username).list();
		if (users.size() > 0) {
			return users.get(0);
		} else {
			return null;
		}

	}
	
	public void save(final User user) {
	    Session session = this.sessionFactory.getCurrentSession();
	    session.save(user);
	  }
	  public void update(final User user) {
	    Session session = this.sessionFactory.getCurrentSession();
	    session.update(user);
	  }
	  public User findById(final int id) {
	    Session session = this.sessionFactory.getCurrentSession();
	    return session.get(User.class, id);
	  }
	  public void delete(final User user) {
	    Session session = this.sessionFactory.getCurrentSession();
	    session.remove(user);
	  }
	  public List<User> findAll() {
	    Session session = this.sessionFactory.getCurrentSession();
	    return session.createQuery("from User", User.class).getResultList();
	  }
}
