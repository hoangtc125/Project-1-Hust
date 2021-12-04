package com.prj1.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.prj1.entities.News;


@Repository(value = "newsDAO")
@Transactional(rollbackFor = Exception.class)
public class NewsDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public News loadNewsByTitle(final String title) {
		Session session = this.sessionFactory.getCurrentSession();
		News news = session.createQuery("from News where title = ?", News.class).setParameter(0, title).getSingleResult();
		return news;
	}
	
	public void save(final News news) {
	    Session session = this.sessionFactory.getCurrentSession();
	    session.save(news);
	  }
	  public void update(final News news) {
	    Session session = this.sessionFactory.getCurrentSession();
	    session.update(news);
	  }
	  public News findById(final int id) {
	    Session session = this.sessionFactory.getCurrentSession();
	    return session.get(News.class, id);
	  }
	  public void delete(final News news) {
	    Session session = this.sessionFactory.getCurrentSession();
	    session.remove(news);
	  }
	  public List<News> findAll() {
	    Session session = this.sessionFactory.getCurrentSession();
	    return session.createQuery("from News where isDeleted = 0", News.class).getResultList();
	  }
	  public List<News> findAllDeleted() {
	    Session session = this.sessionFactory.getCurrentSession();
	    return session.createQuery("from News where isDeleted = 1", News.class).getResultList();
	  }
}
