package com.prj1.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.prj1.entities.Comment;
import com.prj1.entities.Item;
import com.prj1.entities.Noti;
import com.prj1.entities.Product;
import com.prj1.entities.Bill;
import com.prj1.entities.Cart;
import com.prj1.entities.User;
import com.prj1.service.CommentService;
import com.prj1.service.MailService;
import com.prj1.service.MyUserDetailsService;
import com.prj1.service.NotiService;
import com.prj1.service.UserService;
import com.prj1.utils.AppUtils;
import com.prj1.service.BillService;
import com.prj1.service.CartService;

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
	 
	 @Autowired
	  private NotiService notiService;
	 
	 @RequestMapping("/pay")
	  public String doPay(Model model, HttpServletRequest request) {
		  Cart cart = cartService.loadCartByUsername(AppUtils.getLoginedUser(request.getSession()));
		  User user = userService.findByUsername(AppUtils.getLoginedUser(request.getSession()));
		  Date date = new Date();
	    if(billService.pay(cart, user)) {
		    notiService.save(new Noti(AppUtils.getLoginedUser(request.getSession()), "Pay successfully", 0, "/prj1.com/bill-list", date.toString()));
	    } else {
	    	notiService.save(new Noti(AppUtils.getLoginedUser(request.getSession()), "Pay Failed", 0, "/prj1.com/bill-list", date.toString()));
	    }
	    model.addAttribute("listBill", billService.loadBillByUsername(AppUtils.getLoginedUser(request.getSession())));
	    return "redirect:/bill-list";
	  }
	 
	 @RequestMapping(value="/bill-list", method = RequestMethod.GET)
	  public String listBill(@RequestParam(required=false, name = "sort", defaultValue="title") String typeSort, @RequestParam(required=false,name="title") String title, Model model, HttpServletRequest request) {

			model.addAttribute("listBill", billService.loadBillByUsername(AppUtils.getLoginedUser(request.getSession())));
		
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
	  public String viewbill(@PathVariable int id, Model model, HttpServletRequest request) {
	    Bill bill = billService.findById(id);
		 List<Item> items = billService.loadProduct(bill);
		 model.addAttribute("listItem", items);
	    model.addAttribute("bill", bill);
	    model.addAttribute("roleAdmin", mailService.checkRoleAdmin(AppUtils.getLoginedUser(request.getSession())));
	    return "bill-view";
	  }

	  @RequestMapping("/bill-save")
	  public String insertbill(Model model) {
	    model.addAttribute("bill", new Bill());
	    return "bill-save";
	  }
	  
//	  @RequestMapping("/updateBill/{id}")
//	  public String doUpdatebill(@PathVariable("id") int id, @ModelAttribute("item") Item item, Model model) {
//		  billService.update(billService.loadBillByUsername(AppUtils.getLoginedUser(request.getSession())), id, item.getQuan());
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
	  public String doSoftDeletebill(@PathVariable int id, @PathVariable String username, Model model, HttpServletRequest request) {
//	    billService.softDelete(id, billname);
	    billService.softDelete(id, AppUtils.getLoginedUser(request.getSession()));
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
