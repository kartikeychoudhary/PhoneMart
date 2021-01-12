package com.xoriant.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.xoriant.dao.PhoneDaoImpl;
import com.xoriant.modals.Phone;


@Controller
@SessionAttributes("customerId")
public class MainController {
	
	@RequestMapping("/home")
	public ModelAndView add(HttpServletRequest req, HttpServletResponse res, ModelMap model) {
		Integer customerId = (Integer) model.get("customerId");
		System.out.println("\n\n\n\n\n"+customerId);
		if(customerId == null) {
			return new ModelAndView("redirect:/loginForm");
		}
		ModelAndView view = new ModelAndView();
		view.setViewName("home");
		
		System.out.println(model.get("customerId"));
		
		PhoneDaoImpl phoneDao = new PhoneDaoImpl();
		List<Phone> phones = phoneDao.listPhones();
		System.out.print(phones.size());
		
		view.addObject("phones", phones);
		return view;
	}
}
