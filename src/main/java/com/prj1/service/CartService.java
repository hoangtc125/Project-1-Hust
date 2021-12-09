package com.prj1.service;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.query.criteria.internal.expression.function.LengthFunction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.prj1.dao.CartDAO;
import com.prj1.entities.Cart;
import com.prj1.entities.Item;
import com.prj1.entities.Product;

@Service
@Transactional
public class CartService {
	
	@Autowired
	  private CartDAO cartDAO;
	private String [] listProduct;

	 @Autowired
	  private ProductService productService;
	 
	  public String[] getListProduct(Cart cart) {
		return cart.getListProduct().split(" ");
		
	}

	public void setListProduct(String[] listProduct) {
		this.listProduct = listProduct;
	}

	public List<Cart> findAll() {
	    return cartDAO.findAll();
	  }
	  
	  public List<Cart> findAllDeleted() {
		    return cartDAO.findAllDeleted();
		  }
	  
	  public Cart findById(int id) {
	    return cartDAO.findById(id);
	  }
	  
	  public void restoreById(int id) {
		  Cart cart = cartDAO.findById(id);
		    cartDAO.update(cart);
	  }
	  
	  public void save(Cart cart){
	    // validate business
	    cartDAO.save(cart);
	  }
	  
	  public Cart loadCartByUsername(String username) { 
		  return cartDAO.loadCartByUsername(username);
	  }
	  
	  public void update(Cart cart, int id, int quan){
	    // validate business
		  String [] tmpStrings = getListProduct(cart);
		  StringBuilder stringBuilder = new StringBuilder();
		  Product product = productService.findById(id);
		  int mark = 0;
		  if(cart.getListProduct().compareTo("") != 0) {
			  for(int i = 0; i < tmpStrings.length; i++) {
				  if(i % 2 == 1) continue;
				  if(Integer.parseInt(tmpStrings[i]) != id) {
					  stringBuilder.append(tmpStrings[i] + " " + tmpStrings[i + 1] + " ");
				  } else {
					  mark = 1;
					  if(quan != 0) {
						  stringBuilder.append(tmpStrings[i] + " " + (quan) + " ");
						  cart.setSumProduct("" + (Integer.parseInt(cart.getSumProduct()) - (Integer.parseInt(tmpStrings[i + 1]) - quan) * Integer.parseInt(product.getPrice())));
					  } else {
						  cart.setSumProduct("" + (Integer.parseInt(cart.getSumProduct()) - Integer.parseInt(tmpStrings[i + 1]) * Integer.parseInt(product.getPrice())));
					  }
				  }
			  }
		  }
		  if(mark == 0) {
			  stringBuilder.append(id + " " + quan + " ");
			  cart.setSumProduct("" + (Integer.parseInt(cart.getSumProduct()) + Integer.parseInt(product.getPrice()) * quan));
		  }
		  cart.setListProduct(stringBuilder.toString().trim());
	    cartDAO.update(cart);
	  }
	  
	  public void reset(Cart cart) {
		  cart.setListProduct("");
		  cart.setSumProduct("0");
		  cartDAO.update(cart);
	  }
	  
	  public void softDelete(int id, String cartname){
	    // validate business
		  Cart cart = cartDAO.findById(id);
			  cartDAO.update(cart);
	  }
	  
	  public void delete(int id){
	    // validate business
		  cartDAO.delete(cartDAO.findById(id));
	  }

	public List<Item> loadProduct(Cart cart) {
		// TODO Auto-generated method stub
		List<Item> items = new ArrayList<Item>();
		if(cart.getListProduct().compareTo("") == 0) return null;
		String [] tmpStrings = getListProduct(cart);
		for(int i = 0; i < tmpStrings.length; i++) {
			if(i % 2 == 0) {				
				Item item = new Item(productService.findById(Integer.parseInt(tmpStrings[i])), Integer.parseInt(tmpStrings[i + 1]));
				items.add(item);
			}
		}
		
		return items;
	}
}
