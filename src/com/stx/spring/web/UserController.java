package com.stx.spring.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.stx.spring.entity.TUser;
import com.stx.spring.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;

	// 用户登录

	@RequestMapping(value = "/userlogin.do", method = RequestMethod.POST)
	public String loginUser(TUser user, HttpServletRequest request,
			HttpSession session) {
		boolean res = userService.loginUser(user);
		if (res) {
			// 如果验证通过,则将用户信息传到前台
			request.setAttribute("user", user);
			// session保存信息
			session.setAttribute("user", user);
			// 返回home页面
			return "user/home";
			// return "../../shouye";

		} else {
			request.setAttribute("msg", "用户名或密码错误...");
			return "user/fail";
		}

	}

	// 注销登录
	@RequestMapping(value = "/exit.do")
	public String exit(HttpServletRequest req) {
		req.getSession().invalidate();
		return "user/index";
	}

	// 跳转到新增用户界面
	@RequestMapping(value = "/adduser.do")
	public String readmin() {
		return "user/addUser";
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	// 新增用户
	@RequestMapping(value = "/useradd.do", method = RequestMethod.POST)
	public String adminadd(TUser user, HttpServletRequest request) {
		boolean adduser = userService.addUser(user);
		if (adduser) {
			return "user/a";
		} else {

			return "user/b";
		}

	}

	// 用户签到
	@RequestMapping(value = "/usersing.do")
	public String singIn(TUser user, HttpSession session) {
		boolean singin = userService.singIn(user);
		System.out.println(user.getUserid());
		if (singin) {
			return "user/a1";
		} else {

			return "user/b2";
		}

	}

	// 查询所有用户
	@RequestMapping(value = "/usershow.do")
	public String usershow(HttpServletRequest request) {
		List<TUser> users = userService.queryUserList();
		// HashMap<String, List<TUser>> usermap = new
		// HashMap<String,List<TUser>>();
		request.setAttribute("users", users);
		return "user/List";

	}

	// 删除用户
	@RequestMapping(value = "/delets.do")
	@ResponseBody
	public int deleUser(int userid) {
		boolean deleUser = userService.deleUser(userid);
		return userid;
	}

	// 百度地图
	@RequestMapping("/bdmap.do")
	public String jumpBaidu() {
		return "/user/bdmap";
	}

	// 内部点餐跳转
	@RequestMapping("lxct.do")
	public String jumplxct() {
		return "/user/lxct";
	}

	// 跳转首页
	@RequestMapping("turnHome.do")
	public String jumpHome() {
		return "user/home";
	}

	// 跳转签到
	@RequestMapping(value = "/usersin.do")
	public String singIn() {
		return "/user/singIn";
	}

	// 跳转物资申请
	@RequestMapping("jumpLoan.do")
	public String jump() {
		return "/osapplication/wzsq";
	}

	// 跳转申请单查询
	@RequestMapping("jumpShowTable.do")
	public String jumpTable() {
		return "osapplication/queryosapplication";
	}

	// 跳转文件上传
	@RequestMapping("jumpFileUpload.do")
	public String jumpFile() {
		return "/File/upload";
	}

	// 跳转文件下载
	@RequestMapping("jumpFileDown.do")
	public String jumpFileDown() {
		return "/File/download";
	}

	// 跳转到news
	@RequestMapping("jumpNews.do")
	public String turnNews() {
		return "news/NewFile2";
	}

}
