package com.huyihui.model;

import java.util.Date;

public class Orders {
	private Integer orderid;
	private String ordername;
	private String ordertime;
	private Integer userid;
	public Integer getOrderid() {
		return orderid;
	}
	public void setOrderid(Integer orderid) {
		this.orderid = orderid;
	}
	public String getOrdername() {
		return ordername;
	}
	public void setOrdername(String ordername) {
		this.ordername = ordername;
	}
	public String getOrdertime() {
		return ordertime;
	}
	public void setOrdertime(String ordertime) {
		this.ordertime = ordertime;
	}
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
	}
	@Override
	public String toString() {
		return "Order [orderid=" + orderid + ", ordername=" + ordername + ", ordertime=" + ordertime + ", userid="
				+ userid + "]";
	}
	public Orders(Integer orderid, String ordername, String ordertime, Integer userid) {
		super();
		this.orderid = orderid;
		this.ordername = ordername;
		this.ordertime = ordertime;
		this.userid = userid;
	}
	public Orders() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
