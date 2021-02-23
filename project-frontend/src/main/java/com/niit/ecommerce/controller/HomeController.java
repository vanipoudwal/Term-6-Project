package com.niit.ecommerce.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController 
{
	@RequestMapping("/")
	public String indexPage(Model Model)
	{
		List<String> Names = new ArrayList<String>(Arrays.asList("Himanshu","Karan","Mansi","Ruchit","Vani"));
		Model.addAttribute("message", Names);
		return "index";
	}
}
