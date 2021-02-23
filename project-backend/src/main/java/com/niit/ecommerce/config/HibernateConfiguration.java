package com.niit.ecommerce.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import javax.sql.DataSource;
import java.util.Properties;

@Configuration
@EnableTransactionManagement
@ComponentScan(basePackages = "com.niit.ecommerce")
public class HibernateConfiguration 
{
	// create a session factory object
	@Bean
	public LocalSessionFactoryBean SessionFactory()
	{
		LocalSessionFactoryBean SessionFactory = new LocalSessionFactoryBean();
		
		// database configuration & hibernate configuration
		SessionFactory.setDataSource(DataSource());
	//	SessionFactory.setAnnotatedClasses(Product.class);
		SessionFactory.setPackagesToScan(new String[] {"com.niit.ecommerce.model"});
		SessionFactory.setHibernateProperties(HibernateProperties());
		return SessionFactory;
	}
	
	private Properties HibernateProperties()
	{
		Properties Properties = new Properties();
		Properties.put("hibernate.dialect", "org.hibernate.dialect.MySQL8Dialect");
		Properties.put("hibernate.hbm2ddl.auto","update");
		//optional properties
		Properties.put("hibernate.show_sql",true);
		Properties.put("hibernate.format_sql",true);
		return Properties;
	}
	
	@Bean 
	public DataSource DataSource()
	{
		DriverManagerDataSource DataSource = new DriverManagerDataSource();
		DataSource.setDriverClassName("com.mysql.jdbc.Driver");
		DataSource.setUrl("jdbc:mysql://localhost/term6_project");
		DataSource.setUsername("root");
		DataSource.setPassword("root");
		return DataSource;
	}
	
	@Bean
	@Autowired
	public HibernateTransactionManager TransactionManager(org.hibernate.SessionFactory Factory)
	{
		HibernateTransactionManager Manager = new HibernateTransactionManager();
		Manager.setSessionFactory(Factory);
		return Manager;
	}
}
