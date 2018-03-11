package com.zzy.dao.impl;

import com.zzy.entity.Collect;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

import com.zzy.entity.*;

import com.zzy.dao.BaseDao;
import com.zzy.dao.CollectDao;
import com.zzy.dao.RSProcessor;
import com.zzy.entity.Collect;

public class CollectDaoImpl extends BaseDao implements CollectDao {
	public int insert(Collect collect){
		String sql = "insert collect (webname, webaddress, label,username) value(?,?,?,?)";
		Object[] params = {collect.getWebname(), collect.getWebaddress(), collect.getLabel(), collect.getUsername()};
		return this.exceuteUpdate(sql, params);
	}
	
	public List<Collect> getAll(String username){
		String sql = "select * from collect where username = ?";
		Object[] params = {username};
		
		RSProcessor getAllProcessor = new RSProcessor() {
			
			@Override
			public Object process(ResultSet rs) throws SQLException {
				// TODO Auto-generated method stub
				List<Collect> list = new ArrayList<Collect>();
				
				while(rs.next()){
					list.add(new Collect(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5)));
				}
				return list;
			}
		};
		
		return (List<Collect>)this.executeQuery(getAllProcessor, sql, params);
	}
	
	


	public int countCollectByWebName(String username){
		String sql = "select count(*) as collect_count from collect where username=?";
		Object[] params = {username};
		
		RSProcessor countCollectByWebNameProcessor = new RSProcessor() {
			
			@Override
			public Object process(ResultSet rs) throws SQLException {
				// TODO Auto-generated method stub
				int count = 0;
				if(rs != null){
					if(rs.next()){
						count = rs.getInt("collect_count");
					}
				}
				return new Integer(count);
			}
		};
		return (Integer)this.executeQuery(countCollectByWebNameProcessor, sql, params);
	}
	
	public Collect findUserByWebName(String username){
		String sql = "select * from collect where username = ?";
		Object[] params = {username};
		
		RSProcessor getCollectByWebNameProcessor = new RSProcessor() {
			
			@Override
			public Object process(ResultSet rs) throws SQLException {
				// TODO Auto-generated method stub
				Collect collect = null;
				
				if(rs != null){
					if(rs.next()){
						int id = rs.getInt("id");
						String webname = rs.getString("webname");
						String webaddress = rs.getString("webaddress");
						String label = rs.getString("label");
						String username = rs.getString("username");
						collect = new Collect(id, webname, webaddress, label,username);
					}
				}
				return collect;
			}
		};
		
		return (Collect)this.executeQuery(getCollectByWebNameProcessor, sql, params);
	}
	
	public Vector<Collect> findCollectsByWebName(String username){
		String sql = "select * from collect where username =? ";
		Object[] params = {username};
		
		RSProcessor getCollectByWebNameProcessor = new RSProcessor() {
			
			@Override
			public Object process(ResultSet rs) throws SQLException {
				// TODO Auto-generated method stub
				Vector<Collect> collects = new Vector<Collect>();
				
				while(rs.next()){
					int id = rs.getInt("id");
					String webname = rs.getString("webname");
					String webaddress = rs.getString("webaddress");
					String label = rs.getString("label");
					String username = rs.getString("username");
					Collect collect = new Collect(id, webname, webaddress, label,username);
					collects.add(collect);
				}
				return collects;
			}
		};
		
		return (Vector<Collect>)this.executeQuery(getCollectByWebNameProcessor, sql, params);
	}
	
}
