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

	@Column(name = "idProduct")
	private Integer idProduct;

	@Column(name = "content", length = 999)
	private String content;

	@Column(name = "sender", length = 45)
	private String sender = "";

	@Column(name = "date", length = 45)
	private String date = "";

	public Comment() {
	}

	public Comment(Integer idNews, Integer idProduct, String content, String sender) {
		super();
		this.idNews = idNews;
		this.idProduct = idProduct;
		this.content = content;
		this.sender = sender;
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

	public Integer getIdProduct() {
		return idProduct;
	}

	public void setIdProduct(Integer idProduct) {
		this.idProduct = idProduct;
	}

	
}
