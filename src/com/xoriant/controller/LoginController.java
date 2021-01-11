package com.xoriant.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.xoriant.dao.AuthenticateDaoImpl;
import com.xoriant.dao.CustomerDaoImpl;
import com.xoriant.modals.Address;
import com.xoriant.modals.Customer;
import com.xoriant.modals.Login;

@Controller
public class LoginController {
	
	
	@RequestMapping(value="/loginForm", method=RequestMethod.GET)
	public ModelAndView loginMethod() {
		ModelAndView modelAndView=new ModelAndView("loginForm");
		return modelAndView;
	}
	
	@RequestMapping(value="/customerHome",method=RequestMethod.POST)
	public ModelAndView submitLoginForm(@RequestParam("userName") String userName,@RequestParam("password")String password) {
		ModelAndView modelAndView=new ModelAndView("customerHome");
		Login login=new Login();
		
		login.setUserName(userName);
		login.setPassword(password);
		
//		AuthenticateDaoImpl authenticateDaoImpl=new AuthenticateDaoImpl();
//		System.out.println(authenticateDaoImpl.addLoginDetails(login));
		
		
		AuthenticateDaoImpl authenticateDaoImpl=new AuthenticateDaoImpl();
		Login login2=authenticateDaoImpl.authenticateUser(userName, password);
		System.out.println(login2);

		CustomerDaoImpl customerDaoImpl = new CustomerDaoImpl();
		System.out.println();
		
		Customer customer = customerDaoImpl.fetchCustomer(userName);
		
		modelAndView.addObject("msg", "Hello");
		modelAndView.addObject("login",login);
		
		
		return modelAndView;
	}
	
	@RequestMapping(value="/customerReg", method=RequestMethod.GET)
	public ModelAndView RegistrationMethod() {
		ModelAndView modelAndView=new ModelAndView("customerReg");
		return modelAndView;
	}
	
	
	
	@RequestMapping(value="/customerLogin", method=RequestMethod.POST)
	public ModelAndView submitRegistrationForm(
	        @RequestParam("name") String name,
			@RequestParam("email") String email,
			@RequestParam("street") String street,
			@RequestParam("houseNo") Integer houseNo,
			@RequestParam("city") String city,
			@RequestParam("pincode") double pincode,
			@RequestParam("state") String state,
			@RequestParam("contactNo") double contactNo,
			@RequestParam("password") String password
   ){
		ModelAndView modelAndView=new ModelAndView("loginForm");
		Address address=new Address();
		address.setHouseNo(houseNo);
		address.setStreet(street);
		address.setCity(city);
		address.setState(state);
		address.setPincode(pincode);
		
		Customer customer=new Customer();
		customer.setEmail(email);
		customer.setName(name);
		customer.setPassword(password);
		customer.setContactNo(contactNo);
		customer.setAddress(address);
		
		address.setCustomer(customer);
		//to add customer
		CustomerDaoImpl customerDaoImpl=new CustomerDaoImpl();
		System.out.println(customerDaoImpl.addCustomer(customer));
		
		//to add credential in login table
		Login login=new Login();
		login.setUserName(email);
		login.setPassword(password);
		AuthenticateDaoImpl authenticateDaoImpl=new AuthenticateDaoImpl();
		System.out.println(authenticateDaoImpl.addLoginDetails(login));
		
		
		return modelAndView;
	}

}
