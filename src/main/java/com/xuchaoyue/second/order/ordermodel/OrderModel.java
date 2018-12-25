package com.xuchaoyue.second.order.ordermodel;

public class OrderModel extends Pager{
  private String orderid;
  private String customer;
  private String address;
  private String status;
  private Integer id;
  private String time;
  private String name;
  private String number;
public Integer getId() {
	return id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getNumber() {
	return number;
}
public void setNumber(String number) {
	this.number = number;
}
public void setId(Integer id) {
	this.id = id;
}
public String getOrderid() {
	return orderid;
}
public void setOrderid(String orderid) {
	this.orderid = orderid;
}
public String getCustomer() {
	return customer;
}
public void setCustomer(String customer) {
	this.customer = customer;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}
public String getTime() {
	return time;
}
public void setTime(String time) {
	this.time = time;
}

}
