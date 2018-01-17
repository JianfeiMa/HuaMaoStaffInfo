package com.mjf.hmsi.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mjf.hmsi.bean.ITManager;
import com.mjf.hmsi.service.ITManagerService;

@Controller
@RequestMapping("/itManager")
public class ITManagerController {
	@Autowired
	private ITManagerService itManagerService;

	@RequestMapping(value = "itManagerRedirectAdd")
	public String itManagerRedirectAdd(HttpServletRequest request) {
		return "add_it_manager";
	}
	
	@RequestMapping(value="itManagerRegist")
	public String itManagerRegist(HttpServletRequest request) {
		ITManager itManager = new ITManager();
		itManager.setName(request.getParameter("name"));
		itManager.setPassword(request.getParameter("password"));
		try {
			itManagerService.itManagerRegist(itManager);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "index";
	}
	
	@RequestMapping("itManagerLogin")
	public ModelAndView itManagerLogin(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		Map<String, Object> result = new HashMap<String, Object>();
		
		ITManager itManager = new ITManager();
		
		itManager.setName(request.getParameter("name"));
		String password = request.getParameter("password");
		itManager.setPassword(password);
		System.out.println("ITManager管理员信息输出:"+itManager.toString());
		
		ITManager itManagerSelect = itManagerService.queryUserforName(itManager.getName());
		if(itManagerSelect != null) {
			ITManager iml = itManagerService.itManagerLogin(itManager);
			if(iml != null) {
				request.getSession().setAttribute("username", request.getParameter("name"));
				mav.addObject("loginUser", itManagerSelect.getName());
				mav.setViewName("forward:/staff/index.do");
				//request.getRequestDispatcher("/WEB-INF/jsp/index.jsp").forward(request, response);
				System.out.println("登陆成功"+iml.toString());
			}else {
				mav.addObject("respMsg", "密码不正确");
				mav.setViewName("redirect:/login.jsp");
			}
		}else {
			mav.addObject("respMsg", "用户不存在");
			mav.setViewName("redirect:/login.jsp");//redirect在客户端重定向页面
			//mav.setViewName("redirect:/itManagerLogin");//redirect在客户端重定向方法
		}
		return mav;
	}
	
	@RequestMapping(value = "itManagerOffline")
	public ModelAndView itManagerOffline(HttpServletRequest request) {
		request.getSession().invalidate();
		ModelAndView mav = new ModelAndView("redirect:/itManager/itManagerLogin.do");
		return mav;
	}
	
	/**
	 * 此方法用于测试:ServletContext application = request.getSession().getServletContext();
	 * @param request
	 * @return
	 */
	@RequestMapping("itManagerQuery")
	public ModelAndView itManagerQueryStaff(HttpServletRequest request) {
		//ServletContext application是应用全局共享
		ServletContext application = request.getSession().getServletContext();
		List<String> loginList = new ArrayList<String>();
		loginList.add("zhangsan");
		loginList.add("wangwu");
		loginList.add("lisi");
		application.setAttribute("loginlist", loginList);
		return new ModelAndView("it_manager_query");
	}
}
