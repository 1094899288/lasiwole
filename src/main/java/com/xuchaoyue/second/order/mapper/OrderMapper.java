package com.xuchaoyue.second.order.mapper;

import java.util.List;

import com.xuchaoyue.second.order.ordermodel.OrderModel;

public interface OrderMapper {
	int insert(OrderModel t);//�������
	int insert1(OrderModel t);//�������

    int delete(OrderModel t);//ɾ������

//    int deleteModel(OrderModel t);

    int update(OrderModel t);//�޸Ĳ���

//    int updateActive(OrderModel t);

//    OrderModel selectId(Object id);

    List<OrderModel> select1(OrderModel t);//��ѯ������������

//    List<OrderModel> selectModel(OrderModel t);

    int selectCount(OrderModel t); //��ѯconut(1)
    
    List<OrderModel> pager(OrderModel t);//��ҳ����

	List<OrderModel> pager1(OrderModel om2);

	List<OrderModel> selectCount1(OrderModel om2);
	

//    List<OrderModel> select2(OrderModel t);//��ѯ���и�����
//    List<OrderModel> select2(OrderModel t);
}
