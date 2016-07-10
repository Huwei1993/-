package com.jxlg.entity;

/**
 * 用户实体类
 * @author feng
 *
 */
public class User {
	private int uid; // 用户id
	private String number; // 用户账号
	private String password; // 用户密码
	private String email; // 用户邮箱
	private int peid; // 用户权限等级id

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getPeid() {
		return peid;
	}

	public void setPeid(int peid) {
		this.peid = peid;
	}

	public User(int uid, String number, String password, String email, int peid) {
		super();
		this.uid = uid;
		this.number = number;
		this.password = password;
		this.email = email;
		this.peid = peid;
	}

	public User() {
		super();
	}

	@Override
	public String toString() {
		return "User [uid=" + uid + ", number=" + number + ", password="
				+ password + ", email=" + email + ", peid=" + peid + "]";
	}

}
