package com.huyihui.model;
public class CartItem  {
	private String cartItname;
	private Integer cartItprice;
	private Integer cartItid;
	private String cartItsize;
	private Integer cartItnum;
	private Integer userid;
	private String cartItpho;
	public String getCartItname() {
		return cartItname;
	}
	public void setCartItname(String cartItname) {
		this.cartItname = cartItname;
	}
	public Integer getCartItprice() {
		return cartItprice;
	}
	public void setCartItprice(Integer cartItprice) {
		this.cartItprice = cartItprice;
	}
	public Integer getCartItid() {
		return cartItid;
	}
	public void setCartItid(Integer cartItid) {
		this.cartItid = cartItid;
	}
	public String getCartItsize() {
		return cartItsize;
	}
	public void setCartItsize(String cartItsize) {
		this.cartItsize = cartItsize;
	}
	public Integer getCartItnum() {
		return cartItnum;
	}
	public void setCartItnum(Integer cartItnum) {
		this.cartItnum = cartItnum;
	}
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
	}
	public String getCartItpho() {
		return cartItpho;
	}
	public void setCartItpho(String cartItpho) {
		this.cartItpho = cartItpho;
	}
	public CartItem(String cartItname, Integer cartItprice, Integer cartItid, String cartItsize, Integer cartItnum,
			Integer userid, String cartItpho) {
		super();
		this.cartItname = cartItname;
		this.cartItprice = cartItprice;
		this.cartItid = cartItid;
		this.cartItsize = cartItsize;
		this.cartItnum = cartItnum;
		this.userid = userid;
		this.cartItpho = cartItpho;
	}
	public CartItem() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
