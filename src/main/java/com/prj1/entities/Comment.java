package com.prj1.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

// đánh dấu là một entity chịu sự quản lý của hirbenate

@Entity(name = "Comment")
// entity này đại diện cho table comment trong db cttsis
@Table(name = "comment", catalog = "cttsis")
public class Comment implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id // khóa chính
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "id", unique = true, nullable = false)
	private Integer id;
	
	@Column(name = "idNews")
	private Integer idNews;

	@Column(name = "content", length = 999)
	private String content;

	@Column(name = "sender", length = 45)
	private String sender = "";

	public Comment() {
	}

	public Comment(Integer idNews, String content, String sender) {
		super();
		this.idNews = idNews;
		this.content = content;
		this.sender = sender;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getIdNews() {
		return idNews;
	}

	public void setIdNews(Integer idNews) {
		this.idNews = idNews;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getSender() {
		return sender;
	}

	public void setSender(String sender) {
		this.sender = sender;
	}

	
}