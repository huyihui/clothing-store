package com.huyihui.serviceImpl;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.huyihui.dao.UserDao;
import com.huyihui.model.User;
import com.huyihui.service.UserService;

@Service("userServiceImpl")
public class UserServiceImpl implements UserService {
	// 注解注入productDaoImpl对象
	@Resource(name = "userDaoImpl")
	private UserDao userDaoImpl;

	@Override
	public User login(User user) {
		// TODO Auto-generated method stub
		return userDaoImpl.login(user);
	}

	@Override
	public int regist(User user) {
		// TODO Auto-generated method stub
		return userDaoImpl.regist(user);
	}

	@Override
	public List<User> findAlll() {
		// TODO Auto-generated method stub
		return userDaoImpl.findAlll();
	}
	@Override
	public List<User> findAlll1() {
		// TODO Auto-generated method stub
		return userDaoImpl.findAlll1();
	}
	
	@Override
	public int deldel(int userid) {
		// TODO Auto-generated method stub
		return userDaoImpl.deldel(userid);
	}
	
	

	@Override
	public int updaupda(User user) {
		// TODO Auto-generated method stub
		return userDaoImpl.updaupda(user);
	}

	@Override
	public User finduser(int userid) {
		// TODO Auto-generated method stub
		return userDaoImpl.finduser(userid);
		
	}

	@Override
	public int addadd(User user) {
		// TODO Auto-generated method stub
		return userDaoImpl.addadd(user);
	}
	


}
