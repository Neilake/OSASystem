package com.stx.spring.web;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JFileChooser;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.stx.spring.entity.UploadEntity;
import com.stx.spring.service.NewsService;

@Controller
@RequestMapping("/File")
public class FileController {
	@RequestMapping(value="upload.do", method=RequestMethod.POST)
	
	//文件上传
	public String upload(@RequestParam("pfile") MultipartFile file,HttpServletRequest request,UploadEntity entity){
		if (!file.isEmpty()) {  
            try {
           
      String fileName = file.getOriginalFilename();
        int pos = fileName.lastIndexOf(".");
         
           String newName = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()) + fileName.substring(pos);
      
         String filePath = request.getSession().getServletContext().getRealPath("/") + "/attached/docupload/"  
                  + newName;  
         entity.setFileName(fileName.substring(0, pos));
         entity.setFileUrl("/attached/docupload/" + newName);
    
          file.transferTo(new File(filePath));	request.setAttribute("entity", entity);
            } catch (Exception e) {  
                e.printStackTrace();  
            }
       }
		return "success";
	}
	//文件下载到本地
	@RequestMapping(value="download.do", method=RequestMethod.POST)
	 public static void downloadFile(@RequestParam("pfile") MultipartFile file,HttpServletRequest request,HttpServletResponse response) throws java.io. IOException {
			if (!file.isEmpty()) {  
	           
			JFileChooser fd = new JFileChooser();
			fd.setFileSelectionMode(JFileChooser.DIRECTORIES_ONLY);
			fd.showOpenDialog(null);
			File f = fd.getSelectedFile();
			String fk = f.getAbsolutePath();
			String fileName = file.getOriginalFilename();
		      int pos = fileName.lastIndexOf(".");
		         
		           String newName = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()) + fileName.substring(pos);
		           String filePath = fk  
		                   + newName;  
			file.transferTo(new File( filePath));
	            }
	        }
			
	
}
	

