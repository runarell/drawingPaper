package com.drawingpaper.app.payment.vo;

public class PaymentVO {
	private int pay_no;
	private int user_no;
	private int pro_no;
	private String pay_date;
	private String pay_price;
	private String pay_merchantuid;
	
	public PaymentVO() {;}

	public int getPay_no() {
		return pay_no;
	}

	public void setPay_no(int pay_no) {
		this.pay_no = pay_no;
	}

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public int getPro_no() {
		return pro_no;
	}

	public void setPro_no(int pro_no) {
		this.pro_no = pro_no;
	}

	public String getPay_date() {
		return pay_date;
	}

	public void setPay_date(String pay_date) {
		this.pay_date = pay_date;
	}

	public String getPay_price() {
		return pay_price;
	}

	public void setPay_price(String pay_price) {
		this.pay_price = pay_price;
	}

	public String getPay_merchantuid() {
		return pay_merchantuid;
	}

	public void setPay_merchantuid(String pay_merchantuid) {
		this.pay_merchantuid = pay_merchantuid;
	}
	
	
}
