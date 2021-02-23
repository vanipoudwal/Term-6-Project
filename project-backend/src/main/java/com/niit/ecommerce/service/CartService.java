package com.niit.ecommerce.service;

import java.util.List;
import com.niit.ecommerce.model.Cart;

public interface CartService
{
	public void addToCart(Cart cart);
	public void deleteFromCart(int cartId);
	public Cart getFromCart(int cartId);
}