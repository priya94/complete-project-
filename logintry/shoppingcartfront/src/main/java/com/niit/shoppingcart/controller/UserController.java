package com.niit.shoppingcart.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.model.User;
import com.niit.shopppingcartdao.UserDAO;

@Controller
public class UserController {

	@Autowired
	UserDAO userDAO;
	@Autowired
	User user;

	@RequestMapping("/login")
	public ModelAndView isValidUser(@RequestParam(value = "name") String name,
			@RequestParam(value = "password") String password, HttpSession session) {

		ModelAndView mv = new ModelAndView("home");
		boolean isValidUser = userDAO.isValidUser(name, password, false);

		if (isValidUser == true) {

			user = userDAO.get(name);
			session.setAttribute("loggedInUser", user.getName());
			System.out.println(user.getName() + "logged in");

			// if (userDetails.getAdmin() == 1) {
			// mv.addObject("isAdmin", "true");
			//
			// } else {
			// mv.addObject("isAdmin", "false");
			// cart = cartDAO.get(userID);
			// mv.addObject("cart", cart);
			// List<Cart> cartList = cartDAO.list();
			// mv.addObject("cartList", cartList);
			// mv.addObject("cartSize", cartList.size());
			// }

		} else {

			mv.addObject("invalidCredentials", "true");
			mv.addObject("errorMessage", "Invalid Credentials");

		}

		return mv;
	}

}
