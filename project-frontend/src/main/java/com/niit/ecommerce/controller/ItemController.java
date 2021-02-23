package com.niit.ecommerce.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import com.niit.ecommerce.dao.*;
import com.niit.ecommerce.model.*;
import com.niit.ecommerce.service.CartService;
import com.niit.ecommerce.service.ItemService;

@Controller
public class ItemController 
{
	@Autowired
	private ItemDao dao;
	private ItemService itemService;
	private CartService cartService;
	
	@RequestMapping("/display-items")
	public String itemPage(Model model)
	{
		List<Item> ItemList = dao.findAll();
		model.addAttribute("List", ItemList);
		return "Items";
	}
	
	@GetMapping("/item-page")
	public String addItemForm(Model model)
	{
		//Item empty object
		model.addAttribute("Item", new Item());
		return "AddItem";
	}
	
	@PostMapping("/add-item")
	public String addItemPage(@ModelAttribute("Item") Item i, HttpServletRequest request)
	{
		dao.addItem(i);
		MultipartFile image = i.getImage();
		String rootDirectory = request.getSession().getServletContext().getRealPath("/");
		Path path = Paths.get(rootDirectory + "/resources/images/" + i.getId() + ".png");
//		System.out.println("Image Path : " + path);
		
		if(image != null && !image.isEmpty())
		{
			try
			{
				image.transferTo(new File(path.toString()));
			}
			catch(IllegalStateException e)
			{
				e.printStackTrace();
			}
			catch(IOException e)
			{
				e.printStackTrace();
			}
		}
		
		return "redirect:/display-items";
	}
	
	@GetMapping("/delete-item/{id}")
	public String deleteItem(@PathVariable("id") int itemId)
	{
		Item itemDel = dao.getItemById(itemId);
		dao.deleteItem(itemDel);
		return "redirect:/display-items";
	}
	
	@GetMapping("/update-item/{id}")
	public String updateItemForm(@PathVariable("id") int itemId, Model model)
	{
		Item itemUpd = dao.getItemById(itemId);
		model.addAttribute("Item", itemUpd);
		return "UpdateItem";
	}
	
	@PostMapping("/update-item")
	public String updateItem(@ModelAttribute("Item") Item i) 
	{
		dao.updateItem(i);
		return "redirect:/display-items";
	}
	
	@GetMapping("/view-item/{id}")
	public String viewItemPage(@PathVariable("id") int itemId, Model model)
	{
		Item itemView = dao.getItemById(itemId);
		model.addAttribute("Item", itemView);
		return "ViewItem";
	}

	@PostMapping(value = "/items")
	public String itemsPage(ModelMap model)
	{
		List<Item> item = itemService.findAll();
		model.addAttribute("item", item);
		return "Items";
	}
	
	@ModelAttribute("Items")
	public Item getLast()
	{
		return new Item();
	}
	
	@PostMapping("/cart")
	public String getCart(@PathVariable("id") int itemId, Model model)
	{
		Item i = itemService.getItemById(itemId);
		model.addAttribute("item", i);
		return "cart";
	}
	
	@PostMapping("/deleteCart")
	public String deleteCart(@PathVariable int itemId)
	{
		itemService.delete(itemId);
		return "redirect:cart";
	}
	
	@PostMapping("/OrderConfirmation")
	public String setCart(@PathVariable("id") int itemId, Model model)
	{
		Item i = itemService.getItemById(itemId);
		model.addAttribute("item", i);
		return "OrderConfirmation";
	}
	
	@ModelAttribute("InstOrder")
	public Cart authentication()
	{
		return new Cart();
	}
	
	@PostMapping("/OrderConfirm")
	public String addNewOrder(@ModelAttribute("InstOrder") Cart cart, BindingResult result, Model model)
	{
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String name = auth.getName();
		cart.setQuantity(1);
		cart.setUsername(name);
		cartService.addToCart(cart);
		model.addAttribute("cart", cart);
		return "ThankCustomer";
	}
}