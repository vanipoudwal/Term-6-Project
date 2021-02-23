package com.niit.ecommerce.model;

import javax.persistence.Transient;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.web.multipart.MultipartFile;

//Entity [customer.hbm.xml, Annotation]

@Entity
public class Customer 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String username;
	private String password;
	private String email;
	private long phno;
	private String address;
	private String dob;
	@Transient
	private MultipartFile image;
	private String role;
	
	public Customer() {}

	public Customer(String username, String password, String email, long phno, String address, String dob) {
		super();
		this.username = username;
		this.password = password;
		this.email = email;
		this.phno = phno;
		this.address = address;
		this.dob = dob;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String username() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
	
	public String password() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public long getPhno() {
		return phno;
	}

	public void setPhno(long phno) {
		this.phno = phno;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getDob() {
		return dob;
	}

	public String getUsername() {
		return username;
	}

	public String getPassword() {
		return password;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public MultipartFile getImage() {
		return image;
	}

	public void setImage(MultipartFile image) {
		this.image = image;
	}
	
	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}
	
	@Override
	public String toString() {
		return "Customer [id=" + id + ", username=" + username + ", password=" + password + ", email=" + email + ", phno=" + phno + ", address=" + address + ", dob=" + dob + ", image=" + image + ", role=" + role + "]";
	}
}
