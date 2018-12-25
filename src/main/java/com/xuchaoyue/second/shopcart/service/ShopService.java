package com.xuchaoyue.second.shopcart.service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xuchaoyue.second.shopcart.mapper.ShopMapper;
import com.xuchaoyue.second.shopcart.model.ShopModel;
import com.xuchaoyue.second.user.util.FormatEmpty;

@Service
public class ShopService {

@Autowired
private ShopMapper shopMapper;


public String  insert(ShopModel shopmodel) {
	ShopModel no = new ShopModel();
	no.setProductid(shopmodel.getProductid());
	   int number2=Integer.parseInt(shopmodel.getNumber());
	   List<ShopModel> list = shopMapper.select(no);
	if(!FormatEmpty.isEmpty(list)) {
		ShopModel sm = list.get(0);
		int number3 =Integer.parseInt(sm.getNumber());
		number2+=number3;
		shopmodel.setNumber(String.valueOf(number2));
		shopmodel.setId(sm.getId());
		shopMapper.uptate(shopmodel);
	}else {
		shopMapper.insert(shopmodel);
	}

	return "1";
}


public List<ShopModel> product(ShopModel sm) {
	// TODO Auto-generated method stub
	return  shopMapper.select(sm);
}


public String order(String[] id) {
	ShopModel no = new ShopModel();
	List<ShopModel> list = new ArrayList<>();
	Map<String, Object> map = new HashMap<>();
	for(int i = 0 ; i < id.length;i++) {
		no.setId(Integer.parseInt(id[i]));
		list.add(shopMapper.selectmodel(no));
	}
	map.put("order", list);
	return new JSONObject(map).toString();
}


public String delete(String[] id) {
	ShopModel model = new ShopModel();
	String del = "";
	for(int i = 0 ; i < id.length;i++) {
		model.setId(Integer.parseInt(id[i]));
		del = shopMapper.delete(model)>0?"success":"err";
		if(del == "err"){
			return del;
		}
	}
	return del;
}


public String delete1(ShopModel sm) {
	// TODO Auto-generated method stub
	return shopMapper.delete(sm)>0?"success":"error";
}

}
