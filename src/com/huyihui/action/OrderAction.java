package com.huyihui.action;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.huyihui.model.Orders;
import com.huyihui.service.OrderService;



@Controller
@RequestMapping(value="/orderAction")
public class OrderAction {

	//注解注入serviceimpl
			@Resource(name="orderServiceImpl")
			private OrderService orderServiceImpl;

	//创建订单
			@RequestMapping(value="/adddd")
			public String adddd(Orders order){
				String ordertime=new java.text.SimpleDateFormat("yyyy/MM/dd hh:mm:ss").format(new Date());
				String ordername=new java.text.SimpleDateFormat("yyyyMMddhhmmss").format(new Date());
				order.setOrdername(ordername);
				order.setOrdertime(ordertime);
				orderServiceImpl.adddd(order);
				return "/feedback.jsp";
			}
			
	//查找订单
			@RequestMapping(value="/findAll")
			public String findAll(Model model){
				List<Orders> list=orderServiceImpl.findAll();
				model.addAttribute("list", list);
				if(list!=null){
					return "/hou_order.jsp";
				}else{
					return "/qingdenglu.jsp";
				}
			}
	//删除订单
			@RequestMapping(value="/del")
			public String del(int orderid){
				int i=orderServiceImpl.del(orderid);
				if(i>0){
					return "forward:/orderAction/findAll.action";
				}
				return "/error.jsp";
			}
}
