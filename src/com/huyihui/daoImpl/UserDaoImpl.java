package com.huyihui.daoImpl;
import java.util.List;

import javax.annotation.Resource;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.stereotype.Repository;
import com.huyihui.dao.UserDao;
import com.huyihui.model.User;
@Repository("userDaoImpl")
public class UserDaoImpl implements UserDao {

	
	//连接数据库1.注入获取获取工厂对象2.sqlsession对象获取
	
	@Resource(name="sqlSessionFactory")
	private SqlSessionFactory sqlSessionFactory;
	
	
//登录
	@Override
	public User login(User user) {
		SqlSession sqlSession=sqlSessionFactory.openSession();
		User newUser=sqlSession.selectOne("UserNameSpace.login", user);
		sqlSession.close();
		return newUser;
	}


//注册
	@Override
	public int regist(User user) {
		SqlSession sqlSession=sqlSessionFactory.openSession();
		int i=sqlSession.insert("UserNameSpace.regist",user);
		sqlSession.close();
		return i;
	}
/*
 * 
 * 
 * 管理员部分
 * 
 * 
 * 
 */
//管理员查询所有普通用户
	@Override
	public List<User> findAlll() {
		// TODO Auto-generated method stub
		SqlSession sqlSession=sqlSessionFactory.openSession();
		List<User> list=sqlSession.selectList("UserNameSpace.findAlll");
		sqlSession.close();
		return list;
	}
	@Override
	public List<User> findAlll1() {
		// TODO Auto-generated method stub
		SqlSession sqlSession=sqlSessionFactory.openSession();
		List<User> list=sqlSession.selectList("UserNameSpace.findAlll1");
		sqlSession.close();
		return list;
	}


//管理员删除用户
	@Override
	public int deldel(int userid) {
		// TODO Auto-generated method stub
		SqlSession sqlSession=sqlSessionFactory.openSession();
		int i=sqlSession.delete("UserNameSpace.deldel", userid);
		sqlSession.close();
		return i;
	}

	
	
//管理员更新用户信息1
	@Override
	public User finduser(int userid) {
		// TODO Auto-generated method stub
		SqlSession sqlSession=sqlSessionFactory.openSession();
		User newUser=sqlSession.selectOne("UserNameSpace.finduser", userid);
		sqlSession.close();
		return newUser;
	}


//管理员更新用户信息2
	@Override
	public int updaupda(User user) {
		// TODO Auto-generated method stub
		SqlSession sqlSession=sqlSessionFactory.openSession();
		int i=sqlSession.update("UserNameSpace.updaupda", user);
		sqlSession.close();
		return i;
	}


	@Override
	public int addadd(User user) {
		// TODO Auto-generated method stub
		SqlSession sqlSession=sqlSessionFactory.openSession();
		int i=sqlSession.insert("UserNameSpace.addadd", user);
		sqlSession.close();
		return i;
	}





}
