package com.prj1.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.prj1.entities.Noti;


@Repository(value = "notiDAO")
@Transactional(rollbackFor = Exception.class)
public class NotiDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public List<Noti> loadNotiByUsername(final String username) {
		Session session = this.sessionFactory.getCurrentSession();
		List<Noti> noti = session.createQuery("from Noti where username = ?", Noti.class).setParameter(0, username).getResultList();
		return noti;
	}
	
	public void save(final Noti noti) {
	    Session session = this.sessionFactory.getCurrentSession();
	    System.out.println(noti.toString());
	    session.save(noti);
	  }
	  public void update(final Noti noti) {
	    Session session = this.sessionFactory.getCurrentSession();
	    session.update(noti);
	  }
	  public Noti findById(final int id) {
	    Session session = this.sessionFactory.getCurrentSession();
	    return session.get(Noti.class, id);
	  }
	  public void delete(final Noti noti) {
	    Session session = this.sessionFactory.getCurrentSession();
	    session.remove(noti);
	  }
	  public List<Noti> findAll() {
	    Session session = this.sessionFactory.getCurrentSession();
	    return session.createQuery("from Noti", Noti.class).getResultList();
	  }
	  public List<Noti> findAllDeleted() {
	    Session session = this.sessionFactory.getCurrentSession();
	    return session.createQuery("from Noti", Noti.class).getResultList();
	  }
}
