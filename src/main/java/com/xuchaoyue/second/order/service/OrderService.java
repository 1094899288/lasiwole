package com.xuchaoyue.second.order.service;

import java.util.Collection;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xuchaoyue.second.order.mapper.OrderMapper;
import com.xuchaoyue.second.order.ordermodel.OrderModel;

@Service 
public class OrderService {

	
	@Autowired
	private OrderMapper om;
	
	
	
	public List<OrderModel> list(OrderModel ordermodel){
		return om.pager(ordermodel);
		
	}
	public int getcount(OrderModel ordermodel) {
		return om.selectCount(ordermodel);
		
	}
	public List<OrderModel> getcount1(OrderModel om2) {
		// TODO Auto-generated method stub
		return om.pager1(om2);
	}
	public List<OrderModel> list1(OrderModel om2) {
		// TODO Auto-generated method stub
		return om.selectCount1(om2);
	}
	public void insert(OrderModel om2) {
		 om.insert1(om2);
		
	}
	public String change(OrderModel om2) {
		// TODO Auto-generated method stub
		return String.valueOf(om.update(om2));
	}
	public String delete(OrderModel om2) {
		// TODO Auto-generated method stub
		return String.valueOf(om.delete(om2));
	}
	public String insertorder(OrderModel om2) {
		String order = getUUID();
		om2.setOrderid(order);
		return om.insert(om2)>0?order:"err";
	}
	
	public static String getUUID() {
		UUID uuid = UUID.randomUUID();
		String str = uuid.toString();
		return str;
	}
	public String insertordercommodity(String orderid,String[] name,String[] number) {
		OrderModel model = new OrderModel();
		String rel = "";
		for(int i = 0 ; i < name.length;i++) {
			model.setOrderid(orderid);
			model.setName(name[i]);
			model.setNumber(number[i]);
			rel = om.insert1(model)>0?"success":"err";
			if(rel == "err") {
				return rel;
			}
		}
		return rel;
	}

	
	
}
