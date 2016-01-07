package com.hybrid.command;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.hybrid.model.City;
import com.hybrid.model.Member;

@JsonIgnoreProperties(value = "member")
public class MemberCommand {
	private int id;
	private String email;
	private String name;
	private String password;
	private Date register_Date;
	private String address;
	private String phone;
	
	public void setErrorMessage(Map<String, Object> errorMessage) {
		this.errorMessage = errorMessage;
	}

	private Map<String, Object> errorMessage;
	
	public MemberCommand() {
		errorMessage = new HashMap<>();
	}
	
	public Map<String, Object> getErrorMessage() {
		return errorMessage;
	}
	
	public void validate() {
		/*
		 * name validation
		 */
		
		/*
		 * coutryCode validation
		 */
		
		/*
		 * district validation
		 */
		
		/*
		 * population validation
		 */
		
	}
	
	public boolean isValid() {
		
		if (errorMessage.size() > 0)
			return false;
		
		return true;
	}
	
	public Member getMember() {
		Member c = new Member();
		c.setId(id);
		c.setEmail(email);
		c.setName(name);
		c.setPassword(password);
		c.setRegister_Date(register_Date);
		c.setAddress(address);
		c.setPhone(phone);

		return c;
	}
	

	
	
	
	
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


}
