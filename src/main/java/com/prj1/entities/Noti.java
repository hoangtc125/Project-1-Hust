package com.prj1.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

// đánh dấu là một entity chịu sự quản lý của hirbenate

@Entity(name = "Noti")
// entity này đại diện cho table noti trong db cttsis
@Table(name = "noti", catalog = "cttsis")
public class Noti implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id // khóa chính
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "id", unique = true, nullable = false)
	private Integer id;
	
	@Column(name = "username", length = 45)
	private String username = "";

	@Column(name = "content", length = 255)
	private String content = "";
	
	@Column(name = "seen")
	private Integer seen = 0;

	@Column(name = "link", length = 255)
	private String link = "/prj1.com/";

	@Column(name = "date", length = 45)
	private String date = "";
	
	public Noti() {
	}

	

	public Noti(String username, String content, Integer seen, String link, String date) {
		super();
		this.username = username;
		this.content = content;
		this.seen = seen;
		this.link = link;
		this.date = date;
	}



	public String getLink() {
		return link;
	}



	public void setLink(String link) {
		this.link = link;
	}



	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Integer getSeen() {
		return seen;
	}

	public void setSeen(Integer seen) {
		this.seen = seen;
	}



	public String getDate() {
		return date;
	}



	public void setDate(String date) {
		this.date = date;
	}

	
}
