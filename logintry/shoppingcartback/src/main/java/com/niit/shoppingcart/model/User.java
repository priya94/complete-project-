package com.niit.shoppingcart.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;
@Entity
@Table(name="USER")
@Component
public class User {
	@Id
	private String id;

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
	private String password;
	
	@Column(name="isadmin")
	private boolean isAdmin;
	public boolean isIsadmin() {
		return isAdmin;
	}
	public void setIsadmin(boolean isAdmin) {
		this.isAdmin = isAdmin;
	}
	
	

}
