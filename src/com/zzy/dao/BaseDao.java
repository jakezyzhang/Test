package com.zzy.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
/**
 * 数�?�库连接与关闭工具类。
 */
public abstract class BaseDao {
	private static String driver = 
		"com.mysql.jdbc.Driver";// 数�?�库驱动字符串
	private static String url = 
		"jdbc:mysql://118.24.4.76:3306/register?useUnicode=true&characterEncoding=utf-8";// 连接URL字符串
	private static String user = "root"; // 数�?�库用户�??
	private static String password = "root"; // 用户密�?
	
	protected Connection conn;
	protected PreparedStatement pstmt;
	protected ResultSet rs;
	
	/**
	 * 获�?�数�?�库连接对象。
	 */
	public Connection getConnection() {
		Connection conn = null;// 数�?�连接对象
		// 获�?�连接并�?�获异常
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password);			
		} catch (Exception e) {
			e.printStackTrace();// 异常处�?�
		}
		return conn;// 返回连接对象
	}
	/**
	 * 关闭数�?�库连接。
	 * @param conn 数�?�库连接
	 * @param stmt Statement对象
	 * @param rs 结果集
	 */
	public void closeAll(Connection conn, Statement stmt, ResultSet rs) {
		// 若结果集对象�?为空，则关闭
		if (rs != null) {
			try {
				rs.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		// 若Statement对象�?为空，则关闭
		if (stmt != null) {
			try {
				stmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		// 若数�?�库连接对象�?为空，则关闭
		if (conn != null) {
			try {
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	public void closeAll() {
		closeAll(this.conn, this.pstmt, this.rs);
	}
	
	/**
	 * 增�?删�?改�?作
	 * @param sql sql语�?�
	 * @param params �?�数数组
	 * @return 执行结果
	 */
	public int exceuteUpdate(String sql, Object...params){
		int result = 0;
		conn = this.getConnection();
		try {
			if(conn != null && conn.isClosed() == false) {
				pstmt = conn.prepareStatement(sql);
				for(int i = 0;i < params.length;i++){
					pstmt.setObject(i + 1, params[i]);	
				}
				result = pstmt.executeUpdate();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			closeAll();
		}
		
		return result;
	}
	
	public Object executeQuery(RSProcessor processor, String sql, Object...params) {
		Object result = null;
		conn = this.getConnection();
		try {
			if(conn != null && conn.isClosed() == false) {
				pstmt = conn.prepareStatement(sql);
				for(int i = 0;i < params.length;i++){
					pstmt.setObject(i + 1, params[i]);	
				}
				rs = pstmt.executeQuery();
				result = processor.process(rs);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			closeAll();
		}
		return result;
	}
}
