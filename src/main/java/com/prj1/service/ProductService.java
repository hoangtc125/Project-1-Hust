package com.prj1.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.prj1.dao.ProductDAO;
import com.prj1.entities.Product;

@Service
@Transactional
public class ProductService {
	
	@Autowired
	  private ProductDAO productDAO;
	  
	  public List<Product> findAll() {
	    return productDAO.findAll();
	  }
	  
	  public List<Product> findAllDeleted() {
		    return productDAO.findAllDeleted();
		  }
	  
	  public Product findById(int id) {
	    return productDAO.findById(id);
	  }
	  
	  public void restoreById(int id) {
		  Product product = productDAO.findById(id);
		  product.setIsDeleted(0);
		    productDAO.update(product);
	  }
	  
	  public void save(Product product){
	    // validate business
	    productDAO.save(product);
	  }
	  
	  
	  public void update(Product product){
	    // validate business
	    productDAO.update(product);
	  }
	  
	  public void softDelete(int id, String productname){
	    // validate business
		  Product product = productDAO.findById(id);
			  product.setIsDeleted(1);
			  productDAO.update(product);
	  }
	  
	  public void delete(int id){
	    // validate business
		  productDAO.delete(productDAO.findById(id));
	  }
}
