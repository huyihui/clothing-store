package com.huyihui.daoImpl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.stereotype.Repository;

import com.huyihui.dao.CartItemDao;
import com.huyihui.model.CartItem;
@Repository("cartItemDaoImpl")
public class CartItemDaoImpl implements CartItemDao {

	
	
	//连接数据库1.注入获取获取工厂对象2.sqlsession对象获取
	
		@Resource(name="sqlSessionFactory")
		private SqlSessionFactory sqlSessionFactory;
	
	//添加到购物车
	
	@Override
	public int addd(CartItem cartItem) {
		// TODO Auto-generated method stub
		SqlSession sqlSession=sqlSessionFactory.openSession();
		int i=sqlSession.insert("CartItemNameSpace.addd", cartItem);
		sqlSession.close();
		return i;
	}



	@Override
	public List<CartItem> findproById(int userid) {
		// TODO Auto-generated method stub
		SqlSession sqlSession=sqlSessionFactory.openSession();
		List<CartItem> list=sqlSession.selectList("CartItemNameSpace.findproById", userid);
		sqlSession.close();
		return list;
	}



	@Override
	public int dellll(int cartItid) {
		// TODO Auto-generated method stub
		SqlSession sqlSession=sqlSessionFactory.openSession();
		int i=sqlSession.delete("CartItemNameSpace.dellll", cartItid);
		return i;
	}

}
