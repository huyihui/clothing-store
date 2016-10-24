package com.huyihui.dao;

import java.util.List;

import com.huyihui.model.Product;
import com.huyihui.model.User;
import com.mysql.jdbc.Blob;


public interface ProductDao {

	List<Product> findAllPro();

//	String findPic(Product product);

	Product findById(Product product);

	Product cartById(Product product);

	void upPicc(Product product);

	List<Product> getListPro();

	int delpro(int proid);

	int updpro(Product product);

	Product findprobyid(Product product);



}
