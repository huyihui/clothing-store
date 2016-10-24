package com.huyihui.model;

import java.util.HashSet;
import java.util.Set;

public class User {

	private Integer userstatus;
	private Integer userid;
	private String username;
	private String userpwd;
	private Set<Orders> order=new HashSet<Orders>();
	public Integer getUserstatus() {
		return userstatus;
	}
	public void setUserstatus(Integer userstatus) {
		this.userstatus = userstatus;
	}
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUserpwd() {
		return userpwd;
	}
	public void setUserpwd(String userpwd) {
		this.userpwd = userpwd;
	}
	public Set<Orders> getOrder() {
		return order;
	}
	public void setOrder(Set<Orders> order) {
		this.order = order;
	}
	@Override
	public String toString() {
		return "User [userstatus=" + userstatus + ", userid=" + userid + ", username=" + username + ", userpwd="
				+ userpwd + ", order=" + order + "]";
	}
	public User(Integer userstatus, Integer userid, String username, String userpwd, Set<Orders> order) {
		super();
		this.userstatus = userstatus;
		this.userid = userid;
		this.username = username;
		this.userpwd = userpwd;
		this.order = order;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}
