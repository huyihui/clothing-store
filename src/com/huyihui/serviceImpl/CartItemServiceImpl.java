package com.huyihui.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.huyihui.dao.CartItemDao;
import com.huyihui.model.CartItem;
import com.huyihui.service.CartItemService;

@Service("cartItemServiceImpl")
public class CartItemServiceImpl implements CartItemService {

	
	//注解注入DaoImpl
		@Resource(name="cartItemDaoImpl")
		private CartItemDao cartItemDaoImpl;

	
	@Override
	public int addd(CartItem cartItem) {
		// TODO Auto-generated method stub
		return cartItemDaoImpl.addd(cartItem);
	}


	@Override
	public List<CartItem> findproById(int userid) {
		// TODO Auto-generated method stub
		return cartItemDaoImpl.findproById(userid);
	}


	@Override
	public int dellll(int cartItid) {
		// TODO Auto-generated method stub
		return cartItemDaoImpl.dellll(cartItid);
	}

}
