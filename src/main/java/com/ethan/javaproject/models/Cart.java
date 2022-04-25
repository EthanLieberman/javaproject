package com.ethan.javaproject.models;

import java.util.List;


public class Cart {
	
	
	private List<Product> products;
	
	public Cart() {}

	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}

	
}
