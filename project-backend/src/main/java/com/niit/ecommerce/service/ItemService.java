package com.niit.ecommerce.service;

import java.util.List;
import com.niit.ecommerce.model.Item;

public interface ItemService
{
	public void add(Item item);
	public void update(Item item);
	public void delete(int id);
	public Item getItemById(int id);
	public List findAll();
}