package com.prj1.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

// đánh dấu là một entity chịu sự quản lý của hirbenate

@Entity(name = "Product")
// entity này đại diện cho table product trong db cttsis
@Table(name = "product", catalog = "cttsis")
public class Product implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id // khóa chính
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "id", unique = true, nullable = false)
	private Integer id;
	
	@Column(name = "name", length = 45)
	private String name = "";

	@Column(name = "sold", length = 999)
	private String sold = "0";
	
	@Column(name = "unSold", length = 999)
	private String unSold = "0";
	
	@Column(name = "price", length = 45)
	private String price = "";

	@Column(name = "isDeleted")
	private Integer isDeleted = 0;

	@Column(name = "image", length = 999)
	private String image = "https://nordiccoder.com/app/uploads/2020/01/6ab1641f-fb02-4f84-b09d-b8f001063b66.png";
	
	public Product() {
	}

	public Product(Integer id, String name, String sold, String unSold, String price, Integer isDeleted) {
		super();
		this.id = id;
		this.name = name;
		this.sold = sold;
		this.unSold = unSold;
		this.price = price;
		this.isDeleted = isDeleted;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSold() {
		return sold;
	}

	public void setSold(String sold) {
		this.sold = sold;
	}

	public String getUnSold() {
		return unSold;
	}

	public void setUnSold(String unSold) {
		this.unSold = unSold;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public Integer getIsDeleted() {
		return isDeleted;
	}

	public void setIsDeleted(Integer isDeleted) {
		this.isDeleted = isDeleted;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	
}
