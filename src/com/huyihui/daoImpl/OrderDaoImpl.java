package com.huyihui.daoImpl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.stereotype.Repository;

import com.huyihui.dao.OrderDao;
import com.huyihui.model.Orders;
@Repository("orderDaoImpl")
public class OrderDaoImpl implements OrderDao {

	//连接数据库1.注入获取获取工厂对象2.sqlsession对象获取
	
			@Resource(name="sqlSessionFactory")
			private SqlSessionFactory sqlSessionFactory;
//方法:创建订单
			@Override
			public void adddd(Orders order) {
				// TODO Auto-generated method stub
				SqlSession sqlSession=sqlSessionFactory.openSession();
				sqlSession.insert("OrderNameSpace.adddd", order);
				sqlSession.close();
			}
//查找订单
			@Override
			public List<Orders> findAll() {
				// TODO Auto-generated method stub
				SqlSession sqlSession=sqlSessionFactory.openSession();
				List<Orders> list=sqlSession.selectList("OrderNameSpace.findAll");
				sqlSession.close();
				return list;
			}
			@Override
			public int del(int orderid) {
				// TODO Auto-generated method stub
				SqlSession sqlSession=sqlSessionFactory.openSession();
				int i=sqlSession.delete("OrderNameSpace.del", orderid);
				sqlSession.close();
				return i;
			}
}
