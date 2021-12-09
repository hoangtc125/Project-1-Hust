package com.prj1.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.prj1.entities.Cart;


@Repository(value = "cartDAO")
@Transactional(rollbackFor = Exception.class)
public class CartDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public Cart loadCartByUsername(final String username) {
		Session session = this.sessionFactory.getCurrentSession();
		Cart cart = session.createQuery("from Cart where username = ?", Cart.class).setParameter(0, username).getSingleResult();
		return cart;
	}
	
	public void save(final Cart cart) {
	    Session session = this.sessionFactory.getCurrentSession();
	    System.out.println(cart.toString());
	    session.save(cart);
	  }
	  public void update(final Cart cart) {
	    Session session = this.sessionFactory.getCurrentSession();
	    session.update(cart);
	  }
	  public Cart findById(final int id) {
	    Session session = this.sessionFactory.getCurrentSession();
	    return session.get(Cart.class, id);
	  }
	  public void delete(final Cart cart) {
	    Session session = this.sessionFactory.getCurrentSession();
	    session.remove(cart);
	  }
	  public List<Cart> findAll() {
	    Session session = this.sessionFactory.getCurrentSession();
	    return session.createQuery("from Cart", Cart.class).getResultList();
	  }
	  public List<Cart> findAllDeleted() {
	    Session session = this.sessionFactory.getCurrentSession();
	    return session.createQuery("from Cart", Cart.class).getResultList();
	  }
}
