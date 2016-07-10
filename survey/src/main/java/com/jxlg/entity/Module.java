package com.jxlg.entity;

/**
 * 模板实体类
 * @author feng
 *
 */
public class Module {
	private int id;		//模板id
	private String type;	//模板类型

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Module(int id, String type) {
		super();
		this.id = id;
		this.type = type;
	}

	public Module() {
		super();
	}

	@Override
	public String toString() {
		return "Module [id=" + id + ", type=" + type + "]";
	}

}
