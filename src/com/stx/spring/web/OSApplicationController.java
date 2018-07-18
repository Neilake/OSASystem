package com.stx.spring.web;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.stx.spring.entity.Goods;
import com.stx.spring.entity.OSApplication;
import com.stx.spring.entity.TUser;
import com.stx.spring.service.OSApplicationService;

@Controller
@RequestMapping("/osa")
public class OSApplicationController {

	@Autowired
	OSApplicationService oSApplicationServiceImp;

	// 添加物资申请表控制器
	@RequestMapping(value="/addosapplication.do",method=RequestMethod.POST)
	public String addOSApplication(String[] goodsName, String[] goodsSize, String[] goodsNum, String departmentName,
			String userName, String reason, String directorOpnion, String managerOpnion, double totalmoney) {
	
		List<Goods> goods = new ArrayList<Goods>();
		for (int i = 0; i < goodsName.length; i++) {
			System.out.println(goodsName[i]);
			if (goodsName[i] == null || "".equals(goodsName[i]))
				break;
			Goods g = new Goods(null, goodsName[i], goodsSize[i], goodsNum[i]);
			goods.add(g);
		}
		OSApplication oSApplication = new OSApplication(null, departmentName, oSApplicationServiceImp.applicationTime(),userName, reason, directorOpnion, managerOpnion, totalmoney, goods);
		System.out.println(oSApplication.getDepartmentName());
		oSApplicationServiceImp.addOSApplication(oSApplication);
		return "/user/home";
	}

	// 查询一张物资申请表的详细信息
	@RequestMapping(value="/querydetail.do")
	public String queryDetail(HttpServletRequest request, HttpServletResponse response) {

		OSApplication oSApplication1 = null;
		String id = request.getParameter("OSApplicationId");
		List<OSApplication> osa = oSApplicationServiceImp.queryOSApplication();
		Iterator<OSApplication> iter = osa.iterator();
		while (iter.hasNext()) {
			OSApplication oSApplication = iter.next();
			if (oSApplication.getOSApplicationId().equals(id)) {
				oSApplication1 = oSApplication;

				// 将查询出来的数据库数字状态改为中文 主管
				switch (oSApplication1.getDirectorOpnion()) {

				case "2":
					oSApplication1.setDirectorOpnion("待主管审批");
					break;
				case "1":
					oSApplication.setDirectorOpnion("主管审批通过");
					break;
				case "0":
					oSApplication.setDirectorOpnion("主管未允通过");
					break;
				default:
					oSApplication.setDirectorOpnion("哪个仙人乱改源码，自己改回去");
				}
				// 将查询出来的数据库数字状态改为中文 经理
				switch (oSApplication1.getManagerOpnion()) {
				case "2":
					oSApplication1.setManagerOpnion("待经理审批");
					break;
				case "1":
					oSApplication1.setManagerOpnion("经理审批通过");
					break;
				case "0":
					oSApplication1.setManagerOpnion("主管未允通过");
					break;
				}
				break;
			}
		}
		request.setAttribute("oSApplication1", oSApplication1);
		return "forward:/WEB-INF/jsp/osapplication/querydetail.jsp";
	}

	// 查询所有表
	@RequestMapping(value="/queryosapplication.do")
	public String queryAllOSApplication(HttpServletRequest request, HttpServletResponse response) {
		List<OSApplication> osa = oSApplicationServiceImp.queryOSApplication();
		request.setAttribute("osa", osa);
		return "/osapplication/query";
	}

	// 主管或经理生审批是否允许借取物资
	@RequestMapping(value="/leaderupdateosapplication.do",method=RequestMethod.POST)
	public String querdyAllOSApplication(HttpSession session,String oSApplicationId,String Opnion) {
		TUser user = (TUser) session.getAttribute("user");
		OSApplication oSApplication	= new OSApplication();
		oSApplication.setOSApplicationId(oSApplicationId);
		if(user!=null) {
		switch (user.getPermission()) {
			case 3:oSApplication.setDirectorOpnion(Opnion);
			case 2:oSApplication.setManagerOpnion(Opnion);
		}
		}
		oSApplicationServiceImp.updateOSApplication(oSApplication, user);
		
		return "forward:/WEB-INF/jsp/osapplication/query.jsp";
	}

	@RequestMapping(value="/ajaxdemo.do")
	@ResponseBody
	public List<OSApplication> ajaxtest(HttpServletResponse response) {
		List<OSApplication> osa = oSApplicationServiceImp.waitForDealOpnion();
		return osa;

	}

}
