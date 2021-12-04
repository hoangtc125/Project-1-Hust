package com.prj1.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.prj1.entities.Mail;


@Repository(value = "mailDAO")
@Transactional(rollbackFor = Exception.class)
public class MailDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public List<Mail> loadMailUnRead(final int idUser_) {
		Session session = this.sessionFactory.getCurrentSession();
		List<Mail> mails = session.createQuery("from Mail where idUser_ = ? and isRead = 0", Mail.class).setParameter(0, idUser_).getResultList();
		return mails;
	}
	
	public List<Mail> loadMailReceived(final int idUser_) {
		Session session = this.sessionFactory.getCurrentSession();
		List<Mail> mails = session.createQuery("from Mail where idUser_ = ?", Mail.class).setParameter(0, idUser_).getResultList();
		return mails;
	}

	public List<Mail> loadMailSended(final int idUser) {
		Session session = this.sessionFactory.getCurrentSession();
		List<Mail> mails = session.createQuery("from Mail where idUser = ?", Mail.class).setParameter(0, idUser).getResultList();
		return mails;
	}
	
	public void save(final Mail mail) {
	    Session session = this.sessionFactory.getCurrentSession();
	    session.save(mail);
	  }
	  public void update(final Mail mail) {
	    Session session = this.sessionFactory.getCurrentSession();
	    session.update(mail);
	  }
	  public Mail findById(final int id) {
	    Session session = this.sessionFactory.getCurrentSession();
	    return session.get(Mail.class, id);
	  }
	  public void delete(final Mail mail) {
	    Session session = this.sessionFactory.getCurrentSession();
	    session.remove(mail);
	  }
	  public List<Mail> findAll(final int id) {
	    Session session = this.sessionFactory.getCurrentSession();
	    return session.createQuery("from Mail where idUser = ? or idUser_ = ?", Mail.class).setParameter(0, id).setParameter(1, id).getResultList();
	  }

	  public List<Mail> findAllReceive(final int id) {
	    Session session = this.sessionFactory.getCurrentSession();
	    return session.createQuery("from Mail where idUser_ = ?", Mail.class).setParameter(0, id).getResultList();
	  }

	  public List<Mail> findAllSend(final int id) {
	    Session session = this.sessionFactory.getCurrentSession();
	    return session.createQuery("from Mail where idUser = ?", Mail.class).setParameter(0, id).getResultList();
	  }
}
