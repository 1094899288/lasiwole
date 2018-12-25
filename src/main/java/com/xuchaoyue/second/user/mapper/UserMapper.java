package com.xuchaoyue.second.user.mapper;

import java.util.List;

import com.xuchaoyue.second.user.model.UserModel;



public interface UserMapper {

	void insert(UserModel t);

    int delete(UserModel t);

//    int deleteModel(UserModel t);

    int update(UserModel t);

//    int updateActive(UserModel t);

//    UserModel selectId(Object id);

    List<UserModel> select1(UserModel t);

//    List<UserModel> selectModel(UserModel t);

    int selectCount(UserModel t);
    
    List<UserModel> pager(UserModel t);

}
