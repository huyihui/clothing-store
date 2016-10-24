package com.huyihui.model;

public class Product {

	private Integer proid;
	private String proname;
	private String prophoto;
	private Integer proprice;
	private Integer procount;
	public Integer getProid() {
		return proid;
	}
	public void setProid(Integer proid) {
		this.proid = proid;
	}
	public String getProname() {
		return proname;
	}
	public void setProname(String proname) {
		this.proname = proname;
	}
	public String getProphoto() {
		return prophoto;
	}
	public void setProphoto(String prophoto) {
		this.prophoto = prophoto;
	}
	public Integer getProprice() {
		return proprice;
	}
	public void setProprice(Integer proprice) {
		this.proprice = proprice;
	}
	public Integer getProcount() {
		return procount;
	}
	public void setProcount(Integer procount) {
		this.procount = procount;
	}
	public Product(Integer proid, String proname, String prophoto, Integer proprice, Integer procount) {
		super();
		this.proid = proid;
		this.proname = proname;
		this.prophoto = prophoto;
		this.proprice = proprice;
		this.procount = procount;
	}
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Product [proid=" + proid + ", proname=" + proname + ", prophoto=" + prophoto + ", proprice=" + proprice
				+ ", procount=" + procount + "]";
	}
	
	
	
}
