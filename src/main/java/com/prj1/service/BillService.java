package com.prj1.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hibernate.query.criteria.internal.expression.function.LengthFunction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.prj1.dao.BillDAO;
import com.prj1.entities.Bill;
import com.prj1.entities.Cart;
import com.prj1.entities.Item;
import com.prj1.entities.Product;
import com.prj1.entities.User;

@Service
@Transactional
public class BillService {
	
	@Autowired
	  private BillDAO billDAO;

	 @Autowired
	  private UserService userService;

	 @Autowired
	  private CartService cartService;
	 
	private String [] listProduct;

	 @Autowired
	  private ProductService productService;
	 
	  public String[] getListProduct(Bill bill) {
		return bill.getListProduct().split(" ");
		
	}

	public void setListProduct(String[] listProduct) {
		this.listProduct = listProduct;
	}

	public List<Bill> findAll() {
	    return billDAO.findAll();
	  }
	  
	  public List<Bill> findAllDeleted() {
		    return billDAO.findAllDeleted();
		  }
	  
	  public Bill findById(int id) {
	    return billDAO.findById(id);
	  }
	  
	  public void restoreById(int id) {
		  Bill bill = billDAO.findById(id);
		    billDAO.update(bill);
	  }
	  
	  public void save(Bill bill){
	    // validate business
		  Date date = new Date();
		  bill.setDate(date.toString());
	    billDAO.save(bill);
	  }
	  
	  public List<Bill> loadBillByUsername(String username) { 
		  return billDAO.loadBillByUsername(username);
	  }
	  
	  public void update(Bill bill, int id, int quan){
	    // validate business
		  if(bill.getListProduct().compareTo("") == 0) return;
		  String [] tmpStrings = getListProduct(bill);
		  StringBuilder stringBuilder = new StringBuilder();
		  Product product = productService.findById(id);
		  int mark = 0;
		  for(int i = 0; i < tmpStrings.length; i++) {
			  if(i % 2 == 1) continue;
			  if(Integer.parseInt(tmpStrings[i]) != id) {
				  stringBuilder.append(tmpStrings[i] + " " + tmpStrings[i + 1] + " ");
			  } else {
				  mark = 1;
				  if(quan != 0) {
					  stringBuilder.append(tmpStrings[i] + " " + (quan) + " ");
					  bill.setSumProduct("" + (Integer.parseInt(bill.getSumProduct()) - (Integer.parseInt(tmpStrings[i + 1]) - quan) * Integer.parseInt(product.getPrice())));
				  } else {
					  bill.setSumProduct("" + (Integer.parseInt(bill.getSumProduct()) - Integer.parseInt(tmpStrings[i + 1]) * Integer.parseInt(product.getPrice())));
				  }
			  }
		  }
		  if(mark == 0) {
			  stringBuilder.append(id + " " + quan + " ");
			  bill.setSumProduct("" + (Integer.parseInt(bill.getSumProduct()) + Integer.parseInt(product.getPrice()) * quan));
		  }
		  bill.setListProduct(stringBuilder.toString().trim());
	    billDAO.update(bill);
	  }
	  
	  public void softDelete(int id, String billname){
	    // validate business
		  Bill bill = billDAO.findById(id);
			  billDAO.update(bill);
	  }
	  
	  public void delete(int id){
	    // validate business
		  billDAO.delete(billDAO.findById(id));
	  }

	public List<Item> loadProduct(Bill bill) {
		// TODO Auto-generated method stub
		List<Item> items = new ArrayList<Item>();
		if(bill.getListProduct().compareTo("") == 0) return null;
		String [] tmpStrings = getListProduct(bill);
		for(int i = 0; i < tmpStrings.length; i++) {
			if(i % 2 == 0) {				
				Item item = new Item(productService.findById(Integer.parseInt(tmpStrings[i])), Integer.parseInt(tmpStrings[i + 1]));
				items.add(item);
			}
		}
		
		return items;
	}

	public void pay(Cart cart, User user) {
		// TODO Auto-generated method stub
		if(Integer.parseInt(user.getCoin()) >= Integer.parseInt(cart.getSumProduct())) {
			List<Item> items = cartService.loadProduct(cart);
			for (Item item : items) {
				if(Integer.parseInt(item.getProduct().getUnSold()) < item.getQuan()) {
					return;
				}
			}
			for (Item item : items) {
				item.getProduct().setSold("" + (Integer.parseInt(item.getProduct().getSold()) + item.getQuan()));
				item.getProduct().setUnSold("" + (Integer.parseInt(item.getProduct().getUnSold()) - item.getQuan()));
				productService.update(item.getProduct());
			}
			
			Bill bill = new Bill();
			bill.setUsername(user.getUsername());
			bill.setListProduct(cart.getListProduct());
			bill.setNameBill(user.getUsername() + bill.getId());
			bill.setSumProduct(cart.getSumProduct());
			save(bill);
			user.setCoin("" + (Integer.parseInt(user.getCoin()) - Integer.parseInt(cart.getSumProduct())));
			userService.update(user);
			cartService.reset(cart);
		}
	}
}
