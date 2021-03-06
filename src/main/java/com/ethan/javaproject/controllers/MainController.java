package com.ethan.javaproject.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ethan.javaproject.models.Cart;
import com.ethan.javaproject.models.Checkout;
import com.ethan.javaproject.models.Product;
import com.ethan.javaproject.services.ProductService;
import com.ethan.javaproject.services.UserService;

@Controller
public class MainController {

	@Autowired
	UserService userService;
	@Autowired
	ProductService productService;

//	Products by category
	@GetMapping("/category/{type}")
	public String category(@PathVariable("type") String type, Model model) {

		List<Product> products = productService.findAllByCategory(type);
		model.addAttribute("products", products);

		return "category.jsp";
	}

//	Single product
	@GetMapping("/category/{type}/{id}")
	public String oneItem(@PathVariable("id") Long id, Model model) {

		Product product = productService.findProduct(id);
		model.addAttribute("product", product);

		return "showOne.jsp";
	}

//	Products by search button
	@PostMapping("/searchRequest")
	public String Search(@RequestParam(value = "search") String search) {
		return "redirect:/searchResults/" + search;
	}

//	Products by search results
	@GetMapping("/searchResults/{res}")
	public String searchResults(@PathVariable("res") String res, Model model) {
		List<Product> products = productService.findAllByNameContaining(res);
		model.addAttribute("products", products);
		return "category.jsp";
	}

//	about page
	@GetMapping("/about")
	public String about() {
		return "about.jsp";
	}

//	contact page
	@GetMapping("/contact")
	public String contact() {
		return "contact.jsp";
	}

//	

//	User session shopping cart
	@GetMapping("/cart")
	public String cart() {
		return "cart.jsp";
	}

//	Button to add items to cart
	@PostMapping("/addtocart/{id}")
	public String addtocart(Model model, HttpSession session, @PathVariable("id") Long id, @RequestParam("quantity") int qty) {
		Cart cart = (Cart) session.getAttribute("cart");
		Product object = productService.findProduct(id);
		
		for (int i = 0; i < qty; i++) {
			cart.getProducts().add(object);
		}
		session.setAttribute("cart", cart);
		return "redirect:/category/"+ object.getCategory() + "/" + object.getId();
	}
	
	@PostMapping("/removefromcart/{idx}")
	public String removefromcart(Model model, HttpSession session, @PathVariable("idx") int idx) {
		Cart cart = (Cart) session.getAttribute("cart");
		cart.getProducts().remove(idx);
		session.setAttribute("cart", cart);
		return "redirect:/cart";
	}
	
	

	@GetMapping("/checkout")
	public String checkout(@ModelAttribute("checkout") Checkout checkout, HttpSession session) {
		Cart cart = (Cart) session.getAttribute("cart");
		if(cart.getProducts().size() < 1) {
			return "redirect:/cart";
		}
		return "checkout.jsp";
	}

	@PostMapping("/checkoutProcess")
	public String checkoutProcess(@Valid @ModelAttribute("checkout") Checkout checkout, BindingResult result, HttpSession session) {
		if (result.hasErrors()) {
			System.out.println(result);
			return "checkout.jsp";
		} else {
			Cart cart = (Cart) session.getAttribute("cart");
			cart.getProducts().clear();
			session.setAttribute("cart", cart);
			return "redirect:/orderComplete";
		}

	}
	
	@GetMapping("/orderComplete")
	public String orderComplete() {
		return "orderComplete.jsp";
	}


}
