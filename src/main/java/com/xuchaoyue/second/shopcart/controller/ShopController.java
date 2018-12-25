package com.xuchaoyue.second.shopcart.controller;

import javax.servlet.http.HttpServletRequest;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xuchaoyue.second.product.model.ProductModel;
import com.xuchaoyue.second.shopcart.model.ShopModel;
import com.xuchaoyue.second.shopcart.service.ShopService;

@Controller
@RequestMapping("/shopcontroller")
public class ShopController {
	@Autowired
	private ShopService ss;
	
	@RequestMapping("/insert")
	@ResponseBody
public String  insert(ShopModel sm) {
//	    number =request.getParameter("number");
//		sm.setNumber(number);
		ss.insert(sm);
	return "1";
}
	
	@RequestMapping(value="xiangqing",produces="application/json;charset=UTF-8")
	@ResponseBody
public String  XiangQing(ShopModel sm) {

			JSONObject jo =new JSONObject();

			jo.put("product", ss.product(sm));
			return jo.toString();

}
	@RequestMapping(value="order",produces="application/json;charset=UTF-8")
	@ResponseBody
	public String order(String[] id) {
		return ss.order(id);
	}
	
	@RequestMapping(value="delete",produces="application/json;charset=UTF-8")
	@ResponseBody
	public String delete(String[] id) {
		return ss.delete(id);
	}
	
	@RequestMapping(value="delete1",produces="application/json;charset=UTF-8")
	@ResponseBody
	public String delete1(ShopModel sm) {
		return ss.delete1(sm);
	}
}
