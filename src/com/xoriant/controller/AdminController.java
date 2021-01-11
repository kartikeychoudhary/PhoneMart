package com.xoriant.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.xoriant.dao.PhoneDaoImpl;
import com.xoriant.modals.Phone;

@Controller
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
}
