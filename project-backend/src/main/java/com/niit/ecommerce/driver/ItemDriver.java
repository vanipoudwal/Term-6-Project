package com.niit.ecommerce.driver;

import com.niit.ecommerce.dao.*;
import com.niit.ecommerce.model.*;
import java.util.List;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class ItemDriver
{
	public static void main(String[] args) 
	{
		AnnotationConfigApplicationContext Context = new AnnotationConfigApplicationContext();
		Context.scan("com.niit.ecommerce");
		Context.refresh();

		// 1. INSERT THE ITEM ::
		Item Item1 = new Item("Bracelet", 24000, 1, "Gold plated braclets");
		Item Item2 = new Item("Ring", 105000, 1, "Kohinoor diamond rings");
		Item Item3 = new Item("Necklace", 16000, 1, "Pure gold necklaces");
		Item Item4 = new Item("Bangle", 20000, 1, "Silver plated bangles");
		Item Item5 = new Item("Chain", 16400, 1, "Platinum plated pearl chains");
		ItemDao dao = (ItemDao) Context.getBean("itemDao");
		dao.addItem(Item1);
		dao.addItem(Item2);
		dao.addItem(Item3);
		dao.addItem(Item4);
		dao.addItem(Item5);

		// 2. UPDATE THE ITEM ::
		// 2.1 get the item object by using getItemById()
		// 2.2 update the object by using set methods and use update() on the object

		Item UpItem = dao.getItemById(1);
		UpItem.setPrice(26000);
		dao.updateItem(UpItem);

		// 3. DELETE THE ITEM ::
		// 3.1 get the item object by using getItemById()
		// 3.2 delete the object by using set methods and use delete() on the object

		Item DelItem = dao.getItemById(5);
		dao.deleteItem(DelItem);

		// 4. get all items
		List<Item> Items = dao.findAll();
		for (Item i : Items) 
		{
			System.out.println(i);
		}
	}
}
