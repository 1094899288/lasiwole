package com.xuchaoyue.second.product.mapper;

import java.util.List;

import com.xuchaoyue.second.product.model.ProductImage;
import com.xuchaoyue.second.product.model.ProductModel;

public interface ProductMapper {
	void insert(ProductModel t);//�������

    int delete(ProductModel t);//ɾ������

//    int deleteModel(ProductModel t);

    int update(ProductModel t);//�޸Ĳ���

//    int updateActive(ProductModel t);

//    ProductModel selectId(Object id);

    List<ProductModel> select1(ProductModel t);//��ѯ������������

//    List<ProductModel> selectModel(ProductModel t);

    int selectCount(ProductModel t); //��ѯconut(1)
    
    List<ProductModel> pager(ProductModel t);//��ҳ����

//    List<ProductModel> select2(ProductModel t);//��ѯ���и�����
    List<ProductModel> select2(ProductModel t);
    List<ProductModel> select3(ProductModel t);

	List<ProductModel> pager1(ProductModel pm);

	int selectCount1(ProductModel pm);

	void insert1(ProductModel pm);

	int insert4(ProductImage ni);

	List<ProductModel> selectimage(ProductModel pm);

	List<ProductModel> select1all(ProductModel pm);


}
