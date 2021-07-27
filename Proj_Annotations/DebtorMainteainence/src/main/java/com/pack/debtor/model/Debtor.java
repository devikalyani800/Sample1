package com.pack.debtor.model;



public class Debtor {

	//@NotEmpty
	private String name;
	
	private String email;
	private String address1;
	private String phone;
	private int did;
	
	
	public Debtor() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Debtor(String name, String email, String address1, String phone, int did) {
		super();
		this.name = name;
		this.email = email;
		this.address1 = address1;
		this.phone = phone;
		this.did = did;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getAddress1() {
		return address1;
	}


	public void setAddress1(String address1) {
		this.address1 = address1;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public int getDid() {
		return did;
	}


	public void setDid(int did) {
		this.did = did;
	}
	
	
	
	
}
