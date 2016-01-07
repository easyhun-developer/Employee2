package com.hybrid.model;

import java.util.Date;

import com.hybrid.exception.PasswordNotMatchingException;

/*
 * Model Object
 * Value Object
 * Transfer Object
 * Beans 1. property ==> setter, getter
 *       2. event
 *       3. 기능(method)
 */
public class Member {
	private int id;
	private String email;
	private String name;
	private String password;
	private Date register_Date;
	private String address;
	private String phone;

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public Date getRegister_Date() {
		return register_Date;
	}
	public void setRegister_Date(Date register_Date) {
		this.register_Date = register_Date;
	}
	
	
	public String getAddress() {
		return address;
	}
	
	public void setAddress(String address) {
		this.address = address;
	}
	
	public String getPhone() {
		return phone;
	}
	
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	
	public void changePassword(String oldPassword, String newPassword) {
		if (!this.password.equals(oldPassword)) {
			throw new PasswordNotMatchingException();
		}
		this.password = newPassword;
	}
	
	
	
	
}
