package com.xuchaoyue.second.user.controller;

import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xuchaoyue.second.user.model.UserModel;
import com.xuchaoyue.second.user.service.UserService;
import com.xuchaoyue.second.user.util.FormatEmpty;

@Controller
@RequestMapping("/admincontroller")
public class AdminController {
//	
//@Autowired
//private UserModel um;
@Autowired
private UserService us;


@RequestMapping("/login")
@ResponseBody
public String login(UserModel um,HttpSession session) {
	 
	if(us.login(um).equals("2")) {
		System.out.println("2");
		return us.login(um);
		
		}else {
			session.setAttribute("username", us.login(um));
			return "1";
		}
	
		
}
@RequestMapping("/register")
@ResponseBody
public int register(UserModel um) {
//	System.out.println(us.register(um));
	return us.register(um);
	
}
@RequestMapping("/logout")
public String Logout(HttpSession session) {
 session.removeAttribute("username");
	return "/Login";
	
}

@RequestMapping("/list")
@ResponseBody
public String List(UserModel um) {
	JSONObject jo =new JSONObject();
	jo.put("list", us.selectcount(um));
	jo.put("count",us.getcount(um));
	return jo.toString();
}

@RequestMapping("/change")
@ResponseBody
public String  Change(UserModel um) {
	return String.valueOf(us.change(um));
}
@RequestMapping("/delete")
@ResponseBody
public String delete(UserModel um) {
	return us.delete(um);
}

}
