package com.xuchaoyue.second.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xuchaoyue.second.user.mapper.UserMapper;
import com.xuchaoyue.second.user.model.UserModel;
import com.xuchaoyue.second.user.util.FormatEmpty;

@Service
public class UserService {
 
	@Autowired
	private UserMapper usermapper;

	
	public String login(UserModel um) {
		if(FormatEmpty.isEmpty(usermapper.select1(um))) {
			System.out.println("1");
			return "2";
		}else {
			return usermapper.select1(um).get(0).getUsername();
			}
	}
	public int register(UserModel um) {
		if(FormatEmpty.isEmpty(usermapper.select1(um))) {
			if(FormatEmpty.isEmpty(um.getPassword())||FormatEmpty.isEmpty(um.getUsername())
					||FormatEmpty.isEmpty(um.getUsercode())) {
				return 0;
			}else {
				usermapper.insert(um);
				return 1;
			}
		}else {
			return 2;
		}
		
	}

	public int getcount(UserModel um) {
		System.out.println(usermapper.selectCount(um));
		return usermapper.selectCount(um);
	}
	public List<UserModel> selectcount(UserModel um){
		return usermapper.pager(um);
		
	}
	public int change(UserModel um) {
		System.out.println("1");
		return usermapper.update(um);
	}
	public String delete(UserModel um) {
	  return String.valueOf(usermapper.delete(um));
			  }
}
