package com.yoke.service.impl;

import com.yoke.dao.RegisterDao;
import com.yoke.dao.impl.RegisterDaoImpl;
import com.yoke.entity.ParameterEntity;
import com.yoke.service.RegisterService;

public class RegisterServiceImpl implements RegisterService {
	
	RegisterDao registerDao = new RegisterDaoImpl();
	
		public int register(ParameterEntity par){
			
			String sql = "INSERT INTO user_info(user_name,user_pass,email,age,sex,birthday,city)VALUES(?,?,?,?,?,?,?)";
			Object [] parameter = new Object [] {par.getUserName(),par.getUserPass(),par.getEmail(),par.getAge(),par.getSex(),par.getBirthday(),par.getCity()};
			int result = registerDao.executeUpdate(sql, parameter);
			if(result > 0){
				
				return result;
				
			}
			
			return 0;
			
		}
	
	
}
