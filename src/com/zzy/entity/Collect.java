package com.zzy.entity;

public class Collect {
	private int id;
	private String webname;
	private String webaddress;
	private String label;
	private String username;
	public Collect(int id, String webname, String webaddress, String label, String username) {
		super();
		this.id = id;
		this.webname = webname;
		this.webaddress = webaddress;
		this.label = label;
		this.username = username;
	}
	public Collect(String webname, String webaddress, String label, String username) {
		super();
		this.webname = webname;
		this.webaddress = webaddress;
		this.label = label;
		this.username = username;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getWebname() {
		return webname;
	}
	public void setWebname(String webname) {
		this.webname = webname;
	}
	public String getWebaddress() {
		return webaddress;
	}
	public void setWebaddress(String webaddress) {
		this.webaddress = webaddress;
	}
	public String getLabel() {
		return label;
	}
	public void setLabel(String label) {
		this.label = label;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	
	
}
