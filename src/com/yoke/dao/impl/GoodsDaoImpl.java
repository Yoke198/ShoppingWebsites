package com.yoke.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.yoke.dao.GoodsDao;
import com.yoke.entity.GoodsEntity;
import com.yoke.util.JdbcConnection;

public class GoodsDaoImpl implements GoodsDao {

	public List<GoodsEntity> getGoodsInfo() {
		
		//ªÒ»°¡¥Ω”
		Connection con = JdbcConnection.getConnection();
		
		try {
			//‘§±‡“Î
			String sql = "";
			PreparedStatement prepareStatement = con.prepareStatement(sql);
			
			ResultSet result = prepareStatement.executeQuery();
			
			List<GoodsEntity> list;
			while(result.next()){
				list = new ArrayList<GoodsEntity>();
				
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
	}

	public GoodsEntity getGoodsById(int id) {
		return null;
	}

}












