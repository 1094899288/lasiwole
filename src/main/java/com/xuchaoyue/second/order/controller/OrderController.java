package com.xuchaoyue.second.order.controller;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xuchaoyue.second.order.ordermodel.OrderModel;
import com.xuchaoyue.second.order.service.OrderService;

@Controller
@RequestMapping("/ordercontroller")
public class OrderController {

	@Autowired
	private OrderService os;

	@RequestMapping(value = "/pager", produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String Pager(OrderModel om) {
		JSONObject jo = new JSONObject();
		jo.put("list", os.list(om));
		jo.put("count", os.getcount(om));

		return jo.toString();

	}

	@RequestMapping(value = "/orderproductpager", produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String Pager1(OrderModel om) {
		JSONObject jo = new JSONObject();
		jo.put("list", os.list1(om));
		jo.put("count", os.getcount1(om));

		return jo.toString();

	}

	@RequestMapping(value = "/insertorder", produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String insertorder(OrderModel om) {
//		return null;
		return os.insertorder(om);

	}
	
	@RequestMapping(value = "/insertordercommodity", produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String insertordercommodity(String orderid,String[] name,String[] number) {
		return os.insertordercommodity(orderid,name,number);

	}

	@RequestMapping(value = "/change", produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String Change(OrderModel om) {

		return os.change(om);

	}

	@RequestMapping(value = "/delete", produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String Delete(OrderModel om) {

		return os.delete(om);

	}

	@RequestMapping(value = "/orderproductinsert", produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String insert(OrderModel om) {

		os.insert(om);
		return "1";

	}
}
