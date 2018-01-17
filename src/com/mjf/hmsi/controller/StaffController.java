package com.mjf.hmsi.controller;

import java.io.FileNotFoundException;
import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.mjf.hmsi.bean.Staff;
import com.mjf.hmsi.bean.StaffUpdate;
import com.mjf.hmsi.service.StaffService;
import com.mjf.hmsi.util.FileToObjectHelper;
import com.mjf.hmsi.util.PassWordCreate;

@Controller
@RequestMapping("/staff")
public class StaffController {
	@Autowired
	private StaffService staffService;

	@RequestMapping(value = "staffAddUser")
	public ModelAndView staffAddUser(HttpServletRequest request) {
		PassWordCreate pwc = new PassWordCreate();
		String p = pwc.createPassWord(8);
		String p1 = pwc.createPassWord(8);
		String p2 = pwc.createPassWord(8);
		ModelAndView mav = new ModelAndView();
		mav.addObject("password", p);
		mav.addObject("password1", p1);
		mav.addObject("password2", p2);
		mav.setViewName("add_user");
		return mav;
	}
	
	@RequestMapping(value = "staffRegist")
	//@ResponseBody如果加上这句则不返回页面
	public String staffRegist(HttpServletRequest request) {
		String ipCheck = request.getParameter("ip");
		List<Staff> listStaff = new ArrayList<Staff>();
		listStaff = staffService.staffSelectByIP(ipCheck);
		if(listStaff.size()<=0) {
		Staff staff = new Staff();
		staff.setName(request.getParameter("name"));
		staff.setDepartment(request.getParameter("department"));
		staff.setTwoFourNineN(request.getParameter("twoFourNineN"));
		staff.setTwoFourNineP(request.getParameter("twoFourNineP"));
		staff.setIp(request.getParameter("ip"));
		staff.setInMail(request.getParameter("inMail"));
		staff.setOutMail(request.getParameter("outMail"));
		staff.setMailPassword(request.getParameter("mailPassword"));
		staff.setStartUpPassword(request.getParameter("startUpPassword"));
		staff.setLockPassword(request.getParameter("lockPassword"));
		staff.setWhetherYK(Boolean.valueOf(request.getParameter("whetherYK")));
		if(Boolean.valueOf(request.getParameter("whetherYK")) == true) {
			staff.setDomainName(request.getParameter("domainName"));
		}
		Date date = new Date();
		String nowTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date);
		System.out.println("打印时间"+nowTime);
		Timestamp createUserT = Timestamp.valueOf(nowTime);
		staff.setCreateUserT(createUserT);
		staff.setRecentlyAlterT(createUserT);
		System.out.println("打印用户信息"+staff.toString());
		try {
			staffService.staffRegist(staff);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}else {
			return "false";
		}
		return "add_user";
	}
	
	@RequestMapping(value = "staffSelectByName")
	public ModelAndView staffSelectByName(HttpServletRequest request) {
		String name = request.getParameter("name");
		List<Staff> listStaff = new ArrayList<Staff>();
		listStaff = staffService.staffSelectByName(name);
		ModelAndView mav = new ModelAndView();
		mav.addObject("listStaff", listStaff);
		mav.setViewName("select");
		return mav;
	}
	
	@RequestMapping(value = "staffSelect")
	public ModelAndView staffSelect(HttpServletRequest request) {
		String ip = request.getParameter("keyword");
		System.out.println("打印关键字"+ip);
		List<Staff> listStaff= new ArrayList<Staff>();
		listStaff = staffService.staffSelect(ip);
		for(int i = 0; i<listStaff.size(); i++) {
			Staff a = listStaff.get(i);
			System.out.println("ip shuchu"+a.getIp());
		}
		ModelAndView mav = new ModelAndView();
		mav.addObject("listStaff", listStaff);
		mav.setViewName("select");
		return mav;
	}
	
	@RequestMapping(value = "staffSelectByTwo49")
	public ModelAndView staffSelectByTwoFourNine(HttpServletRequest request) {
		String two49 = request.getParameter("two49");
		System.out.println("打印249关键字:"+two49);
		List<Staff> listStaff = new ArrayList<Staff>();
		listStaff = staffService.staffSelectByTwo49(two49);
		for(int i = 0; i<listStaff.size(); i++) {
			Staff a = listStaff.get(i);
			System.out.println("249返回输出:"+a.getIp());
		}
		ModelAndView mav = new ModelAndView();
		mav.addObject("listStaff", listStaff);
		mav.setViewName("select");
		return mav;
	}
	
	@RequestMapping(value = "staffSelectByIP")
	public ModelAndView staffSelectByIP(HttpServletRequest request) {
		String name = request.getParameter("ip");
		List<Staff> listStaff = new ArrayList<Staff>();
		listStaff = staffService.staffSelectByIP(name);
		ModelAndView mav = new ModelAndView();
		mav.addObject("listStaff", listStaff);
		mav.setViewName("select");
		return mav;
	}
	
	@RequestMapping(value = "staffSelectByMail")
	public ModelAndView staffSelectByMail(HttpServletRequest request) {
		String mailKeyword = request.getParameter("mail");
		List<Staff> listStaff = new ArrayList<Staff>();
		String finalMail = mailKeyword+"%";
		listStaff = staffService.staffSelectByMail(finalMail);
		ModelAndView mav = new ModelAndView();
		mav.addObject("listStaff", listStaff);
		mav.setViewName("select");
		return mav;
	}
	
	@RequestMapping(value = "staffSelectBy3IP")
	public ModelAndView staffSelectBy3IP(HttpServletRequest request) {
		String thirdIP = request.getParameter("thirdIP");
		String finalIP = "192.168."+thirdIP+".%";
		System.out.println("打印最终拼接的IP地址:"+finalIP);
		List<Staff> listStaff = new ArrayList<Staff>();
		listStaff = staffService.staffSelectBy3IP(finalIP);
		for(int i = 0; i<listStaff.size(); i++) {
			Staff a = listStaff.get(i);
			System.out.println("IP筛选输出:"+a.getId()+";"+a.getName()+a.getIp());
		}
		ModelAndView mav = new ModelAndView();
		mav.addObject("listStaff", listStaff);
		mav.setViewName("select");
		return mav;
	}
	
	@RequestMapping(value = "serializableToObj")
	public String serializableToObj(HttpServletRequest request) {
		FileToObjectHelper fh = new FileToObjectHelper();
		List<Staff> listStaff = new ArrayList<Staff>();
		try {
			listStaff = fh.serializableToObj();
			for(int i = 0; i < listStaff.size(); i++) {
				Staff staff = listStaff.get(i);
				System.out.println("准备存入检查:"+staff.toString());
				staffService.staffRegist(staff);
			}
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "success";
	}
	
	@RequestMapping(value = "index")
	public ModelAndView index(HttpServletRequest request) {
		String userName = (String) request.getAttribute("loginUser");
		System.out.println("重定向数据输出:"+userName);
		ModelAndView mav = new ModelAndView("index");
		mav.addObject("loginUser", userName);
		return mav;
	}
	
	@RequestMapping(value = "updateStaffInfo")
	public ModelAndView updateStaffInfo(HttpServletRequest request) {
		String name = request.getParameter("ip");
		List<Staff> listStaff = new ArrayList<Staff>();
		listStaff = staffService.staffSelectByIP(name);
		Staff s=null;
		if(listStaff.size()<=1) {
			s = listStaff.get(0);
		}
		ModelAndView mav = new ModelAndView();
		mav.addObject("Staff", s);
		mav.setViewName("update_staff");
		return mav;
	}
	
	@RequestMapping(value = "updateStaffInfo1")
	public ModelAndView updateStaffInfo1(HttpServletRequest request) {
		StaffUpdate staffUpdate = new StaffUpdate();
		staffUpdate.setId(Integer.valueOf(request.getParameter("id")));
		staffUpdate.setName(request.getParameter("name"));
		staffUpdate.setDepartment(request.getParameter("department"));
		staffUpdate.setTwoFourNineN(request.getParameter("twoFourNineN"));
		staffUpdate.setTwoFourNineP(request.getParameter("twoFourNineP"));
		staffUpdate.setIp(request.getParameter("ip"));
		staffUpdate.setInMail(request.getParameter("inMail"));
		staffUpdate.setOutMail(request.getParameter("outMail"));
		staffUpdate.setMailPassword(request.getParameter("mailPassword"));
		staffUpdate.setStartUpPassword(request.getParameter("startUpPassword"));
		staffUpdate.setLockPassword(request.getParameter("lockPassword"));
		staffUpdate.setWhetherYK(false);
		staffUpdate.setDomainName(request.getParameter("domainName"));
		
		Date date = new Date();
		String nowTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date);
		System.out.println("打印时间"+nowTime);
		Timestamp createUserT = Timestamp.valueOf(nowTime);
		staffUpdate.setRecentlyAlterT(createUserT);
		
		staffService.staffInfoUpdate(staffUpdate);
		return new ModelAndView("success");
	}
	
	@RequestMapping(value = "staffDelete")
	public String staffDelete(HttpServletRequest request) {
		String id = request.getParameter("id");
		int id1 = Integer.valueOf(id);
		staffService.staffDelete(id1);
		return "success";
	}
}
