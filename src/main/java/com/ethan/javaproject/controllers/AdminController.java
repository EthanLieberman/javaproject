package com.ethan.javaproject.controllers;

import java.util.List;

import javax.servlet.annotation.HttpConstraint;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.ethan.javaproject.models.Product;
import com.ethan.javaproject.models.User;
import com.ethan.javaproject.services.ProductService;
import com.ethan.javaproject.services.UserService;

@Controller
public class AdminController {
	
	@Autowired
	UserService userService;
	@Autowired
	ProductService productService;
	
	@GetMapping("/adminportal")
	public String adminPortal(Model model, HttpSession session) {
		if (session.getAttribute("userId") == null) {
			return "redirect:/error.404.jsp";
		}
		Long id = (Long) session.getAttribute("userId");
		User user = userService.findOne(id);
		if (!user.getAdmin()) {
			return "redirect:/";
					}
		
		else {
			List<Product> products = productService.allProducts();
			model.addAttribute("products", products);
			return "admin/adminportal.jsp";
		}
		
	}
	
	
	
//	---------Add ----------
	@GetMapping("/productAdd")
	public String productAdd(@ModelAttribute("product") Product product, HttpSession session) {
		if (session.getAttribute("userId") == null) {
			return "redirect:/error.404.jsp";
		}
		Long id = (Long) session.getAttribute("userId");
		User user = userService.findOne(id);
		if (!user.getAdmin()) {
			return "redirect:/";
					}
		
		return "admin/addProduct.jsp";
	}

	@PostMapping("/product/create")
	public String ProductCreate(@Valid
							@ModelAttribute("product") Product product,
							BindingResult result, HttpSession session) {
		if (session.getAttribute("userId") == null) {
			return "redirect:/error.404.jsp";
		}
		Long id = (Long) session.getAttribute("userId");
		User user = userService.findOne(id);
		if (!user.getAdmin()) {
			return "redirect:/";
					}
		
		if(result.hasErrors()) {
            return "admin/addProduct.jsp";
        }
		else {
			productService.createProduct(product);
			return "redirect:/adminportal";
		}
	}
	
	
	
	
//	------Update-----------
	@GetMapping("/update/products/{id}")
	public String adminUpdate(@ModelAttribute("product") Product product, @PathVariable("id") Long id, Model model, HttpSession session) {
		if (session.getAttribute("userId") == null) {
			return "redirect:/error.404.jsp";
		}
		Long userid = (Long) session.getAttribute("userId");
		User user = userService.findOne(userid);
		if (!user.getAdmin()) {
			return "redirect:/";
					}
		
		
		Product product1 = productService.findProduct(id);
		model.addAttribute("product", product1);
		return "admin/updateProduct.jsp";
	}
	
	
	@PutMapping("/update/products/{id}")
	public String updateProduct(@Valid @ModelAttribute("product") Product product, BindingResult result, @PathVariable("id") Long id, Model model, HttpSession session) {
		if (session.getAttribute("userId") == null) {
			return "redirect:/error.404.jsp";
		}
		Long userid = (Long) session.getAttribute("userId");
		User user = userService.findOne(userid);
		if (!user.getAdmin()) {
			return "redirect:/";
					}
		
		if(result.hasErrors()) {
			Product product1 = productService.findProduct(id);
			model.addAttribute("product", product1);
            return "admin/updateProduct.jsp";
        }
		else {
			product.setId(id);
			productService.updateProduct(product);
			return "redirect:/adminportal";
		}
	}
	
//	--------Delete---------
	@DeleteMapping("/delete/products/{id}")
	public String adminDelete(@PathVariable("id") Long id, HttpSession session) {
		if (session.getAttribute("userId") == null) {
			return "redirect:/error.404.jsp";
		}
		Long userid = (Long) session.getAttribute("userId");
		User user = userService.findOne(userid);
		if (!user.getAdmin()) {
			return "redirect:/";
					}
		
		productService.delete(id);
		return "redirect:/adminportal";
	}

// ------Easter--------
	@GetMapping("/pandafy")
	public String pandafy(HttpSession session) {
		Boolean panda = (Boolean) session.getAttribute("panda");
		if(!panda) {
			session.setAttribute("panda", true);
		} else session.setAttribute("panda", false);
		
		return "redirect:/";
	}
	
}