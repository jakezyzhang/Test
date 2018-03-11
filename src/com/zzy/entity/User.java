package com.zzy.entity;

public class User {
	private int id;
	private String username;
	private String password;
	private String displayname;
	public User(String username, String password, String displayname) {
		super();
		this.username = username;
		this.password = password;
		this.displayname = displayname;
	}
	public User(int id, String username, String password, String displayname) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.displayname = displayname;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getDisplayname() {
		return displayname;
	}
	public void setDisplayname(String displayname) {
		this.displayname = displayname;
	}
	
	
}
