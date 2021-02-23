package com.niit.ecommerce.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

public class Cart implements Serializable
{
	private static final long serialVerisonUID = -7909006847415695459L;
	@Id
	@Column
	@GeneratedValue
	private int orderId;
	private int quantity;
	private String username;
	private String address;
		
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
		
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
		
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
}