package com.ethan.javaproject.models;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class Checkout {
	
	@NotEmpty(message = "required")
	private String firstName;
	
	@NotEmpty(message = "required")
	private String lastName;
	
	@NotEmpty(message = "required")
	private String email;
	
	@NotEmpty(message = "required")
	private String phone;
	
	@NotEmpty(message = "required")
	private String address;
	
	@NotEmpty(message = "required")
	private String city;
	
	@NotEmpty(message = "required")
	private String state;
	
	@NotNull(message = "required")
	@Size(min = 16, max = 16, message = "Must be a valid 16 digit number")
	private String cardnum;
	
	@NotEmpty(message = "required")
	private String cvv;
	
	@NotEmpty(message = "required")
	private String expirationdate;
	
	
	public Checkout() {}


	public String getFirstName() {
		return firstName;
	}


	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}


	public String getLastName() {
		return lastName;
	}


	public void setLastName(String lastName) {
		this.lastName = lastName;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getCity() {
		return city;
	}


	public void setCity(String city) {
		this.city = city;
	}


	public String getState() {
		return state;
	}


	public void setState(String state) {
		this.state = state;
	}


	public String getCardnum() {
		return cardnum;
	}


	public void setCardnum(String cardnum) {
		this.cardnum = cardnum;
	}


	public String getCvv() {
		return cvv;
	}


	public void setCvv(String cvv) {
		this.cvv = cvv;
	}


	public String getExpirationdate() {
		return expirationdate;
	}


	public void setExpirationdate(String expirationdate) {
		this.expirationdate = expirationdate;
	}
	
	

}
