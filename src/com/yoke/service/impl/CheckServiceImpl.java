package com.yoke.service.impl;

import java.util.List;

import com.yoke.dao.CheckDao;
import com.yoke.dao.impl.CheckDaoImpl;
import com.yoke.entity.UserEntity;
import com.yoke.service.CheckService;

public class CheckServiceImpl implements CheckService{

	CheckDao checkDao = new CheckDaoImpl();
	
	public boolean checkname(String userName) {
		String sql="SELECT user_name FROM user_info WHERE user_name=?";
		List<UserEntity>  executeQuery = checkDao.executeQuery(sql, UserEntity.class, new Object[]{userName});

		if(null != executeQuery &&  executeQuery.size()>0){
			return true;
		}
		return false;
	}

}
