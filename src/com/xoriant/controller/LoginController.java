package com.xoriant.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.xoriant.dao.AuthenticateDaoImpl;
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
		
		modelAndView.addObject("msg", "Hello");
		modelAndView.addObject("login",login);
		
		
		return modelAndView;
	}

}
