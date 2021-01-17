package com.xoriant.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.xoriant.dao.CartDaoImpl;
import com.xoriant.dao.OrderDaoImpl;
import com.xoriant.dao.PhoneDaoImpl;
import com.xoriant.modals.Cart;
import com.xoriant.modals.Order;
import com.xoriant.modals.Phone;

/**
* Cart Controller which handles URL End-Points 
* 
* 			GET			/cart/{phoneId}
* 			GET			/buyfromcart/{cartId}/{phoneId}
* 			GET 		/cancleOrderAdmin/{orderId} 
* 			GET 		/customerCart 
* 
* @see      Views Rendered as per Url
*/

@Controller
@SessionAttributes("customerId")
public class CartController {
	
	/**
	* @return Cart : Order is added to Cart by PhoneId.
	*/
	@RequestMapping("/cart/{phoneId}")
	public ModelAndView createCart(@PathVariable(value="phoneId") String phoneId,ModelMap model) {
		Integer customerId = (Integer) model.get("customerId");
		if(customerId == null) {
			return new ModelAndView("redirect:/login");
		}
		CartDaoImpl cartDaoImpl = new CartDaoImpl();
		Cart cart = new Cart(customerId, Integer.parseInt(phoneId));
		
		cartDaoImpl.addToCart(cart);
		
		return new ModelAndView("redirect:/home");
	}
	
	/**
	* @return BuyFromCart : Order is bought from cart.
	*/
	@RequestMapping("/buyfromcart/{cartId}/{phoneId}")
	public ModelAndView createCartOrder(@PathVariable(value="cartId") String cartId,@PathVariable(value="phoneId") String phoneId,ModelMap model) {
		Integer customerId = (Integer) model.get("customerId");
		if(customerId == null) {
			return new ModelAndView("redirect:/login");
		}
		
		CartDaoImpl cartDaoImpl = new CartDaoImpl();
		cartDaoImpl.removeFromCart(Integer.parseInt(cartId));
		
		OrderDaoImpl orderDaoImpl = new OrderDaoImpl();
				
		String cost = new PhoneDaoImpl().getPhone(Integer.parseInt(phoneId)).getCost();
		double price = Double.parseDouble(cost);
		
		
		Order order = new Order(customerId, Integer.parseInt(phoneId), "Ordered", price);
		orderDaoImpl.addOrder(order);
		
		return new ModelAndView("redirect:/customerCart");
	}
	
	/**
	* @return Customer Cart : orders which are added in cart are displayed.
	*/
	@RequestMapping("/customerCart")
	public ModelAndView customerCart(ModelMap model) {
		Integer customerId = (Integer) model.get("customerId");
		if(customerId == null) {
			return new ModelAndView("redirect:/login");
		}
		CartDaoImpl cartDaoImpl = new CartDaoImpl();

		List<Cart> cartItems = cartDaoImpl.fetchCartItems(customerId);
		List<Phone> phones = new ArrayList<>();
		
		PhoneDaoImpl phoneDaoImpl = new PhoneDaoImpl();
		
		for (Cart item : cartItems) {
			phones.add(phoneDaoImpl.getPhone(item.getPhoneId()));
		}
		
		ModelAndView view = new ModelAndView();
		view.setViewName("Cart/cart");
		view.addObject("phones", phones);
		view.addObject("cartItems", cartItems);
		
		return view;
	}

}
