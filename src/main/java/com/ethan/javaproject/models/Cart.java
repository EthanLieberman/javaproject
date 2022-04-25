package com.ethan.javaproject.models;

import java.util.ArrayList;


public class Cart {
	
	
	private ArrayList<Product> products = new ArrayList<Product>();
	
	public Cart() {}

	public ArrayList<Product> getProducts() {
		return products;
	}

	public void setProducts(ArrayList<Product> products) {
		this.products = products;
	}

}
