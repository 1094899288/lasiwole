package com.xuchaoyue.second.order.ordermodel;

public class Pager {

	private int pageIndex = 1;
	private int pageLimit = 10;
	private int rowStart;
	private int rowCount;
	public int getPageIndex() {
		return pageIndex;
	}
	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}
	public int getPageLimit() {
		return pageLimit;
	}
	public void setPageLimit(int pageLimit) {
		this.pageLimit = pageLimit;
	}
	public int getRowStart() {
		rowStart=(pageIndex-1)*pageLimit;
		return rowStart;
	}
	public void setRowStart(int rowStart) {
		
		this.rowStart = rowStart;
	}
	public int getRowCount() {
		return rowCount;
	}
	public void setRowCount(int rowCount) {
		this.rowCount = rowCount;
	}
	
}
