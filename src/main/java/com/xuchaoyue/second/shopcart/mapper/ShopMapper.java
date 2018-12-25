package com.xuchaoyue.second.shopcart.mapper;

import java.util.List;

import com.xuchaoyue.second.shopcart.model.ShopModel;

public interface ShopMapper {
    void insert(ShopModel sm);//添加到购物车ﳵ
    int uptate(ShopModel sm);//���¹��
   List<ShopModel> select(ShopModel sm);
   ShopModel selectmodel(ShopModel model);
   int delete(ShopModel sm);

}
