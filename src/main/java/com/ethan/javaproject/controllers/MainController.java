package com.ethan.javaproject.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;

import com.ethan.javaproject.models.Cart;
import com.ethan.javaproject.models.Product;
import com.ethan.javaproject.services.ProductService;
import com.ethan.javaproject.services.UserService;

@Controller
public class MainController {
	
	@Autowired
	UserService userService;
	@Autowired
	ProductService productService;
	
	
	@GetMapping("/category/{type}")
	public String category(@PathVariable("type") String type, Model model) {
		
		
		List<Product> products = productService.findAllByCategory(type);
		model.addAttribute("products", products);
		
		return "category.jsp";
	}
	
	
	@GetMapping("/category/{type}/{id}")
	public String oneItem(@PathVariable("id") Long id, Model model) {
		
		Product product = productService.findProduct(id);
		model.addAttribute("product", product);
		
		return "showOne.jsp";
	}
	
	@GetMapping("/cart")
	public String cartEmpty() {
		return "cart.jsp";
	}
	
	
	@PutMapping("/cart/{id}")
	public String cart(Model model, HttpSession session, @PathVariable("id") Long id) {
		Cart cart = (Cart) session.getAttribute("cart");
		Product object = productService.findProduct(id);
		cart.getProducts().add(object);
		session.setAttribute("cart", cart);
		return "redirect:/cart";
	}

}
