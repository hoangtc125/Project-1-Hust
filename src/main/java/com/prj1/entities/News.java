package com.prj1.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

// đánh dấu là một entity chịu sự quản lý của hirbenate

@Entity(name = "News")
// entity này đại diện cho table news trong db cttsis
@Table(name = "news", catalog = "cttsis")
public class News implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id // khóa chính
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "id", unique = true, nullable = false)
	private Integer id;
	
	@Column(name = "title", length = 255)
	private String title = "";

	@Column(name = "author", length = 45)
	private String author = "";
	
	@Column(name = "content", length = 999)
	private String content = "";

	@Column(name = "isDeleted")
	private Integer isDeleted = 0;
	
	public News() {
	}

	public News(String title, String author, String content, Integer isDeleted) {
		super();
		this.title = title;
		this.author = author;
		this.content = content;
		this.isDeleted = isDeleted;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getIsDeleted() {
		return isDeleted;
	}

	public void setIsDeleted(Integer isDeleted) {
		this.isDeleted = isDeleted;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

}
