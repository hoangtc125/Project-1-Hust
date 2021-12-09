package com.prj1.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.prj1.entities.Product;


@Repository(value = "productDAO")
@Transactional(rollbackFor = Exception.class)
public class ProductDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public Product loadProductByTitle(final String title) {
		Session session = this.sessionFactory.getCurrentSession();
		Product product = session.createQuery("from Product where title = ?", Product.class).setParameter(0, title).getSingleResult();
		return product;
	}
	
	public void save(final Product product) {
	    Session session = this.sessionFactory.getCurrentSession();
	    System.out.println(product.toString());
	    session.save(product);
	  }
	  public void update(final Product product) {
	    Session session = this.sessionFactory.getCurrentSession();
	    session.update(product);
	  }
	  public Product findById(final int id) {
	    Session session = this.sessionFactory.getCurrentSession();
	    return session.get(Product.class, id);
	  }
	  public void delete(final Product product) {
	    Session session = this.sessionFactory.getCurrentSession();
	    session.remove(product);
	  }
	  public List<Product> findAll() {
	    Session session = this.sessionFactory.getCurrentSession();
	    return session.createQuery("from Product where isDeleted = 0", Product.class).getResultList();
	  }
	  public List<Product> findAllDeleted() {
	    Session session = this.sessionFactory.getCurrentSession();
	    return session.createQuery("from Product where isDeleted = 1", Product.class).getResultList();
	  }
}
