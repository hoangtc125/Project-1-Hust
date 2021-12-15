package com.prj1.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.prj1.entities.Cart;
import com.prj1.entities.Comment;
import com.prj1.entities.Item;
import com.prj1.entities.Noti;
import com.prj1.entities.Product;
import com.prj1.entities.User;
import com.prj1.service.CartService;
import com.prj1.service.CommentService;
import com.prj1.service.MailService;
import com.prj1.service.MyUserDetailsService;
import com.prj1.service.NotiService;
import com.prj1.service.ProductService;
import com.prj1.service.UserService;

@Controller
public class ProductController {
	
//    Tiem su phu thuoc
	 @Autowired
	  private ProductService productService;

	 @Autowired
	  private CommentService commentService;

	 @Autowired
	  private MailService mailService;
	 
	 @Autowired
	  private CartService cartService;

	 @Autowired
	  private NotiService notiService;

	 @Autowired
	  private UserService userService;
	 
	 @RequestMapping(value="/product-list", method = RequestMethod.GET)
	  public String listProduct(@RequestParam(required=false, name = "sort", defaultValue="title") String typeSort, @RequestParam(required=false,name="title") String title, Model model) {

			model.addAttribute("listProduct", productService.findAll());
		
	    return "product-list";
	  }
	 
	 @RequestMapping(value="/product-list-deleted", method = RequestMethod.GET)
	  public String listproductdeleted(Model model) {
		
		model.addAttribute("listProduct", productService.findAllDeleted());
		
	    return "product-list-deleted";
	  }
	 
	 @RequestMapping("/product-list-management")
	  public String productlistmanagement(Model model) {
		 model.addAttribute("listProduct", productService.findAll());
		 return "product-list-management";
	   
	  }
	 
	 @RequestMapping("/product-view/{id}")
	  public String viewproduct(@PathVariable int id, Model model) {
	    Product product = productService.findById(id);
	    model.addAttribute("product", product);
	    model.addAttribute("listComment", commentService.loadCommentsProduct(id));
	    model.addAttribute("comment", new Comment());
	    model.addAttribute("roleAdmin", mailService.checkRoleAdmin(MyUserDetailsService.username));
				model.addAttribute("item", new Item());
	    return "product-view";
	  }

	  @RequestMapping("/product-save")
	  public String insertproduct(Model model) {
	    model.addAttribute("product", new Product());
	    return "product-save";
	  }
	  
	  @RequestMapping("/product-update/{id}/{productname}")
	  public String updateproduct(@PathVariable("id") int id, @PathVariable("productname") String productname, Model model) {
		if(id != -1) {			
			Product product = productService.findById(id);
			model.addAttribute("product", product);
		} 
		return "product-update";
	  }

	  @RequestMapping("/saveProduct")
	  public String doSaveproduct(@ModelAttribute("product") Product product, Model model) {
	    productService.save(product);   	
    	model.addAttribute("listProduct", productService.findAll());
    	Date date = new Date();
    	List<User> users = userService.findAllUser();
    	for (User user : users) {
			notiService.save(new Noti(user.getUsername(), "New product had been released", 0, "/prj1.com/product-list", date.toString()));
		}
    	return "redirect:/product-list-management";
	  }
	  
	  @RequestMapping("/saveCommentProduct/{idProduct}/{username}")
	  public String doSavecomment(@ModelAttribute("comment") Comment comment, @PathVariable("idProduct") int idProduct, @PathVariable("username") String username, Model model) {
	    comment.setIdProduct(idProduct);
//	    comment.setSender(username);
	    comment.setSender(MyUserDetailsService.username);
	    commentService.save(comment);
	    Product product = productService.findById(idProduct);
	    model.addAttribute("product", product);
	    model.addAttribute("listComment", commentService.loadCommentsProduct(idProduct));

	    List<String> comments = commentService.loadUserCommentByIdNews(idProduct);
	    Date date = new Date();
	    for (String comment2 : comments) {
			if(comment2.compareTo(MyUserDetailsService.username) != 0) {
				notiService.save(new Noti(comment2, "Have a new comment in which product you commented", 0, "/prj1.com/product-view/" + idProduct, date.toString()));
			}
		}
	    
	    return "redirect:/product-view/" + idProduct;
	  }
	  
	  @RequestMapping("/commentDeleteComment/{id}/{idProduct}")
	  public String doDeletecomment(@PathVariable int id, @PathVariable int idProduct, Model model) {
	    commentService.delete(id);
	    return "redirect:/product-view/" + idProduct;
	  }
	 
	  @RequestMapping("/updateProduct")
	  public String doUpdateproduct(@ModelAttribute("product") Product product, Model model) {
	    productService.update(product);
	    model.addAttribute("listProduct", productService.findAll());
    	Date date = new Date();
    	List<User> users = userService.findAllUser();
    	for (User user : users) {
			notiService.save(new Noti(user.getUsername(), "A product had been updated", 0, "/prj1.com/product-list", date.toString()));
		}
	    return "redirect:/product-list-management";
	  }
	  
	  @RequestMapping("/product-restore/{id}")
	  public String dorestoreProduct(@PathVariable int id, Model model) {
	    productService.restoreById(id);
	    model.addAttribute("listProduct", productService.findAllDeleted());
	    return "redirect:/product-list-deleted";
	  }
	  
	  @RequestMapping("/productSoftDelete/{id}/{username}")
	  public String doSoftDeleteproduct(@PathVariable int id, @PathVariable String username, Model model) {
//	    productService.softDelete(id, productname);
	    productService.softDelete(id, MyUserDetailsService.username);
	    model.addAttribute("listProduct", productService.findAll());
	    return "redirect:/product-list-management";
	  }
	  
	  @RequestMapping("/productDelete/{id}")
	  public String doDeleteproduct(@PathVariable int id, Model model) {
	    productService.delete(id);
	    model.addAttribute("listProduct", productService.findAllDeleted());
	    return "redirect:/product-list-deleted";
	  }
}
