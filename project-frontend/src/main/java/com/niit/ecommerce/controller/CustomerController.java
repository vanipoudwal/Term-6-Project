package com.niit.ecommerce.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import com.niit.ecommerce.dao.*;
import com.niit.ecommerce.model.*;

@Controller
public class CustomerController 
{
	@Autowired
	private CustomerDao dao;
	
	@RequestMapping("/display-customers")
	public String customerPage(Model model)
	{
		List<Customer> CustomerList = dao.findAll();
		model.addAttribute("List", CustomerList);
		return "Customers";
	}
	
	@GetMapping("/customer-page")
	public String addCustomerForm(Model model)
	{
		//Customer empty object
		model.addAttribute("Customer", new Customer());
		return "AddCustomer";
	}
	
	@PostMapping("/add-customer")
	public String addCustomerPage(@ModelAttribute("Customer") Customer c, HttpServletRequest request)
	{
		dao.addCustomer(c);
		MultipartFile image = c.getImage();
		String rootDirectory = request.getSession().getServletContext().getRealPath("/");
		Path path = Paths.get(rootDirectory + "/resources/images/" + c.getId() + ".png");
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
		return "redirect:/display-customers";
	}
	
	@GetMapping("/delete-customer/{id}")
	public String deleteCustomer(@PathVariable("id") int customerId)
	{
		Customer customerDel = dao.getCustomerById(customerId);
		dao.deleteCustomer(customerDel);
		return "redirect:/display-customers";
	}
	
	@GetMapping("/update-customer/{id}")
	public String updateCustomerForm(@PathVariable("id") int customerId, Model model)
	{
		Customer customerUpd = dao.getCustomerById(customerId);
		model.addAttribute("Customer", customerUpd);
		return "UpdateCustomer";
	}
	
	@PostMapping("/update-customer")
	public String updateCustomer(@ModelAttribute("Customer") Customer c) 
	{
		dao.updateCustomer(c);
		return "redirect:/display-customers";
	}
	
	@GetMapping("/view-customer/{id}")
	public String viewCustomerPage(@PathVariable("id") int customerId, Model model)
	{
		Customer customerView = dao.getCustomerById(customerId);
		model.addAttribute("Customer", customerView);
		return "ViewCustomer";
	}
}
