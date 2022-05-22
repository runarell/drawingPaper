package com.drawingpaper.app.payment.vo;

public class PaymentVO {
	private int pay_no;
	private int user_no;
	private int pro_no;
	private String pay_date;
	private String pay_price;
	
	private String pay_merchantuid;	
	private String pro_title;
	private String pro_category;
	private String pro_start;
	private String pro_end;
	private String pro_goalprice;
	private String pro_ticketprice;
	private String pro_repimage;
	private boolean pro_ongoing;
	private String pro_achieveprice;
	
	private String user_name;
	private String user_emall;
	private String user_bank;
	private String user_accountnum;
	
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

	public String getPro_title() {
		return pro_title;
	}

	public void setPro_title(String pro_title) {
		this.pro_title = pro_title;
	}

	public String getPro_category() {
		return pro_category;
	}

	public void setPro_category(String pro_category) {
		this.pro_category = pro_category;
	}

	public String getPro_start() {
		return pro_start;
	}

	public void setPro_start(String pro_start) {
		this.pro_start = pro_start;
	}

	public String getPro_end() {
		return pro_end;
	}

	public void setPro_end(String pro_end) {
		this.pro_end = pro_end;
	}

	public String getPro_goalprice() {
		return pro_goalprice;
	}

	public void setPro_goalprice(String pro_goalprice) {
		this.pro_goalprice = pro_goalprice;
	}

	public String getPro_ticketprice() {
		return pro_ticketprice;
	}

	public void setPro_ticketprice(String pro_ticketprice) {
		this.pro_ticketprice = pro_ticketprice;
	}

	public String getPro_repimage() {
		return pro_repimage;
	}

	public void setPro_repimage(String pro_repimage) {
		this.pro_repimage = pro_repimage;
	}

	public boolean isPro_ongoing() {
		return pro_ongoing;
	}

	public void setPro_ongoing(boolean pro_ongoing) {
		this.pro_ongoing = pro_ongoing;
	}

	public String getPro_achieveprice() {
		return pro_achieveprice;
	}

	public void setPro_achieveprice(String pro_achieveprice) {
		this.pro_achieveprice = pro_achieveprice;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_emall() {
		return user_emall;
	}

	public void setUser_emall(String user_emall) {
		this.user_emall = user_emall;
	}

	public String getUser_bank() {
		return user_bank;
	}

	public void setUser_bank(String user_bank) {
		this.user_bank = user_bank;
	}

	public String getUser_accountnum() {
		return user_accountnum;
	}

	public void setUser_accountnum(String user_accountnum) {
		this.user_accountnum = user_accountnum;
	}
	
}
