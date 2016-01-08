package com.hybrid.command;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.hybrid.model.City;
import com.hybrid.model.Member;
import com.hybrid.model.Store;

@JsonIgnoreProperties(value = "store")
public class StoreCommand {
	private int id;
	private String name;
	private String restype;
	private String district;
	private String hitcount;
	private String email;
	private String password;
	private Date register_date;
	private String lat;
	private String lng;
	


	public void setErrorMessage(Map<String, Object> errorMessage) {
		this.errorMessage = errorMessage;
	}

	private Map<String, Object> errorMessage;
	
	public StoreCommand() {
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
	
	public Store getStore() {
		Store c = new Store();
		c.setId(id);
		c.setName(name);
		c.setRestype(restype);
		c.setDistrict(district);
		c.setHitcount(hitcount);
		c.setEmail(email);
		c.setPassword(password);
		c.setRegister_date(register_date);
		c.setLat(lat);
		c.setLng(lng);

		return c;
	}
	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getRestype() {
		return restype;
	}

	public void setRestype(String restype) {
		this.restype = restype;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public String getHitcount() {
		return hitcount;
	}

	public void setHitcount(String hitcount) {
		this.hitcount = hitcount;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Date getRegister_date() {
		return register_date;
	}

	public void setRegister_date(Date register_date) {
		this.register_date = register_date;
	}

	public String getLat() {
		return lat;
	}

	public void setLat(String lat) {
		this.lat = lat;
	}

	public String getLng() {
		return lng;
	}

	public void setLng(String lng) {
		this.lng = lng;
	}


}
