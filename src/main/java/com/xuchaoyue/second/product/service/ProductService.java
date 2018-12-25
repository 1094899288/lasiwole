package com.xuchaoyue.second.product.service;

import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xuchaoyue.second.product.mapper.ProductMapper;
import com.xuchaoyue.second.product.model.ProductImage;
import com.xuchaoyue.second.product.model.ProductModel;
import com.xuchaoyue.second.user.util.FormatEmpty;
@Service("productService")
public class ProductService {
  
	@Autowired
	private ProductMapper productmapper;
	
	
	
	public List<ProductModel> list(ProductModel pm){
		return productmapper.pager(pm);
		
	}
	public int getcount(ProductModel pm) {
		return productmapper.selectCount(pm);
		
	}
	
	public int update(ProductModel pm) {
		// TODO Auto-generated method stub
		return productmapper.update(pm);
	}
	public int dalete(ProductModel pm) {
	 return productmapper.delete(pm);
	}
	public List<ProductModel> option(ProductModel pm){
		return productmapper.select2(pm);
	}
	public String insert(ProductModel pm) {
		// TODO Auto-generated method stub
		if(!FormatEmpty.isEmpty(productmapper.select3(pm))) {
			return "2";
		}else {
	   productmapper.insert(pm);
	   return "1";}
	}
	public List<ProductModel> option2(ProductModel pm) {
		// TODO Auto-generated method stub
		return productmapper.select1(pm);
	}
	public List<ProductModel> list1(ProductModel pm) {
		// TODO Auto-generated method stub
	return productmapper.pager1(pm);
	}
	public int getcount1(ProductModel pm) {
		// TODO Auto-generated method stub
		return productmapper.selectCount1(pm);
	}
	public String insert1(ProductModel pm) {
		if(!FormatEmpty.isEmpty(productmapper.select1(pm))) {
			return "2";
		}else {
	   productmapper.insert1(pm); 
	   return "1";}
	}
	public int  insert4(ProductModel ni) {
		 return productmapper.insert4(ni);
	}
	public List<ProductModel> select3(ProductModel pm) {
		// TODO Auto-generated method stub
		return 	   productmapper.select3(pm); 

	}
	public List<ProductModel> image(ProductModel pm) {
		// TODO Auto-generated method stub
		return  productmapper.selectimage(pm);
	}
	public List<ProductModel> selectall(ProductModel pm) {
		// TODO Auto-generated method stub
		return productmapper.select1all(pm);
	}

}
