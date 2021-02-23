package com.niit.ecommerce.dao;

import java.util.List; 
import com.niit.ecommerce.model.*;

public interface CustomerDao
{
	public boolean saveCustomer(Customer Customer);
	public boolean addCustomer(Customer Customer);
	public boolean deleteCustomer(Customer Customer);
	public boolean updateCustomer(Customer Customer);
	public Customer getCustomerById(int id);
	public List<Customer> findAll();
}
