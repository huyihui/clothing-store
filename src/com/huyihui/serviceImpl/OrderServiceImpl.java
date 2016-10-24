package com.huyihui.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.huyihui.dao.OrderDao;
import com.huyihui.model.Orders;
import com.huyihui.service.OrderService;
@Service("orderServiceImpl")
public class OrderServiceImpl implements OrderService {

	//注解注入daoimpl
	@Resource(name="orderDaoImpl")
	private OrderDao orderDaoImpl;

	@Override
	public void adddd(Orders order) {
		// TODO Auto-generated method stub
		orderDaoImpl.adddd(order);
	}

	@Override
	public List<Orders> findAll() {
		// TODO Auto-generated method stub
		return orderDaoImpl.findAll();
	}

	@Override
	public int del(int orderid) {
		// TODO Auto-generated method stub
		return orderDaoImpl.del(orderid);
	}
}
