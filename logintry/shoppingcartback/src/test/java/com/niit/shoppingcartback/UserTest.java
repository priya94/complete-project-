package com.niit.shoppingcartback;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;


import com.niit.shoppingcart.model.User;
import com.niit.shopppingcartdao.UserDAO;

public class UserTest {

	public static void main(String[] args) {

		@SuppressWarnings("resource")
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		UserDAO userDAO = (UserDAO) context.getBean("userDao");
		User user = (User) context.getBean("user");
		
		// Create Operation
		user.setId("CG01");
		user.setPassword("123211");
		user.setIsadmin(true);
	  
		
	    userDAO.saveOrUpdate(user);
		
	    // categoryDAO.delete("CG01"); --> Delete Operation
		
	    //Retrieve Operation
	    if(userDAO.get("CG01")== null)
		{
			System.out.println("Category does not exist");
		}
		else
		{
			System.out.println("Category exists..");
			System.out.println();
		} 

	}

}
