package com.niit.ecommerce.config;

import org.springframework.context.annotation.Bean; 
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = "com.niit.ecommerce")
public class AppViewResolver extends WebMvcConfigurerAdapter
{
	@Bean
	public ViewResolver ViewResolver()
	{
		InternalResourceViewResolver ViewResolver = new InternalResourceViewResolver();
		ViewResolver.setPrefix("/WEB-INF/views/");
		ViewResolver.setSuffix(".jsp");
		return ViewResolver;
	}
	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) 
	{
		registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
	}
	
	@Bean(name = "multipartResolver")
	public CommonsMultipartResolver multipartResolver()
	{
		CommonsMultipartResolver resolver = new CommonsMultipartResolver();
		resolver.setMaxUploadSize(5 * 1024 * 1024);
		return resolver;
	}
}
