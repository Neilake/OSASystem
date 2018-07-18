package com.stx.spring.entity;

public class Posit {
	private int posit_id;
	private String posit_name;

	public Posit() {
	}

	public Posit(int posit_id, String posit_name) {
		this.posit_id = posit_id;
		this.posit_name = posit_name;
	}

	public int getPosit_id() {
		return posit_id;
	}

	public void setPosit_id(int posit_id) {
		this.posit_id = posit_id;
	}

	public String getPosit_name() {
		return posit_name;
	}

	public void setPosit_name(String posit_name) {
		this.posit_name = posit_name;
	}
}
