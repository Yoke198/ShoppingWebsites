package com.admin.entity;

import java.util.List;

public class AuthBean {

	private int id;   // 要匹配前台 tree需要的key
	private String text;	//显示字符串
	private boolean checked;	//是否选中
	private String state = "closed";
	private List<AuthBean> children; // 子节点
	
	
	private String iconCls; 	//显示的图标 


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getState() {
		return state;
	}


	public void setState(String state) {
		this.state = state;
	}


	public String getText() {
		return text;
	}


	public void setText(String text) {
		this.text = text;
	}


	public String getIconCls() {
		return iconCls;
	}


	public void setIconCls(String iconCls) {
		this.iconCls = iconCls;
	}


	public List<AuthBean> getChildren() {
		return children;
	}


	public void setChildren(List<AuthBean> children) {
		this.children = children;
	}


	public boolean isChecked() {
		return checked;
	}


	public void setChecked(boolean checked) {
		this.checked = checked;
	}


	@Override
	public String toString() {
		return "AuthBean [checked=" + checked + ", children=" + children
				+ ", iconCls=" + iconCls + ", id=" + id + ", state=" + state
				+ ", text=" + text + "]";
	}


}
