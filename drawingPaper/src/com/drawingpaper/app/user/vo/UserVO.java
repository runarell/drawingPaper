package com.drawingpaper.app.user.vo;

public class UserVO {
	private int user_no;
	private String user_name;
	private String user_email;
	private String user_pw;
	private boolean user_kakao;
	private boolean user_status;
	private String user_images;
	private String user_content;
	private String user_creatorname;
	private String user_accountnum;
	private boolean user_msgcheck;
	private boolean user_secret;
	
	public UserVO() {;}

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getUser_pw() {
		return user_pw;
	}

	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}

	public boolean isUser_kakao() {
		return user_kakao;
	}

	public void setUser_kakao(boolean user_kakao) {
		this.user_kakao = user_kakao;
	}

	public boolean isUser_status() {
		return user_status;
	}

	public void setUser_status(boolean user_status) {
		this.user_status = user_status;
	}

	public String getUser_images() {
		return user_images;
	}

	public void setUser_images(String user_images) {
		this.user_images = user_images;
	}

	public String getUser_content() {
		return user_content;
	}

	public void setUser_content(String user_content) {
		this.user_content = user_content;
	}

	public String getUser_creatorname() {
		return user_creatorname;
	}

	public void setUser_creatorname(String user_creatorname) {
		this.user_creatorname = user_creatorname;
	}

	public String getUser_accountnum() {
		return user_accountnum;
	}

	public void setUser_accountnum(String user_accountnum) {
		this.user_accountnum = user_accountnum;
	}

	public boolean isUser_msgcheck() {
		return user_msgcheck;
	}

	public void setUser_msgcheck(boolean user_msgcheck) {
		this.user_msgcheck = user_msgcheck;
	}

	public boolean isUser_secret() {
		return user_secret;
	}

	public void setUser_secret(boolean user_secret) {
		this.user_secret = user_secret;
	}

}
