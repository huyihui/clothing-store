package com.huyihui.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.huyihui.model.Product;
import com.huyihui.model.User;
import com.huyihui.service.UserService;

@Controller
@RequestMapping(value = "/userAction")
public class UserAction {

	// 注解注入serviceimpl
	@Resource(name = "userServiceImpl")
	private UserService userServiceImpl;

	@RequestMapping(value = "/login")
	public String login(User user, HttpSession session) {
		User newUser = userServiceImpl.login(user);
		try {
		session.setAttribute("user", newUser);
		if (newUser.getUserstatus() == 2) {
			return "/index.jsp";
		}else if (newUser.getUserstatus() == 1) {
			return "/hou_index.jsp";
		}
		} catch (Exception e) {
			return "/qingdenglu.jsp";
		}
		return "/error.jsp";
	}

	@RequestMapping(value = "/regist")
	public String regist(User user) {
		try {
			int i = userServiceImpl.regist(user);
			if (i > 0) {
				return "/login.jsp";
			}
		} catch (Exception e) {
			return "/qingdenglu.jsp";
		}
		
		return "/regist.jsp";
	}

	/*
	 * 
	 * 
	 * 管理员部分
	 * 
	 * 
	 * 
	 */
	// 管理员查询所有用户
	@RequestMapping(value = "/findAlll")
	public String findAlll(Model model) {
		List<User> list = userServiceImpl.findAlll();
		model.addAttribute("list", list);
		return "/hou_putonguser.jsp";
	}

	@RequestMapping(value = "/findAlll1")
	public String findAlll1(Model model) {
		List<User> list = userServiceImpl.findAlll1();
		model.addAttribute("list", list);
		if (list != null) {
			return "/hou_manager.jsp";
		} else {
			return "/error.jsp";
		}
	}

	// 管理员删除用户
	@RequestMapping(value = "/deldel")
	public String deldel(int userid) {
		int i = userServiceImpl.deldel(userid);
		if (i > 0) {
			return "forward:/userAction/findAlll.action";
		}
		return "error.jsp";
	}

	// 管理员删除管理员
	@RequestMapping(value = "/deldel1")
	public String deldel1(int userid) {
		int i = userServiceImpl.deldel(userid);
		if (i > 0) {
			return "forward:/userAction/findAlll1.action";
		}
		return "error.jsp";
	}

	// 管理员更新普通用户1
	@RequestMapping(value = "/finduser")
	public String finduser(int userid, Model model) {
		User newUser = userServiceImpl.finduser(userid);
		model.addAttribute("user", newUser);
		if (newUser != null) {
			return "/hou_putonguser2.jsp";
		} else {
			return "/error.jsp";
		}
	}

	// 管理员更新普通管理员1
	@RequestMapping(value = "/finduser1")
	public String finduser1(int userid, Model model) {
		User newUser = userServiceImpl.finduser(userid);
		model.addAttribute("user", newUser);
		if (newUser != null) {
			return "/hou_manager2.jsp";
		} else {
			return "/error.jsp";
		}
	}

	// 管理员更新普通用户2
	@RequestMapping(value = "/updaupda")
	public String updaupda(User user) {
		int i = userServiceImpl.updaupda(user);
		if (i > 0) {
			return "redirect:/userAction/findAlll.action";
		}
		return "/error.jsp";
	}

	// 管理员更新普通管理员2
	@RequestMapping(value = "/updaupda1")
	public String updaupda1(User user) {
		int i = userServiceImpl.updaupda(user);
		if (i > 0) {
			return "redirect:/userAction/findAlll1.action";
		}
		return "/error.jsp";
	}

	// 创建管理员用户
	@RequestMapping(value = "/addadd")
	public String addadd(User user) {
		int i = userServiceImpl.addadd(user);
		if (i > 0) {
			return "redirect:/userAction/findAlll1.action";
		}
		return "/error.jsp";
	}
}
