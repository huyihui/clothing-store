package com.huyihui.action;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.huyihui.model.Product;
import com.huyihui.service.ProductService;
import com.mysql.jdbc.Blob;

@Controller
@RequestMapping(value="/productAction")
public class ProductAction {

	//注解注入serviceimpl
	@Resource(name="productServiceImpl")
	private ProductService productServiceImpl;

	@Autowired  
	private  HttpServletRequest request;  
	@Autowired 
	private ServletContext servletContext;
	
	//查找所有商品
	@RequestMapping(value="/findAllPro")
	public String findAllPro(Model model){
		
		List<Product> list =productServiceImpl.findAllPro();
		model.addAttribute("list", list);
		if(list!=null){
			return "/NewFile.jsp";
		}else{
			return "/error.jsp";
		}
	}
	@RequestMapping(value="/findAllPro1")
	public String findAllPro1(Model model){
		
		List<Product> list =productServiceImpl.findAllPro();
		model.addAttribute("list", list);
		if(list!=null){
			return "/chenshan.jsp";
		}else{
			return "/error.jsp";
		}
	}
/*	//查找图片
	@RequestMapping(value="/findPic")
	public String findPic(Product product,HttpSession session) throws IOException{
		
		String url=productServiceImpl.findPic(product);
		session.setAttribute("url", url);	
		return "/NewFile.jsp";
	}*/
	//根据id查找产品
	@RequestMapping(value="/findById")
	public String findById(Product product,Model model){
		Product newProduct=productServiceImpl.findById(product);
		model.addAttribute("product", newProduct);
		if(newProduct!=null){
		return "/xiangqing.jsp";
		}else{
			return "/error.jsp";
		}
	}
	/*
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 管理员部分
	 * 
	 * 
	 * 
	 * 
	 * 
	 */
//上传图片
	@RequestMapping(value="/upPicc")
	public String upPicc(HttpSession session,Model model) throws UnsupportedEncodingException{
		Product product=null;
		String message="";
		DiskFileItemFactory factory= new DiskFileItemFactory();
		ServletFileUpload upload= new ServletFileUpload(factory);
		upload.setFileSizeMax(20*1024*1024);
		upload.setSizeMax(200*1024*2014);
		upload.setHeaderEncoding("UTF-8");
		if(upload.isMultipartContent(request)){
			try{
			List<FileItem> list=upload.parseRequest(request);
			product = new Product();
			for(FileItem item:list){
				if(item.isFormField()){
					String inputName=item.getFieldName();
//					System.out.println(inputName+"-"+value);
					if(inputName.equals("proname")){
						String value=item.getString();
						product.setProname(value);
//						 System.out.println(value);
					}else if(inputName.equals("proprice")){
						int value=Integer.parseInt(item.getString());
						product.setProprice(value);
					}else if(inputName.equals("procount")){
						int value=Integer.parseInt(item.getString());
						product.setProcount(value);
					}
					
				}else{
					String name=item.getName();
					String id=UUID.randomUUID().toString();
					name=id+"-"+name;
					
					String curPath=servletContext.getRealPath("/");
					//String basePath=servletContext.getRealPath("upload");
					File file2 = new File(curPath);
					File file=new File(file2.getParent(),"upload");
					file.mkdir();
					//System.out.println(file.getPath()+"--------");
					File file1=new File(file.getPath(), name);
					session.setAttribute("picpath", name);
					product.setProphoto(name);
//					System.out.println(file1.getPath());
					item.write(file1);
					item.delete();
					message="上传成功!";
					//插入product表
				
//					product.setProphoto(file1.getPath());
//					productServiceImpl.upPicc(product);
					
				}
			}
			}catch(Exception e){
				System.out.println("上传失败  (T.T)!");
				e.printStackTrace();
			}
			
		}
		
		productServiceImpl.upPicc(product);
		model.addAttribute("message", message);
		return "/hou_pro2.jsp";
	}
	
//	@RequestMapping(value="/getList")
//	public String getList(Model model){
//		String totalName="";
//		String shortName="";
//		Map<String, String> map=new HashMap<String,String>();
//		String basePath=servletContext.getRealPath("/");
//		File file=new File(basePath);
//		String path = file.getParent();
//		File file1=new File(path,"upload");
//		String[] fileNames=file1.list();
//		for(String name:fileNames){
//			totalName=name;
//			int num=name.lastIndexOf("-");
//			shortName=name.substring(num+1);
//			map.put(totalName, shortName);
//			
//		}
//		System.out.println(map.size()+"========");
//		model.addAttribute("map",map);
//		return "/hou_pro3.jsp";
//	}
//	
	//查找产品
	@RequestMapping(value="/getListPro")
	public String getListPro(Model model){
		
		List<Product> list =productServiceImpl.getListPro();
		model.addAttribute("list", list);
		if(list!=null){
		return "/hou_pro3.jsp";
		}else{
			return "/error.jsp";
		}
	}
	
	//删除产品
	@RequestMapping(value="/delpro")
	public String delpro(int proid) {
		
		int i=productServiceImpl.delpro(proid);

		if(i>0){
			return "forward:/productAction/getListPro.action";
		}
		return "/error.jsp";
		
	}
	//修改产品
	@RequestMapping(value="/updpro")
	public String updpro(Product product) {
		int i=productServiceImpl.updpro(product);
		if(i>0){
			return "redirect:/productAction/getListPro.action";
		}
		return "/error.jsp";
	}
	//更新(+)
	@RequestMapping(value="/findprobyid")
	public String findprobyid(Product product,Model model){
		Product newProduct=productServiceImpl.findprobyid(product);
		model.addAttribute("product", newProduct);
		if(newProduct!=null){
		return "/hou_pro4.jsp";
		}else{
			return "/error.jsp";
		}
	}
}
