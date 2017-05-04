package com.yoke.util;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class JdbcConnection {
	
	static String url="jdbc:mysql://localhost:3306/websites";
	static String name="root";
	static String pass="root";
	static String driver="com.mysql.jdbc.Driver";
	static{
		
		//获取资源文件
		InputStream resourceAsStream = JdbcConnection.class.getClassLoader().getResourceAsStream("jdbc.properties");
		
		if(null == resourceAsStream){
			Properties properties = new Properties();
			
			try {
				
				properties.load(resourceAsStream);
				String url = properties.getProperty("url");
				String name = properties.getProperty("name");
				String pass = properties.getProperty("pass");
				String driver = properties.getProperty("driver");
				
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
	}

	public static Connection getConnection(){
		Connection con = null;

		try {
			
			Class.forName(driver);//加载驱动
			
			con = DriverManager.getConnection(url,name,pass);//获取链接
			
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return con;
	}
	public void closeConnection(Connection con){
		
		try {
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}










