package com.prj1.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.prj1.entities.Follow;


@Repository(value = "followDAO")
@Transactional(rollbackFor = Exception.class)
public class FollowDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public List<Follow> loadFollowByUsername(final String username) {
		Session session = this.sessionFactory.getCurrentSession();
		List<Follow> follow = session.createQuery("from Follow where username = ?", Follow.class).setParameter(0, username).getResultList();
		return follow;
	}

	public List<Follow> loadFollowByFollower(final String follower) {
		Session session = this.sessionFactory.getCurrentSession();
		List<Follow> follow = session.createQuery("from Follow where follower = ?", Follow.class).setParameter(0, follower).getResultList();
		return follow;
	}
	
	public Follow loadFollow(final String username, String follower) {
		Session session = this.sessionFactory.getCurrentSession();
		Follow follow = session.createQuery("from Follow where username = ? and follower = ?", Follow.class)
				.setParameter(0, username).setParameter(1, follower).getSingleResult();
		return follow;
	}
	
	public void save(final Follow follow) {
	    Session session = this.sessionFactory.getCurrentSession();
	    System.out.println(follow.toString());
	    session.save(follow);
	  }
	  public void update(final Follow follow) {
	    Session session = this.sessionFactory.getCurrentSession();
	    session.update(follow);
	  }
	  public Follow findById(final int id) {
	    Session session = this.sessionFactory.getCurrentSession();
	    return session.get(Follow.class, id);
	  }
	  public void delete(final Follow follow) {
	    Session session = this.sessionFactory.getCurrentSession();
	    session.remove(follow);
	  }
	  public List<Follow> findAll() {
	    Session session = this.sessionFactory.getCurrentSession();
	    return session.createQuery("from Follow", Follow.class).getResultList();
	  }
	  public List<Follow> findAllDeleted() {
	    Session session = this.sessionFactory.getCurrentSession();
	    return session.createQuery("from Follow", Follow.class).getResultList();
	  }
}
