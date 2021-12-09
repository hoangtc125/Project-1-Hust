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
import com.prj1.entities.Bill;
import com.prj1.entities.Cart;
import com.prj1.entities.User;
import com.prj1.entities.Bill;
import com.prj1.entities.Bill;
import com.prj1.entities.Bill;
import com.prj1.service.CommentService;
import com.prj1.service.MailService;
import com.prj1.service.MyUserDetailsService;
import com.prj1.service.UserService;
import com.prj1.service.BillService;
import com.prj1.service.CartService;
import com.prj1.service.BillService;

@Controller
public class BillController {
	
//    Tiem su phu thuoc
	 @Autowired
	  private BillService billService;

	 @Autowired
	  private CommentService commentService;

	 @Autowired
	  private MailService mailService;

	 @Autowired
	  private UserService userService;

	 @Autowired
	  private CartService cartService;
	 
	 @RequestMapping("/pay")
	  public String doPay(Model model) {
		  Cart cart = cartService.loadCartByUsername(MyUserDetailsService.username);
		  User user = userService.findByUsername(MyUserDetailsService.username);
	    billService.pay(cart, user);
	    model.addAttribute("listBill", billService.loadBillByUsername(MyUserDetailsService.username));
	    return "redirect:/bill-list";
	  }
	 
	 @RequestMapping(value="/bill-list", method = RequestMethod.GET)
	  public String listBill(@RequestParam(required=false, name = "sort", defaultValue="title") String typeSort, @RequestParam(required=false,name="title") String title, Model model) {

			model.addAttribute("listBill", billService.loadBillByUsername(MyUserDetailsService.username));
		
	    return "bill-list";
	  }
	 
	 @RequestMapping(value="/bill-list-deleted", method = RequestMethod.GET)
	  public String listbilldeleted(Model model) {
		
		model.addAttribute("listBill", billService.findAllDeleted());
		
	    return "bill-list-deleted";
	  }
	 
	 @RequestMapping("/bill-list-management")
	  public String billlistmanagement(Model model) {
		 model.addAttribute("listBill", billService.findAll());
		 return "bill-list-management";
	   
	  }
	 
	 @RequestMapping("/bill-view/{id}")
	  public String viewbill(@PathVariable int id, Model model) {
	    Bill bill = billService.findById(id);
		 List<Item> items = billService.loadProduct(bill);
		 model.addAttribute("listItem", items);
	    model.addAttribute("bill", bill);
	    model.addAttribute("roleAdmin", mailService.checkRoleAdmin(MyUserDetailsService.username));
	    return "bill-view";
	  }

	  @RequestMapping("/bill-save")
	  public String insertbill(Model model) {
	    model.addAttribute("bill", new Bill());
	    return "bill-save";
	  }
	  
//	  @RequestMapping("/updateBill/{id}")
//	  public String doUpdatebill(@PathVariable("id") int id, @ModelAttribute("item") Item item, Model model) {
//		  billService.update(billService.loadBillByUsername(MyUserDetailsService.username), id, item.getQuan());
//		  model.addAttribute("listBill", billService.findAll());
//		  return "redirect:/bill-view/-1";
//	  }
	  
	  @RequestMapping("/bill-restore/{id}")
	  public String dorestoreBill(@PathVariable int id, Model model) {
	    billService.restoreById(id);
	    model.addAttribute("listBill", billService.findAllDeleted());
	    return "redirect:/bill-list-deleted";
	  }
	  
	  @RequestMapping("/billSoftDelete/{id}/{username}")
	  public String doSoftDeletebill(@PathVariable int id, @PathVariable String username, Model model) {
//	    billService.softDelete(id, billname);
	    billService.softDelete(id, MyUserDetailsService.username);
	    model.addAttribute("listBill", billService.findAll());
	    return "redirect:/bill-list-management";
	  }
	  
	  @RequestMapping("/billDelete/{id}")
	  public String doDeletebill(@PathVariable int id, Model model) {
	    billService.delete(id);
	    model.addAttribute("listBill", billService.findAllDeleted());
	    return "redirect:/bill-list-deleted";
	  }
	  
	  
}
