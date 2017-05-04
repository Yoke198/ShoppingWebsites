package com.admin.entity;

import java.util.List;

public class AuthBean {

	private int id;   // Ҫƥ��ǰ̨ tree��Ҫ��key
	private String text;	//��ʾ�ַ���
	private boolean checked;	//�Ƿ�ѡ��
	private String state = "closed";
	private List<AuthBean> children; // �ӽڵ�
	
	
	private String iconCls; 	//��ʾ��ͼ�� 


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
