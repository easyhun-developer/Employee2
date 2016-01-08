package com.hybrid.model;

import java.util.List;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementWrapper;
import javax.xml.bind.annotation.XmlRootElement;

import com.hybrid.util.Pagination;

@XmlRootElement(name="Response")
@XmlAccessorType(XmlAccessType.FIELD)
public class StorePage {
	
	@XmlElementWrapper(name="stores")
	@XmlElement(name="store")
	List<Store> stores;
	
	Pagination paging;

	public List<Store> getStores() {
		return stores;
	}

	public void setStores(List<Store> stores) {
		this.stores = stores;
	}

	public Pagination getPaging() {
		return paging;
	}

	public void setPaging(Pagination paging) {
		this.paging = paging;
	}
	
}
