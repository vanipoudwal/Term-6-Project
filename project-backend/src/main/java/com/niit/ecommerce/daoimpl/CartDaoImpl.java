package com.niit.ecommerce.daoimpl;

import javax.persistence.PersistenceContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.niit.ecommerce.dao.CartDao;
import com.niit.ecommerce.model.Cart;
import org.hibernate.SessionFactory;

@Repository
@PersistenceContext
public class CartDaoImpl implements CartDao
{
	@Autowired
	private SessionFactory factory;
	
	@Override
	public void addToCart(Cart cart) 
	{
		factory.getCurrentSession().save(cart);
	}

	@Override
	public void deleteFromCart(int cartId) 
	{
		factory.getCurrentSession().delete(cartId);
	}

	@Override
	public Cart getFromCart(int cartId) 
	{
		return (Cart) factory.getCurrentSession().get("Cart.class", cartId);
	}
}