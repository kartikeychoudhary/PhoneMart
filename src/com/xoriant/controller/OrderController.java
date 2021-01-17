package com.xoriant.controller;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.xoriant.dao.CustomerDaoImpl;
import com.xoriant.dao.OrderDaoImpl;
import com.xoriant.dao.PhoneDaoImpl;
import com.xoriant.modals.Customer;
import com.xoriant.modals.Order;
import com.xoriant.modals.Phone;


/**
* Order Controller which handles URL End-Points 
* 
* 			GET			/order/{phoneId}
* 			GET			/cancleOrderCustomer/{orderId}
* 			GET 		/cancleOrderAdmin/{orderId} 
* 			GET 		/customerOrders 
* 			GET 		/invoice/{orderId}
* 
* @see      Views Rendered as per Url
*/

@Controller
@SessionAttributes("customerId")
public class OrderController {

	/**
	* @return Place Order : Order is placed by PhoneId.
	*/
	@RequestMapping("/order/{phoneId}")
	public ModelAndView createOrder(@PathVariable(value="phoneId") String phoneId,ModelMap model) {
		Integer customerId = (Integer) model.get("customerId");
		if(customerId == null) {
			return new ModelAndView("redirect:/login");
		}
		
		OrderDaoImpl orderDaoImpl = new OrderDaoImpl();
		
		String cost = new PhoneDaoImpl().getPhone(Integer.parseInt(phoneId)).getCost();
		double price = Double.parseDouble(cost);
		
		Order order = new Order(customerId, Integer.parseInt(phoneId), "Ordered", price);
		orderDaoImpl.addOrder(order);
		
		return new ModelAndView("redirect:/home");
	}
	
	/**
	* @return Customer Cancel Order : Order is canceled by OrderId
	*/
	@RequestMapping("/cancleOrderCustomer/{orderId}")
	public ModelAndView canclePhoneOrderCustomer(@PathVariable(value="orderId") String orderId,ModelMap model) {
		Integer customerId = (Integer) model.get("customerId");
		if(customerId == null) {
			return new ModelAndView("redirect:/login");
		}
		
		OrderDaoImpl orderDaoImpl=new OrderDaoImpl();
		orderDaoImpl.deleteOrder(Integer.parseInt(orderId));
		
		return new ModelAndView("redirect:/home");
	}
	
	/**
	* @return Admin Cancel Order : Order is canceled by OrderId.
	*/
	@RequestMapping("/cancleOrderAdmin/{orderId}")
	public ModelAndView canclePhoneOrderAdmin(@PathVariable(value="orderId") String orderId,ModelMap model) {
		Integer customerId = (Integer) model.get("customerId");
		if(customerId == null) {
			return new ModelAndView("redirect:/login");
		}
		
		OrderDaoImpl orderDaoImpl=new OrderDaoImpl();
		Order order=orderDaoImpl.getOrder((Integer.parseInt(orderId)));
		order.setStatus("cancelled");
		orderDaoImpl.updateOrder(order);
		
		return new ModelAndView("redirect:/adminPhoneView");
	}
	
	/**
	* @return Customer Orders : All Customer Orders are displayed here.
	*/
	@RequestMapping("/customerOrders")
	public ModelAndView customerOrders(ModelMap model) {
		Integer customerId = (Integer) model.get("customerId");
		if(customerId == null) {
			return new ModelAndView("redirect:/login");
		}
		
		OrderDaoImpl orderDaoImpl = new OrderDaoImpl();
		List<Phone> phones = orderDaoImpl.fetchPhones(customerId);
		List<Order> orders = orderDaoImpl.fetchOrders(customerId);
		
		Comparator<Order> orderCompareByPhoneId = (Order o1, Order o2) -> 
        o1.getPhoneId().compareTo( o2.getPhoneId() );
        
        Comparator<Phone> phoneCompareByPhoneId = (Phone o1, Phone o2) -> 
        o1.getPhoneId().compareTo( o2.getPhoneId() );
        
        Collections.sort(phones, phoneCompareByPhoneId);
        Collections.sort(orders, orderCompareByPhoneId);
		
		ModelAndView view = new ModelAndView();
		view.setViewName("Order/orders");
		view.addObject("phones", phones);
		view.addObject("orders", orders);
		
		return view;
	}
	
	/**
	* @return Invoice : Invoice is generated.
	*/
	@RequestMapping("/invoice/{orderId}")
	public ModelAndView invoice(@PathVariable(value="orderId") String orderId,ModelMap model) {
		Integer customerId = (Integer) model.get("customerId");
		if(customerId == null) {
			return new ModelAndView("redirect:/login");
		}
		
		OrderDaoImpl orderDaoImpl = new OrderDaoImpl();
		Order order = orderDaoImpl.getOrder(Integer.parseInt(orderId));
        
        PhoneDaoImpl phoneDaoImpl = new PhoneDaoImpl();
        Phone phone = phoneDaoImpl.getPhone(order.getPhoneId());
        
        CustomerDaoImpl customerDaoImpl = new CustomerDaoImpl();
        Customer customer = customerDaoImpl.getCustomer(order.getCustomerId());
		        
		ModelAndView view = new ModelAndView();
		view.setViewName("invoice");
		view.addObject("phone", phone);
		view.addObject("order", order);
		view.addObject("cutomer", customer);
		view.addObject("contactNo", String.format("%10f", customer.getContactNo()).substring(0,10));
		
		view.addObject("address", customer.getAddress());
		
		return view;
	}
	
}