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

@Controller
@SessionAttributes("customerId")
public class AdminController {


	@RequestMapping("/dashboard")
	public ModelAndView add(HttpServletRequest req, HttpServletResponse res) {
		ModelAndView view = new ModelAndView();
		view.setViewName("dashboard");
		
		PhoneDaoImpl phoneDao = new PhoneDaoImpl();
		List<Phone> phones = phoneDao.listPhones();
		System.out.print(phones.size());
		
		view.addObject("phones", phones);
		return view;
	}
	
	@RequestMapping("/adminView")
	public ModelAndView adminView(HttpServletRequest req, HttpServletResponse res) {
		ModelAndView view = new ModelAndView();
		view.setViewName("adminView");
		
		PhoneDaoImpl phoneDao = new PhoneDaoImpl();
		List<Phone> phones = phoneDao.listPhones();
		System.out.print(phones.size());
		
		view.addObject("phones", phones);
		return view;
	}
	
	@RequestMapping("/adminOrder")
	public ModelAndView adminOrderView(HttpServletRequest req, HttpServletResponse res, ModelMap model) {
		Integer customerId = (Integer) model.get("customerId");
		if(customerId == null) {
			return new ModelAndView("redirect:/loginForm");
		}
		
		OrderDaoImpl orderDaoImpl = new OrderDaoImpl();
		List<Order> orders = orderDaoImpl.fetchAllOrders();
        
		ModelAndView view = new ModelAndView();
		view.setViewName("adminOrder");
		view.addObject("orders", orders);

		
		return view;
	}
	
	@RequestMapping("/adminOrderDetails/{orderId}/{customerId}/{phoneId}")
	public ModelAndView adminOrderDetailsView(@PathVariable(value="orderId") String orderId, @PathVariable(value="customerId") String customerId, @PathVariable(value="phoneId") String phoneId,HttpServletRequest req, HttpServletResponse res, ModelMap model) {
		Integer adminId = (Integer) model.get("customerId");
		if(adminId == null) {
			return new ModelAndView("redirect:/loginForm");
		}
		System.out.println(orderId + " " + customerId + " " + phoneId );
		
		OrderDaoImpl orderDaoImpl = new OrderDaoImpl();
		Order order = orderDaoImpl.getOrder(Integer.parseInt(orderId));
		
		PhoneDaoImpl phoneDaoImpl = new PhoneDaoImpl();
		Phone phone = phoneDaoImpl.getPhone(Integer.parseInt(phoneId));
		
		CustomerDaoImpl customerDaoImpl = new CustomerDaoImpl();
		Customer customer = customerDaoImpl.getCustomer(Integer.parseInt(customerId));
//		List<Order> orders = orderDaoImpl.fetchAllOrders();
//        
		ModelAndView view = new ModelAndView();
		view.setViewName("adminOrderDetails");

		view.addObject("order", order);
		view.addObject("phone", phone);
		view.addObject("customer", customer);

		
		return view;
	}
	
	@RequestMapping(value="/updateOrderDetails/{orderId}/{customerId}/{phoneId}", method=RequestMethod.POST)
	public ModelAndView adminUpdateOrderDetailsView(@PathVariable(value="orderId") String orderId, @PathVariable(value="customerId") String customerId, @PathVariable(value="phoneId") String phoneId,HttpServletRequest req, HttpServletResponse res, ModelMap model) {
		Integer adminId = (Integer) model.get("customerId");
		if(adminId == null) {
			return new ModelAndView("redirect:/loginForm");
		}
		// System.out.println(orderId + " " + customerId + " " + phoneId );
		
		OrderDaoImpl orderDaoImpl = new OrderDaoImpl();
		Order order = orderDaoImpl.getOrder(Integer.parseInt(orderId));
		order.setStatus(req.getParameter("status"));
		orderDaoImpl.updateOrder(order);

		
		return new ModelAndView("redirect:/adminOrderDetails/"+ orderId + "/" + customerId + "/" + phoneId);
	}
	
	
}
