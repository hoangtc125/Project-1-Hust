package com.prj1.entities;

public class Item {
	private Product product;
	private int quan;
	
	public Item() {
		super();
	}
	public Item(Product product, int quan) {
		super();
		this.product = product;
		this.quan = quan;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public int getQuan() {
		return quan;
	}
	public void setQuan(int quan) {
		this.quan = quan;
	}
	
	
}
