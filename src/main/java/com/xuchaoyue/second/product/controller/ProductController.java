package com.xuchaoyue.second.product.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import com.xuchaoyue.second.product.model.ProductModel;
import com.xuchaoyue.second.product.service.ProductService;

@Controller
@RequestMapping("/productcontroller")
public class ProductController {
	
	@Autowired
	private ProductService ps;
	String PATH="D:/image/";
	
	
@RequestMapping(value="/pager",produces="application/json;charset=UTF-8")
@ResponseBody
public String Pager(ProductModel pm) {
	JSONObject jo =new JSONObject();
	jo.put("list", ps.list(pm));
	jo.put("count", ps.getcount(pm));

	return jo.toString();
}
@RequestMapping(value="/pager1",produces="application/json;charset=UTF-8")
@ResponseBody
public String Pager1(ProductModel pm) {
	JSONObject jo =new JSONObject();
	jo.put("list", ps.list1(pm));
	jo.put("count", ps.getcount1(pm));

	return jo.toString();
}
@RequestMapping("/change")
@ResponseBody
public String Change(ProductModel pm) {
	return String.valueOf(ps.update(pm));
}
@RequestMapping("/delete1")
@ResponseBody
public String Delete(ProductModel pm) {
	return String.valueOf(ps.dalete(pm));
}
@RequestMapping(value="/find",produces="application/json;charset=UTF-8")
@ResponseBody
public  String Find(ProductModel pm) {
	JSONObject jo =new JSONObject();
	jo.put("parentcode", ps.option(pm));
	return jo.toString();
}
@RequestMapping(value="/insert",produces="application/json;charset=UTF-8")
@ResponseBody
public String Insert(ProductModel pm) {
return ps.insert(pm);
}
@RequestMapping(value="/insert1",produces="application/json;charset=UTF-8")
@ResponseBody
public String Insert1(ProductModel pm) {
return ps.insert1(pm);
}
@RequestMapping(value="findcode",produces="application/json;charset=UTF-8")
@ResponseBody
public  String FindCode(ProductModel pm) {

	JSONObject jo =new JSONObject();

	jo.put("code", ps.option2(pm));
	return jo.toString();
}
@RequestMapping(value="selectall",produces="application/json;charset=UTF-8")
@ResponseBody
public  String SelectAlee(ProductModel pm) {

	JSONObject jo =new JSONObject();

	jo.put("all", ps.selectall(pm));
	return jo.toString();
}
@RequestMapping(value="xiangqing",produces="application/json;charset=UTF-8")
@ResponseBody
public  String XiangQing(ProductModel pm) {

	JSONObject jo =new JSONObject();

	jo.put("product", ps.select3(pm));
	return jo.toString();
}
@RequestMapping(value="image",produces="application/json;charset=UTF-8")
@ResponseBody
public  String Image(ProductModel pm) {

	JSONObject jo =new JSONObject();

	jo.put("image", ps.image(pm));
	return jo.toString();
}

@ResponseBody
@RequestMapping("/upload")
public String upload(String productid,HttpServletRequest request) throws IllegalStateException, IOException {
	File f = new File(PATH);// windows系统是双右斜线
	if (!f.exists()) {// 判断文件夹是否存在
		f.mkdirs();// 创建文件夹
	}
	CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(
            request.getSession().getServletContext());
    // 检查form中是否有enctype="multipart/form-data"
    if (multipartResolver.isMultipart(request)) {
        // 将request变成多部分request
    	MultipartHttpServletRequest multiRequest =  (MultipartHttpServletRequest) request;
        // 获取multiRequest 中所有的文件名
        Iterator<String> iter = multiRequest.getFileNames();
        // 一次遍历所有文件
        while (iter.hasNext()) {
            MultipartFile file = multiRequest.getFile(iter.next().toString());
            if (file != null) {
                String filename = file.getOriginalFilename();
                String saveName = UUID.randomUUID().toString() + filename.substring(filename.lastIndexOf("."));
                String path = PATH + saveName;
                file.transferTo(new File(path));// 上传 
                ProductModel ni = new ProductModel();
                ni.setProductid(productid);
                ni.setUrl(saveName);
                ni.setType("1");
                ps.insert4(ni);
            }
        }
    }
    Map<String, String> result = new HashMap<>();
    result.put("code", "0");
    return new JSONObject(result).toString();
}

}
