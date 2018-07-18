package com.stx.spring.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.portlet.ModelAndView;

import com.stx.spring.entity.Dept;
import com.stx.spring.entity.Posit;
import com.stx.spring.entity.TAdmin;
import com.stx.spring.entity.TUser;
import com.stx.spring.service.AdminService;
import com.stx.spring.service.UserService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@Autowired
	private AdminService adminService;

	public AdminService getAdminService() {
		return adminService;
	}

	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}

	@RequestMapping(value = "/adminlogin.do", method = RequestMethod.POST)
	public String loginAdmin(TAdmin admin, HttpServletRequest request,
			HttpSession session) {
		boolean res = adminService.loginAdmin(admin);
		if (res) {
			// 如果验证通过,则将用户信息传到前台
			request.setAttribute("admin", admin);
			// session保存信息
			session.setAttribute("admin", admin);
			// 返回home页面
			return "admin/home";

		} else {
			request.setAttribute("msg", "用户名或密码错误...");
			return "admin/fail";
		}

	}

	// 跳转页面
	@RequestMapping(value = "/TurnAdmin.do")
	public String turnLogin() {
		return "adminlogin";

	}

	// 注销登录
	@RequestMapping(value = "/exit.do")
	public String exit(HttpServletRequest req) {
		req.getSession().invalidate();
		return "adminlogin";
	}

	// 跳转到添加部门
	@RequestMapping(value = "/returnDept.do")
	public String dept() {
		return "admin/addDept";
	}

	// 添加部门
	@RequestMapping(value = "/dept_add.do")
	public String addDept(Dept dept, HttpServletRequest request) {
		boolean dept_add = adminService.dept_add(dept);
		if (dept_add) {
			request.setAttribute("msg", "添加成功!");
			return "admin/addDept";
		} else {
			request.setAttribute("msg", "添加失败...");
			return "admin/addDept";
		}
	}

	// 查询部门
	@RequestMapping(value = "/ShowDept.do")
	public String showDept(HttpServletRequest request) {
		List<Dept> dept = adminService.queryDeptList();
		request.setAttribute("dept", dept);
		return "admin/ShowDept";
	}

	// 删除部门
	@RequestMapping(value = "/deletDept.do")
	@ResponseBody
	public int deleDept(int dept_id) {
		boolean deleDept = adminService.deleDept(dept_id);
		return dept_id;

	}
	//编辑部门
	@RequestMapping("/dept_update.do")
	public String updata(String dept_id, HttpServletRequest request){
		return "success";
	}

	// 跳转界面
	@RequestMapping(value = "/returnPosit.do")
	public String posit() {
		return "admin/addPosit";
	}

	// 添加职位
	@RequestMapping(value = "/addPosit.do")
	public String addPosit(Posit posit, HttpServletRequest request) {
		boolean posit_add = adminService.posit_add(posit);
		if (posit_add) {
			request.setAttribute("msg", "添加成功!");
			return "admin/addPosit";
		} else {
			request.setAttribute("msg", "添加失败...");
			return "admin/addPosit";
		}
	}

	// 查询职位
	@RequestMapping(value = "/ShowPosit.do")
	public String showPosit(HttpServletRequest request) {
		List<Posit> posit = adminService.queryPositList();
		request.setAttribute("posit", posit);
		return "admin/ShowPosit";
	}
	// 删除职位
	@RequestMapping("/deletPosit.do")
	@ResponseBody
	public int delePosit(int posit_id) {
		boolean delePosit = adminService.delePosit(posit_id);
		return posit_id;

	}

}
