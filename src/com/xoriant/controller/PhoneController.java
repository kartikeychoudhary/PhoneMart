package com.xoriant.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.xoriant.dao.PhoneDaoImpl;
import com.xoriant.modals.Features;
import com.xoriant.modals.Phone;

/**
* Phone Controller which handles URL End-Points 
* 
* 			GET			/addPhone
* 			POST		/addPhone
* 			GET 		/cancleOrderAdmin/{orderId} 
* 			GET 		/customerOrders 
* 			GET 		/invoice/{orderId}
* 
* @see      Views Rendered as per Url
*/


@Controller
@SessionAttributes("customerId")
public class PhoneController {
	/**
	* @return addPhone : Phone Form to add.
	*/
	@RequestMapping("/addPhone")
	public ModelAndView addPhone(ModelMap mapModel) {
		
		Integer customerId = (Integer) mapModel.get("customerId");
		if(customerId == null) {
			return new ModelAndView("redirect:/login");
		}
		
		ModelAndView view = new ModelAndView();
		view.setViewName("PhoneCRUD/addPhone");		
		return view;
	}
	
	/**
	* @return addPhone : Phone is added by POST request.
	*/
	@RequestMapping(value="/addPhone", method=RequestMethod.POST)
	public ModelAndView add(HttpServletRequest req, HttpServletResponse res,ModelMap mapModel) {
		
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
		
		Integer customerId = (Integer) mapModel.get("customerId");
		if(customerId == null) {
			return new ModelAndView("redirect:/login");
		}
		
		Features features = new Features(color, dimensions, battery, selfieCamera, mainCamera, processor, memory, os);
		Phone phone = new Phone(phoneName, model, brand, cost, imgUrl, features);
		PhoneDaoImpl phoneDAO = new PhoneDaoImpl();
		phoneDAO.addPhone(phone);
		
		return new ModelAndView("redirect:/addPhone");
	}
	
	/**
	* @param phoneId
	* @return Phone detailed view : All phone details are displayed by PhoneId.
	*/
	@RequestMapping("/viewPhone/{phoneId}")
	public ModelAndView phoneView(@PathVariable(value="phoneId") String phoneId,ModelMap mapModel) {
		
		Integer customerId = (Integer) mapModel.get("customerId");
		if(customerId == null) {
			return new ModelAndView("redirect:/login");
		}
		
		System.out.println(phoneId);
		ModelAndView view = new ModelAndView();
		PhoneDaoImpl phoneDAO = new PhoneDaoImpl();
		Phone phone = phoneDAO.getPhone(Integer.parseInt(phoneId));
		System.out.println(phone.toString());
		view.setViewName("PhoneCRUD/viewPhone");
		view.addObject("phone", phone);
		
		return view;
	}
	
	/**
	* @return Edit Phone : Edit Form is displayed.
	*/
	@RequestMapping("/edit/{phoneId}")
	public ModelAndView phoneEdit(@PathVariable(value="phoneId") String phoneId,ModelMap mapModel) {
		
		Integer customerId = (Integer) mapModel.get("customerId");
		if(customerId == null) {
			return new ModelAndView("redirect:/login");
		}
		
		System.out.println(phoneId);
		ModelAndView view = new ModelAndView();
		PhoneDaoImpl phoneDAO = new PhoneDaoImpl();
		Phone phone = phoneDAO.getPhone(1);
		System.out.println(phone.toString());
		view.setViewName("PhoneCRUD/editPhone");
		view.addObject("phone", phone);
		
		return view;
	}
	
	/**
	* @return Update Phone : Details for the phone is updated by phoneId.
	*/
	@RequestMapping("/update/{phoneId}")
	public ModelAndView phoneUpdate(@PathVariable(value="phoneId") String phoneId,HttpServletRequest req,ModelMap mapModel) {		
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
		
		Integer customerId = (Integer) mapModel.get("customerId");
		if(customerId == null) {
			return new ModelAndView("redirect:/login");
		}
		
		Features features = new Features(color, dimensions, battery, selfieCamera, mainCamera, processor, memory, os);
		Phone phone = new Phone(phoneName, model, brand, cost, imgUrl, features);
		PhoneDaoImpl phoneDAO = new PhoneDaoImpl();
		phoneDAO.updatePhone(Integer.parseInt(phoneId), phone);
		
		return new ModelAndView("redirect:/edit/"+phoneId);
	}

}
