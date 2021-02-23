package com.niit.ecommerce.daoimpl;

import com.niit.ecommerce.dao.*;
import com.niit.ecommerce.model.*;
import java.util.List;
import javax.transaction.Transactional;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository(value = "itemDao")
@Transactional
public class ItemDaoImpl implements ItemDao 
{
	@Autowired
	SessionFactory SessionFactory;

	@Override
	public boolean addItem(Item Item) 
	{
		SessionFactory.getCurrentSession().save(Item);
		return true;
	}

	@Override
	public boolean deleteItem(Item Item) 
	{
		SessionFactory.getCurrentSession().delete(Item);
		return true;
	}

	@Override
	public boolean updateItem(Item Item) 
	{
		SessionFactory.getCurrentSession().update(Item);
		return true;
	}

	@Override
	public Item getItemById(int id) 
	{
		return SessionFactory.getCurrentSession().get(Item.class, id);
	}

	@Override
	public List<Item> findAll() 
	{
		org.hibernate.Query Query = SessionFactory.getCurrentSession().createQuery("from Item");
		List<Item> List = Query.list();
		return List;
	}
}
