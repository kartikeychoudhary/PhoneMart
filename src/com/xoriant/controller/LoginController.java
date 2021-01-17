package com.xoriant.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
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


/**
* Login Controller which handles URL End-Points 
* 			POST GET	/login  
* 			GET			/signUp
* 			POST 		/customerHome  
* @see      Views Rendered as per Url
*/

@Controller
@SessionAttributes("customerId")
public class LoginController {
	
	/**
	* @return View Login 
	*/
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public ModelAndView loginMethod() {
		ModelAndView modelAndView=new ModelAndView("Login/login");
		return modelAndView;
	}
	
	/**
	*
	* @param  username  
	* @param  password 
	* @return      to home if Authentication succeed else return to login
	*/
	@RequestMapping(value="/customerHome",method=RequestMethod.POST)
	public ModelAndView submitLoginForm(@RequestParam("userName") String userName,@RequestParam("password")String password, ModelMap model) {
		
		AuthenticateDaoImpl authenticateDaoImpl=new AuthenticateDaoImpl();
		Login loginCheck = authenticateDaoImpl.authenticateUser(userName, password);
		
		if(loginCheck == null) {
			return new ModelAndView("redirect:/login");
		}

		CustomerDaoImpl customerDaoImpl = new CustomerDaoImpl();
		
		Customer customer = customerDaoImpl.fetchCustomer(userName);
		model.addAttribute("customerId", customer.getCustId());
		
		if(customer.getCustId() == authenticateDaoImpl.getAdminId()) {
			return new ModelAndView("redirect:/adminPhoneView");
		}
		
		return new ModelAndView("redirect:/home");
	}
	
	
	/**
	* @return  signUp page
	*/
	@RequestMapping(value="/signUp", method=RequestMethod.GET)
	public ModelAndView RegistrationMethod() {
		ModelAndView modelAndView=new ModelAndView("Login/signUp");
		return modelAndView;
	}
	
	/**
	* Form Submits 
	* @return      to login page
	*/
	@RequestMapping(value="/login",  method=RequestMethod.POST)
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
		ModelAndView modelAndView=new ModelAndView("Login/login");
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
		CustomerDaoImpl customerDaoImpl = new CustomerDaoImpl();
		
		customerDaoImpl.addCustomer(customer);
		
		Login login=new Login();
		login.setUserName(email);
		login.setPassword(password);
		
		AuthenticateDaoImpl authenticateDaoImpl=new AuthenticateDaoImpl();
		authenticateDaoImpl.addLoginDetails(login);
		
		return modelAndView;
	}

}
