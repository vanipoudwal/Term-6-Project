package com.niit.ecommerce.dao;

import com.niit.ecommerce.model.Cart;

public interface CartDao 
{
	public void addToCart(Cart cart);
	public void deleteFromCart(int cartId);
	public Cart getFromCart(int cartId);
}