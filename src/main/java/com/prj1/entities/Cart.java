package com.prj1.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

// đánh dấu là một entity chịu sự quản lý của hirbenate

@Entity(name = "Cart")
// entity này đại diện cho table cart trong db cttsis
@Table(name = "cart", catalog = "cttsis")
public class Cart implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id // khóa chính
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "id", unique = true, nullable = false)
	private Integer id;
	
	@Column(name = "username", length = 45)
	private String username = "";

	@Column(name = "list", length = 999)
	private String listProduct = "";
	
	@Column(name = "sum", length = 45)
	private String sumProduct = "0";
	
	public Cart() {
	}

	
	
	public Cart(Integer id, String username, String listProduct, String sumProduct) {
		super();
		this.id = id;
		this.username = username;
		this.listProduct = listProduct;
		this.sumProduct = sumProduct;
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



	public String getListProduct() {
		return listProduct;
	}



	public void setListProduct(String listProduct) {
		this.listProduct = listProduct;
	}



	public String getSumProduct() {
		return sumProduct;
	}



	public void setSumProduct(String sumProduct) {
		this.sumProduct = sumProduct;
	}

	
	
}
