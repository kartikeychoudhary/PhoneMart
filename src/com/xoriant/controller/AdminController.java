package com.xoriant.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.xoriant.dao.CustomerDaoImpl;
import com.xoriant.dao.OrderDaoImpl;
import com.xoriant.dao.PhoneDaoImpl;
import com.xoriant.modals.Customer;
import com.xoriant.modals.Order;
import com.xoriant.modals.Phone;


/**
* Admin Controller which handles URL End-Points 
* 			GET			/dashboard 
* 			GET			/adminPhoneView
* 			GET			/adminOrderView
* 			GET			/adminOrderDetails/{orderId}/{customerId}/{phoneId}
* 			POST 		/updateOrderDetails/{orderId}/{customerId}/{phoneId}  
* @see      Views Rendered as per Url
*/

@Controller
@SessionAttributes("customerId")
public class AdminController {

	/**
	* @return Admin Dashboard : Details about customers, orders, revenue, canceled orders, daily sales and monthly orders.
	*/
	@RequestMapping("/dashboard")
	public ModelAndView dashboard(HttpServletRequest req, HttpServletResponse res) {
		ModelAndView view = new ModelAndView();
		view.setViewName("Admin/dashboard");
		
		PhoneDaoImpl phoneDao = new PhoneDaoImpl();
		List<Phone> phones = phoneDao.listPhones();
		
		OrderDaoImpl orderDaoImpl = new OrderDaoImpl();
		List<Order> orders =  orderDaoImpl.fetchAllOrders();
		
		double revenue = 0;
		int cancelled = 0;
		
		for (Order order : orders) {
			revenue+=order.getBill();
			System.out.println(order.getStatus());
			
			if(order.getStatus().equals("cancelled")) { 
				cancelled+=1;
			}
		}
		
		System.out.println(cancelled);
		
		CustomerDaoImpl customerDaoImpl = new CustomerDaoImpl();
		List<Customer> customers = customerDaoImpl.fetchAllCustomers();
		
		view.addObject("orders_size", orders.size());
		view.addObject("customers_size", customers.size());
		view.addObject("phones_size", phones.size());
		view.addObject("revenue", revenue);
		view.addObject("cancelled", cancelled);

		
		return view;
	}
	
	/**
	* @return Admin Phones View : All phones are displayed here.
	*/
	@RequestMapping("/adminPhoneView")
	public ModelAndView adminView(HttpServletRequest req, HttpServletResponse res) {
		ModelAndView view = new ModelAndView();
		view.setViewName("Admin/adminPhoneView");
		
		PhoneDaoImpl phoneDao = new PhoneDaoImpl();
		List<Phone> phones = phoneDao.listPhones();
		System.out.print(phones.size());
		
		view.addObject("phones", phones);
		return view;
	}
	
	/**
	* @return Admin Order View : Orders which are placed by customers are displayed here.
	*/
	@RequestMapping("/adminOrderView")
	public ModelAndView adminOrderView(HttpServletRequest req, HttpServletResponse res, ModelMap model) {
		Integer customerId = (Integer) model.get("customerId");
		if(customerId == null) {
			return new ModelAndView("redirect:/login");
		}
		
		OrderDaoImpl orderDaoImpl = new OrderDaoImpl();
		List<Order> orders = orderDaoImpl.fetchAllOrders();
        
		ModelAndView view = new ModelAndView();
		view.setViewName("Admin/adminOrderView");
		view.addObject("orders", orders);

		return view;
	}
	
	/**
	* @return Admin Order Details : Order details like customer address, contact no. are displayed with invoice.
	*/
	@RequestMapping("/adminOrderDetails/{orderId}/{customerId}/{phoneId}")
	public ModelAndView adminOrderDetailsView(@PathVariable(value="orderId") String orderId, @PathVariable(value="customerId") String customerId, @PathVariable(value="phoneId") String phoneId,HttpServletRequest req, HttpServletResponse res, ModelMap model) {
		Integer adminId = (Integer) model.get("customerId");
		if(adminId == null) {
			return new ModelAndView("redirect:/login");
		}
		System.out.println(orderId + " " + customerId + " " + phoneId );
		
		OrderDaoImpl orderDaoImpl = new OrderDaoImpl();
		Order order = orderDaoImpl.getOrder(Integer.parseInt(orderId));
		
		PhoneDaoImpl phoneDaoImpl = new PhoneDaoImpl();
		Phone phone = phoneDaoImpl.getPhone(Integer.parseInt(phoneId));
		
		CustomerDaoImpl customerDaoImpl = new CustomerDaoImpl();
		Customer customer = customerDaoImpl.getCustomer(Integer.parseInt(customerId));
     
		ModelAndView view = new ModelAndView();
		view.setViewName("Admin/adminOrderDetails");

		view.addObject("order", order);
		view.addObject("phone", phone);
		view.addObject("customer", customer);

		
		return view;
	}
	
	/**
	* @param orderId, customerId, phoneId 
	* @return Update Order details : Admin can update the status for order and also can cancel them.
	*/
	@RequestMapping(value="/updateOrderDetails/{orderId}/{customerId}/{phoneId}", method=RequestMethod.POST)
	public ModelAndView adminUpdateOrderDetailsView(@PathVariable(value="orderId") String orderId, @PathVariable(value="customerId") String customerId, @PathVariable(value="phoneId") String phoneId,HttpServletRequest req, HttpServletResponse res, ModelMap model) {
		Integer adminId = (Integer) model.get("customerId");
		if(adminId == null) {
			return new ModelAndView("redirect:/login");
		}
		
		OrderDaoImpl orderDaoImpl = new OrderDaoImpl();
		Order order = orderDaoImpl.getOrder(Integer.parseInt(orderId));
		order.setStatus(req.getParameter("status"));
		orderDaoImpl.updateOrder(order);

		
		return new ModelAndView("redirect:/adminOrderDetails/"+ orderId + "/" + customerId + "/" + phoneId);
	}
	
	
}
