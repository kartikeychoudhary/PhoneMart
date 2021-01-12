package com.xoriant.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.xoriant.dao.CartDaoImpl;
import com.xoriant.dao.CustomerDaoImpl;
import com.xoriant.dao.OrderDaoImpl;
import com.xoriant.dao.PhoneDaoImpl;
import com.xoriant.modals.Cart;
import com.xoriant.modals.Customer;
import com.xoriant.modals.Order;
import com.xoriant.modals.Phone;

@Controller
@SessionAttributes("customerId")
public class OrderController {

	@RequestMapping("/order/{phoneId}")
	public ModelAndView createOrder(@PathVariable(value="phoneId") String phoneId,ModelMap model) {
		Integer customerId = (Integer) model.get("customerId");
		if(customerId == null) {
			return new ModelAndView("redirect:/loginForm");
		}
		
		OrderDaoImpl orderDaoImpl = new OrderDaoImpl();
		
		String cost = new PhoneDaoImpl().getPhone(Integer.parseInt(phoneId)).getCost();
		double price = Double.parseDouble(cost);
		
		System.out.println();
//		List<Integer> phoneIdList = new ArrayList<>();
//		phoneIdList.add();
		
		Order order = new Order(customerId, Integer.parseInt(phoneId), "Ordered", price);
		orderDaoImpl.addOrder(order);
		
		return new ModelAndView("redirect:/home");
	}
	
	@RequestMapping("/cart/{phoneId}")
	public ModelAndView createCart(@PathVariable(value="phoneId") String phoneId,ModelMap model) {
		Integer customerId = (Integer) model.get("customerId");
		if(customerId == null) {
			return new ModelAndView("redirect:/loginForm");
		}
		CartDaoImpl cartDaoImpl = new CartDaoImpl();
		Cart cart = new Cart(customerId, Integer.parseInt(phoneId));
		
		cartDaoImpl.addToCart(cart);
//		List<Integer> phoneIdList = new ArrayList<>();
//		phoneIdList.add();
		
		return new ModelAndView("redirect:/home");
	}
	
	@RequestMapping("/customerCart")
	public ModelAndView customerCart(ModelMap model) {
		Integer customerId = (Integer) model.get("customerId");
		if(customerId == null) {
			return new ModelAndView("redirect:/loginForm");
		}
		CartDaoImpl cartDaoImpl = new CartDaoImpl();
		List<Phone> phones = cartDaoImpl.fetchPhones(customerId);
		
		System.out.println("\n\n Customer Cart");
		System.out.println(phones);
		
		ModelAndView view = new ModelAndView();
		view.setViewName("cart");
		view.addObject("phones", phones);
		
		return view;
	}
	
	@RequestMapping("/customerOrders")
	public ModelAndView customerOrders(ModelMap model) {
		Integer customerId = (Integer) model.get("customerId");
		if(customerId == null) {
			return new ModelAndView("redirect:/loginForm");
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
        
        
		
		System.out.println("\n\n Customer Orders");
		System.out.println(phones);
		System.out.println(orders);
		
		ModelAndView view = new ModelAndView();
		view.setViewName("orders");
		view.addObject("phones", phones);
		view.addObject("orders", orders);
		
		return view;
	}
	
	
	@RequestMapping("/invoice/{orderId}")
	public ModelAndView invoice(@PathVariable(value="orderId") String orderId,ModelMap model) {
		Integer customerId = (Integer) model.get("customerId");
		if(customerId == null) {
			return new ModelAndView("redirect:/loginForm");
		}
		
		OrderDaoImpl orderDaoImpl = new OrderDaoImpl();
		Order order = orderDaoImpl.getOrder(Integer.parseInt(orderId));
        
        PhoneDaoImpl phoneDaoImpl = new PhoneDaoImpl();
        Phone phone = phoneDaoImpl.getPhone(order.getPhoneId());
        
        CustomerDaoImpl customerDaoImpl = new CustomerDaoImpl();
        Customer customer = customerDaoImpl.getCustomer(customerId);
		
//		System.out.println(order);
//		System.out.println(customer);
//		System.out.println(phone);
		
		ModelAndView view = new ModelAndView();
		 view.setViewName("invoice");
		view.addObject("phone", phone);
		view.addObject("order", order);
		view.addObject("cutomer", customer);
		view.addObject("address", customer.getAddress());
		
		return view;
	}
	
}