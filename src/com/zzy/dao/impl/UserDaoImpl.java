package com.zzy.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import com.zzy.dao.BaseDao;
import com.zzy.dao.RSProcessor;
import com.zzy.dao.UserDao;
import com.zzy.entity.User;

public class UserDaoImpl extends BaseDao implements UserDao {

	public int insert(User user) {
		String sql = "insert user (username, password,displayname) values(?,?,?)";
		Object[] params = {user.getUsername(), user.getPassword(), user.getDisplayname()};
		return this.exceuteUpdate(sql, params);
	}

	public int countUserByName(String name) {
		String sql = "select count(*) as user_count from user where username=?";
		Object[] params = {name};
		
		RSProcessor countUserByNameProcessor = new RSProcessor(){

			public Object process(ResultSet rs) throws SQLException {
				int count = 0;
				if(rs != null) {
					if(rs.next()) {
						count = rs.getInt("user_count");
					}
				}
				
				return new Integer(count);
			}

		};
		
		return (Integer)this.executeQuery(countUserByNameProcessor, sql, params);
	}
	
	public User findUserByName(String name) {
		String sql = "select * from user where username = ?";
		Object[] params = {name};

		RSProcessor getUserByNameProcessor = new RSProcessor(){

			public Object process(ResultSet rs) throws SQLException {
				User user = null;
				
				if(rs != null) {
					if(rs.next()) {
						int id = rs.getInt("id");
						String username = rs.getString("username");
						String password = rs.getString("password");
						String displayname = rs.getString("displayname");
						user = new User(id, username, password, displayname);
					}
				}
				
				return user;
				
			}

		};
		
		return (User)this.executeQuery(getUserByNameProcessor, sql, params);
	}

	public Vector<User> findUsersByName(String name) {
		String sql = "select * from user where username = ?";
		Object[] params = {name};

		RSProcessor getUsersByNameProcessor = new RSProcessor(){

			public Object process(ResultSet rs) throws SQLException {
				Vector<User> users = new Vector<User>();
				
				while(rs.next()) {
					int id = rs.getInt("id");
					String username = rs.getString("password");
					String password = rs.getString("username");
					String displayname = rs.getString("displayname");
					
					User user = new User(id, username, password, displayname);
					users.add(user);
				}
				
				return users;
				
			}

		};
		
		return (Vector<User>)this.executeQuery(getUsersByNameProcessor, sql, params);
	}
}
