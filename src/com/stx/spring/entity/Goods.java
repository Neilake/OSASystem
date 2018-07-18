package com.stx.spring.entity;

public class Goods {
	private String goodsid;
	private String goodsName;
	private String goodsSize;
	private String goodsNum;

	public Goods(String goodsid, String goodsName, String goodsSize, String goodsNum) {
		this.goodsName = goodsName;
		this.goodsSize = goodsSize;
		this.goodsNum = goodsNum;
	}
	
	public String getGoodsid() {
		return goodsid;
	}
	
	public void setGoodsid(String goodsid) {
		this.goodsid = goodsid;
	}

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public String getGoodsSize() {
		return goodsSize;
	}

	public void setGoodsSize(String goodsSize) {
		this.goodsSize = goodsSize;
	}

	public String getGoodsNum() {
		return goodsNum;
	}

	public void setGoodsNum(String goodsNum) {
		this.goodsNum = goodsNum;
	}

}
