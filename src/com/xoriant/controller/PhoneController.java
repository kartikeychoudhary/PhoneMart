package com.xoriant.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.xoriant.dao.PhoneDaoImpl;
import com.xoriant.modals.Features;
import com.xoriant.modals.Phone;

@Controller
public class PhoneController {
	
	@RequestMapping("/addPhone")
	public ModelAndView addPhone() {
		ModelAndView view = new ModelAndView();
		view.setViewName("addPhone");		
		return view;
	}
	
	@RequestMapping("/add")
	public ModelAndView add(HttpServletRequest req, HttpServletResponse res) {
		
		String phoneName = req.getParameter("phoneName");
		String brand = req.getParameter("brand");
		String model = req.getParameter("model");
		String cost = req.getParameter("cost");
		String imgUrl = req.getParameter("imgUrl");
		String color = req.getParameter("color");
		String dimensions = req.getParameter("dimensions");
		String battery = req.getParameter("battery");
		String selfieCamera = req.getParameter("selfieCamera");
		String mainCamera = req.getParameter("mainCamera");
		String processor = req.getParameter("processor");
		String memory = req.getParameter("memory");
		String os = req.getParameter("os");
		
		
		Features features = new Features(color, dimensions, battery, selfieCamera, mainCamera, processor, memory, os);
		Phone phone = new Phone(phoneName, model, brand, cost, imgUrl, features);
		PhoneDaoImpl phoneDAO = new PhoneDaoImpl();
		phoneDAO.addPhone(phone);
		
//		System.out.println(phoneName + " " + brand + " " + model);
//		ModelAndView view = new ModelAndView();
//		view.setViewName("addPhone");
//		view.addObject("phone", phone);
		
		return new ModelAndView("redirect:/addPhone");
	}
	
	@RequestMapping("/phone/{phoneId}")
	public ModelAndView phoneView(@PathVariable(value="phoneId") String phoneId) {
		System.out.println(phoneId);
		ModelAndView view = new ModelAndView();
		PhoneDaoImpl phoneDAO = new PhoneDaoImpl();
		Phone phone = phoneDAO.getPhone(Integer.parseInt(phoneId));
		System.out.println(phone.toString());
		view.setViewName("viewPhone");
		view.addObject("phone", phone);
		
		return view;
	}
	
	@RequestMapping("/edit/{phoneId}")
	public ModelAndView phoneEdit(@PathVariable(value="phoneId") String phoneId) {
		System.out.println(phoneId);
		ModelAndView view = new ModelAndView();
		PhoneDaoImpl phoneDAO = new PhoneDaoImpl();
		Phone phone = phoneDAO.getPhone(1);
		System.out.println(phone.toString());
		view.setViewName("editPhone");
		view.addObject("phone", phone);
		
		return view;
	}
	
	@RequestMapping("/update/{phoneId}")
	public ModelAndView phoneUpdate(@PathVariable(value="phoneId") String phoneId,HttpServletRequest req) {		
		String phoneName = req.getParameter("phoneName");
		String brand = req.getParameter("brand");
		String model = req.getParameter("model");
		String cost = req.getParameter("cost");
		String imgUrl = req.getParameter("imgUrl");
		String color = req.getParameter("color");
		String dimensions = req.getParameter("dimensions");
		String battery = req.getParameter("battery");
		String selfieCamera = req.getParameter("selfieCamera");
		String mainCamera = req.getParameter("mainCamera");
		String processor = req.getParameter("processor");
		String memory = req.getParameter("memory");
		String os = req.getParameter("os");
		
		Features features = new Features(color, dimensions, battery, selfieCamera, mainCamera, processor, memory, os);
		Phone phone = new Phone(phoneName, model, brand, cost, imgUrl, features);
		PhoneDaoImpl phoneDAO = new PhoneDaoImpl();
		phoneDAO.updatePhone(Integer.parseInt(phoneId), phone);
		
		return new ModelAndView("redirect:/edit/"+phoneId);
	}

}
