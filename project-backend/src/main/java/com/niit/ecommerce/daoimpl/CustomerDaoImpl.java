package com.niit.ecommerce.daoimpl;

import com.niit.ecommerce.dao.*;
import com.niit.ecommerce.model.*;
import java.util.List;
import javax.transaction.Transactional;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository(value = "customerDao")
@Transactional
public class CustomerDaoImpl implements CustomerDao
{
	@Autowired
	private SessionFactory SessionFactory;
	
	@Override 
	public boolean saveCustomer(Customer Customer)
	{
		Customer.setRole("USER");
		SessionFactory.getCurrentSession().save(Customer);
		return true;
	}
	
	public boolean addCustomer(Customer Customer) 
	{
		SessionFactory.getCurrentSession().save(Customer);
		return true;
	}

	@Override
	public boolean deleteCustomer(Customer Customer)
	{
		SessionFactory.getCurrentSession().delete(Customer);
		return true;
	}

	@Override
	public boolean updateCustomer(Customer Customer) 
	{
		SessionFactory.getCurrentSession().update(Customer);
		return true;
	}

	@Override
	public Customer getCustomerById(int id) 
	{
		return SessionFactory.getCurrentSession().get(Customer.class, id);
		}

	@Override
	public List<Customer> findAll() 
	{
		org.hibernate.Query<Customer> Query = SessionFactory.getCurrentSession().createQuery("from Customer");
		List<Customer> List = Query.list();
		return List;
	}	
}
