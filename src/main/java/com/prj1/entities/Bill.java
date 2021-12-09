package com.prj1.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

// đánh dấu là một entity chịu sự quản lý của hirbenate

@Entity(name = "Bill")
// entity này đại diện cho table bill trong db cttsis
@Table(name = "bill", catalog = "cttsis")
public class Bill implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id // khóa chính
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "id", unique = true, nullable = false)
	private Integer id;
	
	@Column(name = "username", length = 45)
	private String username = "";

	@Column(name = "nameBill", length = 45)
	private String nameBill = "";
	
	@Column(name = "list", length = 999)
	private String listProduct = "";
	
	@Column(name = "sum", length = 45)
	private String sumProduct = "";

	@Column(name = "otp", length = 45)
	private String otp = "";
	
	public Bill() {
	}

	public Bill(Integer id, String username, String nameBill, String listProduct, String sumProduct, String otp) {
		super();
		this.id = id;
		this.username = username;
		this.nameBill = nameBill;
		this.listProduct = listProduct;
		this.sumProduct = sumProduct;
		this.otp = otp;
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

	public String getNameBill() {
		return nameBill;
	}

	public void setNameBill(String nameBill) {
		this.nameBill = nameBill;
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

	public String getOtp() {
		return otp;
	}

	public void setOtp(String otp) {
		this.otp = otp;
	}

	
}
