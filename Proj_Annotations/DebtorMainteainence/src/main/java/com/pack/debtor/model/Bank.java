package com.pack.debtor.model;

public class Bank {
	private int did;
	public String accountnumber,bankname,address;
	public Bank() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getDid() {
		return did;
	}
	public void setDid(int did) {
		this.did = did;
	}
	public String getAccountnumber() {
		return accountnumber;
	}
	public void setAccountnumber(String accountnumber) {
		this.accountnumber = accountnumber;
	}
	
	public String getBankname() {
		return bankname;
	}
	public void setBankname(String bankname) {
		this.bankname = bankname;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Bank(int did, String accountnumber, String bankname, String address) {
		super();
		this.did = did;
		this.accountnumber = accountnumber;
		this.bankname = bankname;
		this.address = address;
	}
	


}
