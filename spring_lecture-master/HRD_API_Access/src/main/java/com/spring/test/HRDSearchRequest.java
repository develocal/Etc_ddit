package com.spring.test;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class HRDSearchRequest {
	private String getUrl;
	private String authKey;
	private String returnType;
	private int pageNum;
	private int pageSize;
	private int outType;
	private Date srchTraStDt;
	private Date srchTraEndDt;
	private String sort;
	private String sortCol;
	private String srchTraArea1;
	private String srchTraArea2;
	
		
	public String getGetUrl() {
		return getUrl;
	}
	public void setGetUrl(String getUrl) {
		this.getUrl = getUrl;
	}
	public String getAuthKey() {
		return authKey;
	}
	public void setAuthKey(String authKey) {
		this.authKey = authKey;
	}
	public String getReturnType() {
		return returnType;
	}
	public void setReturnType(String returnType) {
		this.returnType = returnType;
	}
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getOutType() {
		return outType;
	}
	public void setOutType(int outType) {
		this.outType = outType;
	}
	public Date getSrchTraStDt() {
		return srchTraStDt;
	}
	public String getSrchTraStDtToString() {		
		return new SimpleDateFormat("yyyyMMdd").format(srchTraStDt);
	}
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	public void setSrchTraStDt(Date srchTraStDt) {
		this.srchTraStDt = srchTraStDt;
	}
	public Date getSrchTraEndDt() {
		return srchTraEndDt;
	}
	public String getSrchTraEndDtToString() {
		return new SimpleDateFormat("yyyyMMdd").format(srchTraEndDt);
	}
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	public void setSrchTraEndDt(Date srchTraEndDt) {
		this.srchTraEndDt = srchTraEndDt;
	}
	public String getSort() {
		return sort;
	}
	public void setSort(String sort) {
		this.sort = sort;
	}
	public String getSortCol() {
		return sortCol;
	}
	public void setSortCol(String sortCol) {
		this.sortCol = sortCol;
	}
	public String getSrchTraArea1() {		
		return srchTraArea1;
	}
	
	
	public void setSrchTraArea1(String srchTraArea1) {
		this.srchTraArea1 = srchTraArea1;
	}
	
	public String getSrchTraArea2() {
		return srchTraArea2;
	}
	
	public void setSrchTraArea2(String srchTraArea2) {
		this.srchTraArea2 = srchTraArea2;
	}
	
	
	
	
	
}
