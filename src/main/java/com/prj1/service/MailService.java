package com.prj1.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.prj1.dao.MailDAO;
import com.prj1.entities.Mail;
import com.prj1.entities.User;

@Service
@Transactional
public class MailService {
	
	@Autowired
	  private MailDAO mailDAO;
	@Autowired
	  private UserService userService;
	  
	  public List<Mail> findMailUnRead(int idUser_) {
	    return mailDAO.loadMailUnRead(idUser_);
	  }
	  
	  public List<Mail> findMailReceived(int idUser_) {
	    return mailDAO.loadMailReceived(idUser_);
	  }

	  public List<Mail> findMailSended(int idUser) {
	    return mailDAO.loadMailSended(idUser);
	  }
	  
	  public Mail findById(int id) {
		  Mail mail = mailDAO.findById(id);
		  mail.setSender(userService.findById(mail.getIdUser()).getUsername());
	    return mail;
	  }
	  
	  public void save(Mail mail){
	    // validate business
		 User user = userService.findByUsername(mail.getReceiver());
		 if(user == null) {
			 return;
		 }
		 mail.setIdUser_(user.getId());
	    mailDAO.save(mail);
	  }
	  
	  public Mail checkRead(Mail mail, String username) {
		  User user = userService.findByUsername(username);
		  if(mail.getIdUser_() == user.getId()) {
			  mail.setIsRead("Yes");
		  }
		  return mail;
	  }
	  
	  public void update(Mail mail){
	    // validate business
	    mailDAO.update(mail);
	  }
	  
	  public void delete(int id, String username){
	    // validate business
		  User user = userService.findByUsername(username);
		  Mail mail = mailDAO.findById(id);
		  if(user.getId() != mail.getIdUser_() || user.getId() == mail.getIdUser()) {			  
			  mailDAO.delete(mail);
		  }
	  }
	  
	public List<Mail> sortByName(List<Mail> list) {
		// TODO Auto-generated method stub
		List<Mail> res = new ArrayList<Mail>();
		int sz = list.size();
		while(list.size() != 0) {
			Mail tmp = list.get(0);
			for (Mail mail : list) {
				if(tmp.getTitle().compareTo(mail.getTitle()) > 0) tmp = mail;
			}
			res.add(tmp);
			list.remove(tmp);
		}
		return res;
	}

	public List<Mail> searchByTitle(List<Mail> list, String title) {
		// TODO Auto-generated method stub
		List<Mail> res = new ArrayList<Mail>();
		for (Mail mail : list) {
			if(mail.getTitle().compareTo(title) == 0) {
				res.add(mail);
			}
		}
		return res;
	}
	
	public void findListSender(List<Mail> mails) {
		for (Mail mail : mails) {
			mail.setSender(userService.findById(mail.getIdUser()).getUsername());
		}
	}
	
	public boolean checkRoleAdmin(String username) {
		User user = userService.findByUsername(username);
		if(user.getRole().compareTo("ROLE_ADMIN") == 0) {
			return true;
		} else {
			return false;
		}
	}

	public List<Mail> findAll(int id) {
		List<Mail> mails = mailDAO.findAll(id);
		return mails;
	}

	public List<Mail> findAllReceive(int id) {
		List<Mail> mails = mailDAO.findAllReceive(id);
		return mails;
	}

	public List<Mail> findAllSend(int id) {
		List<Mail> mails = mailDAO.findAllSend(id);
		return mails;
	}
}
