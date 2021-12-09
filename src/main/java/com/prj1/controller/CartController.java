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

import com.prj1.entities.Comment;
import com.prj1.entities.Item;
import com.prj1.entities.Product;
import com.prj1.entities.Cart;
import com.prj1.entities.User;
import com.prj1.entities.Cart;
import com.prj1.entities.Cart;
import com.prj1.entities.Cart;
import com.prj1.service.CommentService;
import com.prj1.service.MailService;
import com.prj1.service.MyUserDetailsService;
import com.prj1.service.UserService;
import com.prj1.service.CartService;
import com.prj1.service.CartService;

@Controller
public class CartController {
	
//    Tiem su phu thuoc
	 @Autowired
	  private CartService cartService;

	 @Autowired
	  private CommentService commentService;

	 @Autowired
	  private MailService mailService;

	 @Autowired
	  private UserService userService;
	 
	 @RequestMapping(value="/cart-list", method = RequestMethod.GET)
	  public String listCart(@RequestParam(required=false, name = "sort", defaultValue="title") String typeSort, @RequestParam(required=false,name="title") String title, Model model) {

			model.addAttribute("listCart", cartService.findAll());
		
	    return "cart-list";
	  }
	 
	 @RequestMapping(value="/cart-list-deleted", method = RequestMethod.GET)
	  public String listcartdeleted(Model model) {
		
		model.addAttribute("listCart", cartService.findAllDeleted());
		
	    return "cart-list-deleted";
	  }
	 
	 @RequestMapping("/cart-list-management")
	  public String cartlistmanagement(Model model) {
		 model.addAttribute("listCart", cartService.findAll());
		 return "cart-list-management";
	   
	  }
	 
	 @RequestMapping("/cart-view/{id}")
	  public String viewcart(@PathVariable int id, Model model) {
		 if(id == -1 || !mailService.checkRoleAdmin(MyUserDetailsService.username)) {
			 Cart cart = cartService.loadCartByUsername(MyUserDetailsService.username);
			 List<Item> items = cartService.loadProduct(cart);
			 model.addAttribute("listItem", items);
			 model.addAttribute("cart", cart);
			    return "cart-view";
		 }
	    Cart cart = cartService.findById(id);
		 List<Item> items = cartService.loadProduct(cart);
		 model.addAttribute("listItem", items);
	    model.addAttribute("cart", cart);
	    model.addAttribute("roleAdmin", mailService.checkRoleAdmin(MyUserDetailsService.username));
	    return "cart-view";
	  }

	  @RequestMapping("/cart-save")
	  public String insertcart(Model model) {
	    model.addAttribute("cart", new Cart());
	    return "cart-save";
	  }
	  
	  @RequestMapping("/cart-update/{id}")
	  public String updatecart(@PathVariable("id") int idProduct, Model model) {
	  Cart cart = cartService.loadCartByUsername(MyUserDetailsService.username);
		model.addAttribute("id", idProduct);
		return "cart-update";
	  }

	  @RequestMapping("/saveCart")
	  public String doSavecart(@ModelAttribute("cart") Cart cart, Model model) {
	    cartService.save(cart);   	
    	model.addAttribute("listCart", cartService.findAll());
    	return "redirect:/cart-list-management";
	  }
	  
	  @RequestMapping("/updateCart")
	  public String doUpdatecart2(@RequestParam(required=true, name = "id") String id, @RequestParam(required=true, name = "quan", defaultValue="1") String quan, Model model) {
		 
		  cartService.update(cartService.loadCartByUsername(MyUserDetailsService.username), Integer.parseInt(id), Integer.parseInt(quan));
		  model.addAttribute("listCart", cartService.findAll());
		  return "redirect:/cart-view/-1";
	  
	  }
//	  @RequestMapping("/updateCart/{id}")
//	  public String doUpdatecart(@PathVariable("id") int id, @ModelAttribute("item") Item item, Model model) {
//		  cartService.update(cartService.loadCartByUsername(MyUserDetailsService.username), id, item.getQuan());
//		  model.addAttribute("listCart", cartService.findAll());
//		  return "redirect:/cart-view/-1";
//	  }
	  
	  @RequestMapping("/cart-restore/{id}")
	  public String dorestoreCart(@PathVariable int id, Model model) {
	    cartService.restoreById(id);
	    model.addAttribute("listCart", cartService.findAllDeleted());
	    return "redirect:/cart-list-deleted";
	  }
	  
	  @RequestMapping("/cartSoftDelete/{id}/{username}")
	  public String doSoftDeletecart(@PathVariable int id, @PathVariable String username, Model model) {
//	    cartService.softDelete(id, cartname);
	    cartService.softDelete(id, MyUserDetailsService.username);
	    model.addAttribute("listCart", cartService.findAll());
	    return "redirect:/cart-list-management";
	  }
	  
	  @RequestMapping("/cartDelete/{id}")
	  public String doDeletecart(@PathVariable int id, Model model) {
	    cartService.delete(id);
	    model.addAttribute("listCart", cartService.findAllDeleted());
	    return "redirect:/cart-list-deleted";
	  }
	  
}
