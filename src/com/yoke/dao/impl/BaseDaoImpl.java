package com.yoke.dao.impl;

import java.lang.reflect.Field;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.yoke.dao.BaseDao;
import com.yoke.entity.GoodsEntity;
import com.yoke.util.JdbcConnection;

public class BaseDaoImpl implements BaseDao {
	

	public List executeQuery(String sql,Class classt,Object...parameter) {
		
		List list = new ArrayList();
		Connection con = JdbcConnection.getConnection();//获取链接
		
		try {
			
			PreparedStatement prepareStatement = con.prepareStatement(sql);//预编译

			if(null != parameter){
			for(int i = 0 ; i < parameter.length ;i++){
				prepareStatement.setObject(i+1, parameter[i]);
			}
			}
			ResultSet resultSet = prepareStatement.executeQuery();
			
			ResultSetMetaData metaData = resultSet.getMetaData();//获取元数据
			
			Object obj;//反射 new goodsEntity();
			
			while(resultSet.next()){
				
				obj = classt.newInstance();
				 for(int i = 1 ;i <= metaData.getColumnCount() ; i++){
					 
					 String columnName = metaData.getColumnName(i);//列名
					 String columnLabel = metaData.getColumnLabel(i);//别名
					 //System.out.println(columnName);
					 
					 Field declaredField = classt.getDeclaredField(columnLabel);
					 
					 if(null != declaredField){
						 
						 declaredField.setAccessible(true);
						 
						 declaredField.set(obj, resultSet.getObject(columnLabel));
					 }
				 }
				list.add(obj);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (SecurityException e) {
			e.printStackTrace();
		} catch (NoSuchFieldException e) {
			e.printStackTrace();
		}
		
		return list;
	}

	
	/**
	 * 增删改
	 */
	public int executeUpdate(String sql,Object... parameter) {
		//获取链接
		Connection connection = JdbcConnection.getConnection();
		
		try {
			
			//预编译
			PreparedStatement prepareStatement = connection.prepareStatement(sql);
			//传参
			for(int i = 0 ; i < parameter.length ; i++){
			prepareStatement.setObject(i+1, parameter[i]);
			}
			//执行
			int result = prepareStatement.executeUpdate();
			
			if(result > 0){
				
				return result;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
			
		return 0;
	}

}





















