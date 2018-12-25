package com.xuchaoyue.second.product.model;

public class ProductModel extends Pager {
 private String productid;
 private String parentcode;
 private String price;
 private String img;
 private String name;
 private Integer id;
 private String number;
 private String status;
 private String information;
 
public String getParentcode() {
	return parentcode;
}
public void setParentcode(String parentcode) {
	this.parentcode = parentcode;
}
public String getPrice() {
	return price;
}
public String getProductid() {
	return productid;
}
public void setProductid(String productid) {
	this.productid = productid;
}
public String getImg() {
	return img;
}
public void setImg(String img) {
	this.img = img;
}
public String getNumber() {
	return number;
}
public void setNumber(String number) {
	this.number = number;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}
public String getInformation() {
	return information;
}
public void setInformation(String information) {
	this.information = information;
}
public void setPrice(String price) {
	this.price = price;
}

public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public Integer getId() {
	return id;
}
public void setId(Integer id) {
	this.id = id;
}
}
