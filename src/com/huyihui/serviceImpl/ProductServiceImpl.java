package com.huyihui.serviceImpl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.huyihui.dao.ProductDao;
import com.huyihui.model.Product;
import com.huyihui.service.ProductService;
import com.mysql.jdbc.Blob;

@Service("productServiceImpl")
public class ProductServiceImpl implements ProductService {
	//注解注入productDaoImpl对象
	@Resource(name="productDaoImpl")
	private ProductDao productDaoImpl;
	
	
	@Override
	public List<Product> findAllPro() {
		// TODO Auto-generated method stub
		return productDaoImpl.findAllPro();
	}


	/*@Override
	public String findPic(Product product) {
		// TODO Auto-generated method stub
		return productDaoImpl.findPic(product);
	}
*/

	@Override
	public Product findById(Product product) {
		// TODO Auto-generated method stub
		return productDaoImpl.findById(product);
	}


	@Override
	public Product cartById(Product product) {
		// TODO Auto-generated method stub
		return productDaoImpl.cartById(product);
	}

//管理员添加商品
	@Override
	public void upPicc(Product product) {
		// TODO Auto-generated method stub
		productDaoImpl.upPicc(product);
	}


	@Override
	public List<Product> getListPro() {
		// TODO Auto-generated method stub
		return productDaoImpl.getListPro();
		
	}


	@Override
	public int delpro(int proid) {
		// TODO Auto-generated method stub
		return productDaoImpl.delpro(proid);
	}


	@Override
	public int updpro(Product product) {
		// TODO Auto-generated method stub
		return productDaoImpl.updpro(product);
	}


	@Override
	public Product findprobyid(Product product) {
		// TODO Auto-generated method stub
		return productDaoImpl.findprobyid(product);
	}



}
