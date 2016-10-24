package com.huyihui.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.huyihui.model.Talk;
import com.huyihui.model.User;
import com.huyihui.service.TalkService;



@Controller
@RequestMapping(value = "/talkAction")
public class TalkAction {

	//注解注入serviceimpl
		@Resource(name = "talkServiceImpl")
		private TalkService talkServiceImpl;
	//查询评论	
		@RequestMapping(value = "/findAll")
		  public @ResponseBody List<Talk> findAll() {
			List<Talk> list = talkServiceImpl.findAll();	
			return list;
		}	
	
//		@RequestMapping(value = "/findAll")
		 				// qu  bu  dao  zhi
//		public @ResponseBody List<Talk> findAll(HttpSession session) {
//			List<Talk> list = talkServiceImpl.findAll();
//			session.setAttribute("list", list);
//			return list;
//		}
//						//wu fa  yi  bu  shua  xin
//		public List<Talk> findAll(HttpSession session) {
//			List<Talk> list = talkServiceImpl.findAll();
//			session.setAttribute("list", list);
//			return null;
//		}
		
		//添加评论
		@RequestMapping(value="/add")
		public String add(Talk talk){
			int i=talkServiceImpl.add(talk);
			if(i>0){
				return "/contus.jsp";
			}
			return "/qingdenglu.jsp";
		}
		/*
		 * 
		 * 
		 * 管理员部分
		 * 
		 * 
		 */
		
		//管理员查询评论
		@RequestMapping(value = "/findAll1")
		  public String findAll1(Model model) {
			List<Talk> list = talkServiceImpl.findAll();
			model.addAttribute("list", list);
			if(list!=null){
				return "/hou_pinglun.jsp";
			}else {
				return "/error.jsp";
			}
		}
		//管理员删除评论
		@RequestMapping(value = "/deldel")
		public String deldel(int talkid) {
			int i=talkServiceImpl.deldel(talkid);
			if (i > 0) {
				return "forward:/talkAction/findAll1.action";
			}
			return "error.jsp";
		}
}
