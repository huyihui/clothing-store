package com.huyihui.dao;

import java.util.List;

import com.huyihui.model.Orders;

public interface OrderDao {

	void adddd(Orders order);

	List<Orders> findAll();

	int del(int orderid);

}
