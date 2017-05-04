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
		Connection con = JdbcConnection.getConnection();//��ȡ����
		
		try {
			
			PreparedStatement prepareStatement = con.prepareStatement(sql);//Ԥ����

			if(null != parameter){
			for(int i = 0 ; i < parameter.length ;i++){
				prepareStatement.setObject(i+1, parameter[i]);
			}
			}
			ResultSet resultSet = prepareStatement.executeQuery();
			
			ResultSetMetaData metaData = resultSet.getMetaData();//��ȡԪ����
			
			Object obj;//���� new goodsEntity();
			
			while(resultSet.next()){
				
				obj = classt.newInstance();
				 for(int i = 1 ;i <= metaData.getColumnCount() ; i++){
					 
					 String columnName = metaData.getColumnName(i);//����
					 String columnLabel = metaData.getColumnLabel(i);//����
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
	 * ��ɾ��
	 */
	public int executeUpdate(String sql,Object... parameter) {
		//��ȡ����
		Connection connection = JdbcConnection.getConnection();
		
		try {
			
			//Ԥ����
			PreparedStatement prepareStatement = connection.prepareStatement(sql);
			//����
			for(int i = 0 ; i < parameter.length ; i++){
			prepareStatement.setObject(i+1, parameter[i]);
			}
			//ִ��
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





















