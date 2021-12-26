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

	@Column(name = "date", length = 45)
	private String date = "";

	@Column(name = "image", length = 999)
	private String image = "https://media.istockphoto.com/vectors/male-hand-holding-megaphone-with-breaking-news-speech-bubble-banner-vector-id1197831888?k=20&m=1197831888&s=612x612&w=0&h=HFWpcI1kIwr_GwwRSqOHlpf9r-BAartlbFtshuCY4Zw=";
	
	public News() {
	}

	public News(String title, String author, String content, Integer isDeleted) {
		super();
		this.title = title;
		this.author = author;
		this.content = content;
		this.isDeleted = isDeleted;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
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

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
	
	

}
