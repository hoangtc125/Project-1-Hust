package com.prj1.controller;

import java.util.Date;
import com.prj1.entities.User;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.config.core.userdetails.ReactiveUserDetailsServiceResourceFactoryBean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.prj1.entities.User;
import com.prj1.entities.Item;
import com.prj1.entities.Product;
import com.prj1.entities.Cart;
import com.prj1.service.CommentService;
import com.prj1.service.MailService;
import com.prj1.service.MyUserDetailsService;
import com.prj1.service.ProductService;
import com.prj1.service.UserService;
import com.prj1.utils.AppUtils;
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
	  private ProductService productService;

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
	  public String viewcart(@PathVariable int id, Model model, HttpServletRequest request) {
		 int num = 0;
		 if(id == -1 || !mailService.checkRoleAdmin(AppUtils.getLoginedUser(request.getSession()))) {
			 User user = userService.findByUsername(AppUtils.getLoginedUser(request.getSession()));
			 Cart cart = cartService.loadCartByUsername(AppUtils.getLoginedUser(request.getSession()));
			 String [] tmpStrings = cart.getListProduct().split(" ");
			 num = tmpStrings.length / 2;
			 List<Item> items = cartService.loadProduct(cart);
			 model.addAttribute("listItem", items);
			 model.addAttribute("cart", cart);
			 model.addAttribute("num", num);
			 model.addAttribute("user", user);
			    return "cart-view";
		 } else {
			 Cart cart = cartService.findById(id);
			 List<Item> items = cartService.loadProduct(cart);
			 model.addAttribute("listItem", items);
			 model.addAttribute("cart", cart);
			 String [] tmpStrings = cart.getListProduct().split(" ");
			 num = tmpStrings.length / 2;
			 model.addAttribute("num", num);
			 User user = userService.findByUsername(cart.getUsername());
			 model.addAttribute("user", user);
			 return "cart-view";
		 }
	  }

	  @RequestMapping("/cart-save")
	  public String insertcart(Model model) {
	    model.addAttribute("cart", new Cart());
	    return "cart-save";
	  }
	  
	  @RequestMapping("/cart-update/{id}")
	  public String updatecart(@PathVariable("id") int idProduct, Model model, HttpServletRequest request) {
	  Cart cart = cartService.loadCartByUsername(AppUtils.getLoginedUser(request.getSession()));
		 String [] tmpStrings = cart.getListProduct().split(" ");
		 Product product = new Product(); 
		 int quan = 0;
		 for(int i = 0; i < tmpStrings.length; i += 2) {
			 if(idProduct == Integer.parseInt(tmpStrings[i])) {
				 product = productService.findById(idProduct);
				 quan = Integer.parseInt(tmpStrings[i + 1]);
				 break;
			 }
		 }
		model.addAttribute("product", product);
		model.addAttribute("quan", quan);
		return "cart-update";
	  }

	  @RequestMapping("/saveCart")
	  public String doSavecart(@ModelAttribute("cart") Cart cart, Model model) {
	    cartService.save(cart);   	
    	model.addAttribute("listCart", cartService.findAll());
    	return "redirect:/cart-list-management";
	  }
	  
	  @RequestMapping("/updateCart")
	  public String doUpdatecart2(@RequestParam(required=true, name = "id") String id, @RequestParam(required=true, name = "quan", defaultValue="1") String quan, Model model, HttpServletRequest request) {
		 
		  cartService.update(cartService.loadCartByUsername(AppUtils.getLoginedUser(request.getSession())), Integer.parseInt(id), Integer.parseInt(quan));
		  model.addAttribute("listCart", cartService.findAll());
		  return "redirect:/cart-view/-1";
	  
	  }
//	  @RequestMapping("/updateCart/{id}")
//	  public String doUpdatecart(@PathVariable("id") int id, @ModelAttribute("item") Item item, Model model) {
//		  cartService.update(cartService.loadCartByUsername(AppUtils.getLoginedUser(request.getSession())), id, item.getQuan());
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
	  public String doSoftDeletecart(@PathVariable int id, @PathVariable String username, Model model, HttpServletRequest request) {
//	    cartService.softDelete(id, cartname);
	    cartService.softDelete(id, AppUtils.getLoginedUser(request.getSession()));
	    model.addAttribute("listCart", cartService.findAll());
	    return "redirect:/cart-list-management";
	  }
	  
}
