package com.niit.ecommerce.driver;

import com.niit.ecommerce.dao.*;
import com.niit.ecommerce.model.*;
import java.util.List;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class CustomerDriver 
{
	public static void main(String[] args) 
	{
		AnnotationConfigApplicationContext Context = new AnnotationConfigApplicationContext();
		Context.scan("com.niit.ecommerce");
		Context.refresh();
		
	// 1. INSERT THE CUSTOMER ::
		
		Customer Customer1 = new Customer("Guddu", "guddu123", "guddu@niit.com",729196706,"Panchsheel Park","16/12/2000");
		Customer Customer2 = new Customer("Happu","happu123", "happu@niit.com",991110067,"Friends Colony","24/02/2000");
		Customer Customer3 = new Customer("Kittu","kittu123", "kittu@niit.com",955570312,"Punjabi Bagh","05/01/2000");
		CustomerDao dao = (CustomerDao) Context.getBean("customerDao");
		dao.addCustomer(Customer1);
		dao.addCustomer(Customer2);
		dao.addCustomer(Customer3);
		
	// 2. UPDATE THE CUSTOMER ::
		// 2.1 get the customer object by using getCustomerById()
		// 2.2 update the object by using set methods and use update() on the object

		Customer UpCust = dao.getCustomerById(2);
		UpCust.setAddress("New Friends Colony");
		dao.updateCustomer(UpCust);
		
	// 3. DELETE THE CUSTOMER ::
		// 3.1 get the customer object by using getCustomerById()
		// 3.2 delete the object by using set methods and use delete() on the object

		Customer DelCust = dao.getCustomerById(3);
		dao.deleteCustomer(DelCust);
	
	// 4. get all customers
		List<Customer> Customers = dao.findAll();
		for(Customer c : Customers)
		{
			System.out.println(c);
		}
	}
}
