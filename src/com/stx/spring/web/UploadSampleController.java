package com.stx.spring.web;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.stx.spring.service.NewsService;
import com.stx.spring.entity.UploadEntity;

@Controller
@RequestMapping("/News")
public class UploadSampleController {
	@Autowired
	public NewsService news;
	

	// 跳转到添加新闻界面
	@RequestMapping("turnAddNews.do")
	public String jump() {
		return "news/editor";
	}

	// 添加新闻信息
	@RequestMapping(value = "addNews.do", method = RequestMethod.POST)
	public String upload(@RequestParam("pfile") MultipartFile file,
			UploadEntity entity, String content, HttpServletRequest request,
			String uname, String name) {
		if (!file.isEmpty()) {
			try {

				String fileName = file.getOriginalFilename();
				int pos = fileName.lastIndexOf(".");

				String newName = new SimpleDateFormat("yyyyMMddHHmmss")
						.format(new Date()) + fileName.substring(pos);

				String filePath = request.getSession().getServletContext()
						.getRealPath("/")
						+ "/attached/docupload/" + newName;

				file.transferTo(new File(filePath));
				news.addLeav(uname, content, newName, name);
				/*
				 * entity.setFileName(fileName.substring(0, pos));
				 * entity.setFileUrl("/attached/docupload/" + newName);
				 * 
				 * //通过业务层，保存信息到DB中 user.addLeav(uname,thing,newName);
				 * request.setAttribute("entity", entity);
				 */
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return "success";
	}

	// 从新闻数据库里取出信息
	@RequestMapping("selectNewscheck.do")
	public String selectNew(HttpServletRequest request, UploadEntity entity,
			String nametwo, String titlee) throws UnsupportedEncodingException {

		if (nametwo == null) {
			 byte[] tb=titlee.getBytes("ISO-8859-1"); 
			 titlee=new String(tb);

			String hh = news.selectnumber(titlee);
			int id = Integer.parseInt(hh);
			String newName = news.selecttwo(id);
			String title = news.selectNew(id);
			String thing = news.selectThing(id);
			String person = news.selectPerson(id);
			String time = news.selectTime(id);
			entity.setUid(id);
			entity.setPerson(person);
			entity.setTime(time);
			entity.setFileName(title);
			entity.setContent(thing);
			entity.setFileUrl("/attached/docupload/" + newName);
			request.setAttribute("entity", entity);
		} else {
			int num = Integer.parseInt(nametwo);
			String title = news.selectNew(++num);
			String newName = news.selecttwo(num);
			String thing = news.selectThing(num);
			String person = news.selectPerson(num);
			String time = news.selectTime(num);
			entity.setUid(num);
			entity.setPerson(person);
			entity.setTime(time);
			entity.setFileName(title);
			entity.setContent(thing);
			entity.setFileUrl("/attached/docupload/" + newName);
			request.setAttribute("entity", entity);
		}

		return "/news/kindsuc";
	}

	// 查询新闻信息
	@RequestMapping("selectNews.do")
	public String selectNew(HttpServletRequest request,UploadEntity entity){
		ArrayList ss=	news.selectAll();
		Iterator<String> sss=ss.iterator();
		while(sss.hasNext()){
		String element=sss.next()	;
		}
	  request.setAttribute("entity", ss);
	return "/user/home";
	}

	// 查询新闻标题
	@RequestMapping("/ShowNews_id")
	public String showNewsTitle(HttpServletRequest request) {
		List<UploadEntity> upload = news.showNewsTitle();
		request.setAttribute("upload", upload);
		return "news/title";
	}

}
