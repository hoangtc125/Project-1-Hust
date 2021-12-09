package com.prj1.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.prj1.entities.Bill;


@Repository(value = "billDAO")
@Transactional(rollbackFor = Exception.class)
public class BillDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public List<Bill> loadBillByUsername(final String username) {
		Session session = this.sessionFactory.getCurrentSession();
		List<Bill> bill = session.createQuery("from Bill where username = ?", Bill.class).setParameter(0, username).getResultList();
		return bill;
	}
	
	public void save(final Bill bill) {
	    Session session = this.sessionFactory.getCurrentSession();
	    System.out.println(bill.toString());
	    session.save(bill);
	  }
	  public void update(final Bill bill) {
	    Session session = this.sessionFactory.getCurrentSession();
	    session.update(bill);
	  }
	  public Bill findById(final int id) {
	    Session session = this.sessionFactory.getCurrentSession();
	    return session.get(Bill.class, id);
	  }
	  public void delete(final Bill bill) {
	    Session session = this.sessionFactory.getCurrentSession();
	    session.remove(bill);
	  }
	  public List<Bill> findAll() {
	    Session session = this.sessionFactory.getCurrentSession();
	    return session.createQuery("from Bill", Bill.class).getResultList();
	  }
	  public List<Bill> findAllDeleted() {
	    Session session = this.sessionFactory.getCurrentSession();
	    return session.createQuery("from Bill", Bill.class).getResultList();
	  }
}
