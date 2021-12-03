package com.prj1.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.prj1.entities.Role;
import com.prj1.entities.User;
import com.prj1.entities.UsersRoles;

import javassist.expr.NewArray;

@Repository(value = "userDAO")
@Transactional(rollbackFor = Exception.class)
public class UserDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public User loadUserByUsername(final String username) {
		List<User> users = new ArrayList<User>();
		Session session = this.sessionFactory.getCurrentSession();
		users = session.createQuery("from User where username=? and isDeleted = 0", User.class).setParameter(0, username).list();
		if (users.size() > 0) {
			return users.get(0);
		} else {
			return null;
		}

	}
	public UsersRoles loadUsersRolesByUser(final User user) {
		Session session = this.sessionFactory.getCurrentSession();
		UsersRoles usersRoles = session.createQuery("from UsersRoles where user = ?", UsersRoles.class).setParameter(0, user.getId()).getSingleResult();
		return usersRoles;
	}
	
	public Role loadRoleByRoleUser() {
		Session session = this.sessionFactory.getCurrentSession();
		Role role = session.createQuery("from Role where id = 2", Role.class).getSingleResult();
		return role;
	}
	public Role loadRoleByRoleAdmin() {
		Session session = this.sessionFactory.getCurrentSession();
		Role role = session.createQuery("from Role where id = 1", Role.class).getSingleResult();
		return role;
	}
	
	public void save(final User user) {
	    Session session = this.sessionFactory.getCurrentSession();
	    session.save(user);
	  }
	public void saveUser(final User user) {
	    Session session = this.sessionFactory.getCurrentSession();
	    UsersRoles usersRoles = new UsersRoles();
	    usersRoles.setUsers(user);
	    usersRoles.setRole(loadRoleByRoleUser());
	    session.save(usersRoles);
	    session.save(user);
	  }
	public void saveAdmin(final User user) {
	    Session session = this.sessionFactory.getCurrentSession();
	    UsersRoles usersRoles = new UsersRoles();
	    usersRoles.setUsers(user);
	    usersRoles.setRole(loadRoleByRoleAdmin());
	    session.save(usersRoles);
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
	    session.remove(loadUsersRolesByUser(user));
	    session.remove(user);
	  }
	  public List<User> findAll() {
	    Session session = this.sessionFactory.getCurrentSession();
	    return session.createQuery("from User where isDeleted = 0", User.class).getResultList();
	  }
	  public List<User> findAllDeleted() {
	    Session session = this.sessionFactory.getCurrentSession();
	    return session.createQuery("from User where isDeleted = 1", User.class).getResultList();
	  }
}
