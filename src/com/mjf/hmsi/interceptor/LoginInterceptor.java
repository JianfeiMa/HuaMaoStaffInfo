package com.mjf.hmsi.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class LoginInterceptor implements HandlerInterceptor {

	@Override
	public void afterCompletion(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {
		// TODO Auto-generated method stub

	}

	/**
	 * 返回false,请求将被终止
	 * 返回true,请求将被继续
	 */
	@Override
	public boolean preHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2) throws Exception {
		// TODO Auto-generated method stub
		String url = arg0.getRequestURI();
		System.out.println("打印URL:"+url);
		//URL:login.jsp是公开的,除了login.jsp是可以公开访问的,其他的URL都进行拦截控制
		if(url.indexOf("/HuaMaoStaffInfo/itManager/itManagerLogin.do")>=0) {
			System.out.println("indexOf(itManagerLogin.do)"+"请求将被继续");
			return true;
		}
		//获取Session
		HttpSession session = arg0.getSession();
		String username = (String) session.getAttribute("username");
		if(username != null) {
			System.out.println("判断用户是否存在"+"请求将被继续");
			return true;
		}
		//不符合条件的,跳转到登录页面
		arg0.getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(arg0, arg1);
		
		/*if(arg0.getSession().getCreationTime() < 0.00) {
			return true;
		}else {
			if(arg0.getSession().getAttribute("user") == null) {
				arg0.getRequestDispatcher("/login_test.jsp").forward(arg0, arg1);
				return false;
			}
		}*/
		System.out.println("执行到最后被拦截");
		return false;
	}

}
