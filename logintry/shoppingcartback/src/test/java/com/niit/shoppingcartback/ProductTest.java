package com.niit.shoppingcartback;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.model.Product;
import com.niit.shopppingcartdao.ProductDAO;

public class ProductTest {
	public static void main(String[] args) {

		@SuppressWarnings("resource")
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		ProductDAO productDAO = (ProductDAO) context.getBean("productDAO");
		Product product = (Product) context.getBean("product");
		
		// Create Operation
		product.setId("CG01");
		product.setName("htc01");
		product.setDescription("CGDesc01");
		product.setPrice("200000");
	    productDAO.saveOrUpdate(product);
		
	    // categoryDAO.delete("CG01"); --> Delete Operation
		
	    //Retrieve Operation
	    if(productDAO.get("CG01")== null)
		{
			System.out.println("product  does not exist");
		}
		else
		{
			System.out.println("product exists..");
			System.out.println();
		} 

	}


}
