package com.prj1.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

// đánh dấu là một entity chịu sự quản lý của hirbenate

@Entity(name = "Mail")
// entity này đại diện cho table mail trong db cttsis
@Table(name = "mail", catalog = "cttsis")
public class Mail implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id // khóa chính
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "id", unique = true, nullable = false)
	private Integer id;
	
	@Column(name = "idUser")
	private Integer IdUser;

	@Column(name = "idUser_")
	private Integer IdUser_;

	@Column(name = "isRead")
	private String isRead = "No";

	@Column(name = "content", length = 999)
	private String content;

	@Column(name = "title", length = 255)
	private String title;

	@Column(name = "sender", length = 45)
	private String sender = "";

	@Column(name = "receiver", length = 45)
	private String receiver = "";

	@Column(name = "date", length = 45)
	private String date = "";
	
	public Mail() {
	}

	public Mail(Integer idUser, Integer idUser_, String isRead, String content, String title) {
		super();
		IdUser = idUser;
		IdUser_ = idUser_;
		this.isRead = isRead;
		this.content = content;
		this.title = title;
	}
	
	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getIdUser() {
		return IdUser;
	}

	public void setIdUser(Integer idUser) {
		IdUser = idUser;
	}

	public Integer getIdUser_() {
		return IdUser_;
	}

	public void setIdUser_(Integer idUser_) {
		IdUser_ = idUser_;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getIsRead() {
		return isRead;
	}

	public void setIsRead(String isRead) {
		this.isRead = isRead;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getSender() {
		return sender;
	}

	public void setSender(String sender) {
		this.sender = sender;
	}

	public String getReceiver() {
		return receiver;
	}

	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}

	
}
