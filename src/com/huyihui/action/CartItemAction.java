package com.huyihui.action;

import java.lang.ProcessBuilder.Redirect;
import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.huyihui.model.CartItem;
import com.huyihui.service.CartItemService;


@Controller
@RequestMapping(value="/cartItemAction")
public class CartItemAction {
	
	//注解注入serviceimpl
		@Resource(name="cartItemServiceImpl")
		private CartItemService cartItemServiceImpl;
		
		
		
	@RequestMapping(value="/addd")
	public String addd(CartItem cartItem,Model model){
		try{
		System.out.println(cartItem.getUserid());
		int i=cartItemServiceImpl.addd(cartItem);
		if(i>0){
			
			findproById(cartItem.getUserid(), model);
		}}catch(Exception e){
			return "/qingdenglu.jsp";
		}
		return "/car.jsp";
	}
	
	@RequestMapping(value="/findproById")
	public String findproById(int userid,Model model){
		try{
		List<CartItem> list=cartItemServiceImpl.findproById(userid);
		System.out.println(list.size()+"+++++++++++++");
		model.addAttribute("list", list);
		}catch(Exception e){
			return "/qingdenglu.jsp";
		}
		return "/car.jsp";
	}
	//删除购物车
	@RequestMapping(value="dellll")
	public String dellll(int cartItid){
		int i=cartItemServiceImpl.dellll(cartItid);
		if(i>0){

//		return "redirect:/cartItemAction/findproById.action?userid=${sessionScope.user.userid}";
		return "/index.jsp";
		}
		return "/error.jsp";
	}
}
