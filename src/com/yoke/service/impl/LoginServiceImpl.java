package com.yoke.service.impl;

import java.util.List;

import com.yoke.dao.LoginDao;
import com.yoke.dao.impl.LoginDaoImpl;
import com.yoke.entity.UserEntity;
import com.yoke.service.LoginService;

public class LoginServiceImpl implements LoginService{

	LoginDao loginDao = new LoginDaoImpl();
	
	public UserEntity login(String userName) {
		
		String sql = "SELECT user_name,user_pass FROM user_info where user_name=?";
		
		List<UserEntity> result = loginDao.executeQuery(sql, UserEntity.class,new Object[]{userName});
		
		if(null != result && result.size() > 0){
			return result.get(0);
			
		}else if(null == result){
			return null;
		}
		
		return null;
	}

}
