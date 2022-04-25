package com.ethan.javaproject.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ethan.javaproject.models.Product;
import com.ethan.javaproject.repositories.ProductRepository;

@Service
public class ProductService {
	
	@Autowired
	ProductRepository productRepository;
	
	// returns all the products
    public List<Product> allProducts() {
        return productRepository.findAll();
    }
    
    // returns all products in category
    public List<Product> findAllByCategory(String category) {
		return productRepository.findAllByCategory(category);
	}
    
    
    // creates a product
    public Product createProduct(Product p) {	//takes datatype and object passed from controller
        return productRepository.save(p);	//sends to repository
    }
    // retrieves a product
    public Product findProduct(Long id) {
        Optional<Product> optionalProduct = productRepository.findById(id);
        if(optionalProduct.isPresent()) {
            return optionalProduct.get();
        } else {
            return null;
        }
    }

    //updates product
	public Product updateProduct(Product product) {		// overwrites the entry in database
		return productRepository.save(product);
	}
    
    //delete a product
	public void delete(Long id) {
		productRepository.deleteById(id);
	}

}
