package com.admin.service.impl;

import java.util.List;

import com.admin.dao.AuthDao;
import com.admin.dao.impl.AuthDaoImpl;
import com.admin.entity.AuthBean;
import com.admin.service.AuthService;

public class AuthServcieImpl implements AuthService{
	
	AuthDao authDao = new AuthDaoImpl();
	

	/**
	 * ��ȡ����Ȩ����Ϣ
	 */
	public List<AuthBean> getAuthList(Integer aid) {
		
		String sql = "SELECT p_id AS id,p_name AS `text` FROM powers WHERE p_fid = ?";
		
		List<AuthBean> excuteQuery = authDao.executeQuery(sql, AuthBean.class, new Object[]{aid});
		
		return excuteQuery;
	}


	/**
	 * �жϽڵ����Ƿ����ӽڵ�
	 * @param aid
	 * @return
	 */
	public boolean hasChildren(Integer aid) {
		String sql = "SELECT p_id AS id,p_name AS `text` FROM powers where p_fid = ?";
		
		List excuteQuery = authDao.executeQuery(sql, AuthBean.class, new Object[]{aid});
		
		// ������صĽ���ǿգ���ô�ͷ��� false ��˵��û���ӽڵ㣬  ��֮�ͷ���true ��˵�������ӽڵ�
		return null == excuteQuery || excuteQuery.size() == 0 ? false : true;
	}

}
