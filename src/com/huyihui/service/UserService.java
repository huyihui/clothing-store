package com.huyihui.service;

import java.util.List;

import com.huyihui.model.User;

public interface UserService {

	User login(User user);

	int regist(User user);

	List<User> findAlll();

	List<User> findAlll1();

	int deldel(int userid);

	int updaupda(User user);

	User finduser(int userid);

	int addadd(User user);

}
