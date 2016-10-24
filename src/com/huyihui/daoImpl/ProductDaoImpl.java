package com.huyihui.daoImpl;


import java.util.List;
import javax.annotation.Resource;


import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.stereotype.Repository;
import com.huyihui.dao.ProductDao;
import com.huyihui.model.Product;

import com.mysql.jdbc.Blob;


@Repository("productDaoImpl")
public class ProductDaoImpl implements ProductDao {

	
	//连接数据库1.注入获取获取工厂对象2.sqlsession对象获取
	
	@Resource(name="sqlSessionFactory")
	private SqlSessionFactory sqlSessionFactory;
	
	//查找所有商品添加到列表页
	@Override
	public List<Product> findAllPro() {
		// TODO Auto-generated method stub
		SqlSession sqlSession=sqlSessionFactory.openSession();
		List<Product> list=sqlSession.selectList("ProductNameSpace.findAllPro");
		sqlSession.close();
		return list;
	}



/*	@Override
	public String findPic(Product product) {
		// TODO Auto-generated method stub
		SqlSession sqlSession=sqlSessionFactory.openSession();
		String url=sqlSession.selectOne("ProductNameSpace.findPic", product);
	    sqlSession.close();
		return url;
	}
*/

	@Override
	public Product findById(Product product) {
		// TODO Auto-generated method stub
		SqlSession sqlSession=sqlSessionFactory.openSession();
		Product newProduct=sqlSession.selectOne("ProductNameSpace.findById", product);
		sqlSession.close();
		return newProduct;
	}


	@Override
	public Product cartById(Product product) {
		// TODO Auto-generated method stub
		SqlSession sqlSession=sqlSessionFactory.openSession();
		Product newProduct=sqlSession.selectOne("ProductNameSpace.cartById", product);
		sqlSession.close();
		return newProduct;
	}

//管理员添加商品
	@Override
	public void upPicc(Product product) {
		// TODO Auto-generated method stub
		SqlSession sqlSession=sqlSessionFactory.openSession();
		Product newProduct=sqlSession.selectOne("ProductNameSpace.upPicc", product);
		System.out.println(product);
		sqlSession.close();
	}


	@Override
	public List<Product> getListPro() {
		// TODO Auto-generated method stub
		SqlSession sqlSession=sqlSessionFactory.openSession();
		List<Product> list=sqlSession.selectList("ProductNameSpace.getListPro");
		sqlSession.close();
		return list;
	}


	@Override
	public int delpro(int proid) {
		// TODO Auto-generated method stub
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int i=sqlSession.delete("ProductNameSpace.delpro", proid);
		sqlSession.close();
		return i;
	}


	@Override
	public int updpro(Product product) {
		// TODO Auto-generated method stub
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int i = sqlSession.update("ProductNameSpace.updpro", product);
		sqlSession.close();
		
		return i;
	}


	@Override
	public Product findprobyid(Product product) {
		// TODO Auto-generated method stub
		SqlSession sqlSession=sqlSessionFactory.openSession();
		Product newProduct=sqlSession.selectOne("ProductNameSpace.findprobyid", product);
		sqlSession.close();
		return newProduct;
	}




}
