package com.admin.service;

import java.util.List;

import com.admin.entity.AuthBean;


public interface AuthService {

	
	/**
	 * ��ѯ����Ȩ����Ϣ
	 * @return
	 */
	public List<AuthBean> getAuthList(Integer aid);
	
	/**
	 * �ж��Ƿ����ӽڵ�
	 * @return
	 */
	public boolean hasChildren(Integer aid);
	
}
