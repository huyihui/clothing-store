package com.huyihui.service;

import java.util.List;

import com.huyihui.model.Orders;

public interface OrderService {

	void adddd(Orders order);

	List<Orders> findAll();

	int del(int orderid);

}
