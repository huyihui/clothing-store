package com.huyihui.service;

import java.util.List;

import com.huyihui.model.CartItem;

public interface CartItemService {

	int addd(CartItem cartItem);

	List<CartItem> findproById(int userid);

	int dellll(int cartItid);

}
