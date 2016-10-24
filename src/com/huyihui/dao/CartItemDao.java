package com.huyihui.dao;

import java.util.List;

import com.huyihui.model.CartItem;

public interface CartItemDao {

	int addd(CartItem cartItem);

	List<CartItem> findproById(int userid);

	int dellll(int cartItid);

}
