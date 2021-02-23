package com.niit.ecommerce.dao;

import com.niit.ecommerce.model.*;
import java.util.List;

public interface ItemDao
{
	public boolean addItem(Item Item);
	public boolean deleteItem(Item Item);
	public boolean updateItem(Item Item);
	public Item getItemById(int id);
	public List<Item> findAll();
}
