package com.xoriant.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.xoriant.dao.PhoneDaoImpl;
import com.xoriant.modals.Phone;

/**
* Main Controller which handles URL End-Points 
* 			GET			/home 
* 			GET			/searchByBrand/{brand}  
* @see      Views Rendered as per Url
*/

@Controller
@SessionAttributes("customerId")
public class MainController {
	
	
	/**
	* @return Customer Home : All Phones are displayed here.
	*/
	@RequestMapping("/home")
	public ModelAndView add(HttpServletRequest req, HttpServletResponse res, ModelMap model) {
		Integer customerId = (Integer) model.get("customerId");
		if(customerId == null) {
			return new ModelAndView("redirect:/login");
		}
		ModelAndView view = new ModelAndView();
		view.setViewName("Customer/home");
				
		PhoneDaoImpl phoneDao = new PhoneDaoImpl();
		List<Phone> phones = phoneDao.listPhones();
		
		view.addObject("phones", phones);
		return view;
	}
	
	/**
	* @param	brand	
	* @return 	SearchByBrand View : Phones are displayed as per Brands.
	*/
	@RequestMapping("/searchByBrand/{brand}")
	public ModelAndView searchByBrand(@PathVariable(name="brand") String brand,HttpServletRequest req, HttpServletResponse res, ModelMap model) {
		Integer customerId = (Integer) model.get("customerId");
		if(customerId == null) {
			return new ModelAndView("redirect:/login");
		}
		ModelAndView view = new ModelAndView();
		view.setViewName("Customer/home_search");
		
		PhoneDaoImpl phoneDao = new PhoneDaoImpl();
		List<Phone> phones = phoneDao.listPhonesByBrand(brand);
		
		view.addObject("phones", phones);
		return view;
	}
}
