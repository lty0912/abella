package kr.ac.sungkyul.abella.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import kr.ac.sungkyul.abella.vo.UserVo;

public class UserDao {
	
	
	private Connection getConnection() throws SQLException {
		Connection conn = null ;
		try {
			Class.forName( "oracle.jdbc.driver.OracleDriver" );
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			conn = DriverManager.getConnection(url, "abella", "abella");
		} catch( ClassNotFoundException e ) {
			e.printStackTrace();
		} 
		
		return conn;
	}
	
	public void update(UserVo vo) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = getConnection();
			String sql = "UPDATE USERS SET password=?, phone=?, birth=? WHERE id=?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, vo.getPassword());
			pstmt.setString(2, vo.getPhone());
			pstmt.setString(3, vo.getBirth());
			pstmt.setString(4, vo.getId());
			
			pstmt.executeUpdate();
			
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(conn != null) conn.close();
				if(pstmt != null) pstmt.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
			
		}
	}
	
	public UserVo get(Long no) {
		UserVo vo = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = getConnection();
			String sql = "SELECT name, id, phone, birth FROM USERS WHERE no = ?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setLong(1, no);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				vo = new UserVo();
				vo.setName( rs.getString(1) );
				vo.setId( rs.getString(2) );
				vo.setPhone( rs.getString(3) );
				vo.setBirth( rs.getString(4) );
			}
			
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if( rs!= null) rs.close();
				if( pstmt != null) pstmt.close();
				if( conn != null) conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return vo;
	}
	
	public UserVo get(String id) {
		UserVo vo = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = getConnection();
			String sql = "SELECT no, name, id FROM USERS WHERE id = ?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				vo = new UserVo();
				vo.setNo(rs.getLong(1));
				vo.setName(rs.getString(2));
				vo.setId(rs.getString(3));
			}
			
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if( rs!= null) rs.close();
				if( pstmt != null) pstmt.close();
				if( conn != null) conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return vo;
	}
	
	public UserVo get( String id, String password ){
		UserVo vo = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
			conn = getConnection();
			
			String sql = "SELECT no, name FROM USERS WHERE id=? and password=?";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString( 1, id );
			pstmt.setString( 2, password );
			
			rs = pstmt.executeQuery();
			if( rs.next() ) {
				Long no = rs.getLong( 1 );
				String name = rs.getString( 2 );
				
				vo = new UserVo();
				vo.setNo(no);
				vo.setName(name);
			}
			
		} catch( SQLException e ) {
			e.printStackTrace();
		} finally {
			try{
				if( pstmt != null ) {
					pstmt.close();
				}
				if( conn != null ) {
					conn.close();
				}
			} catch( SQLException e ) {
				e.printStackTrace();
			}
		}
		
		return vo;
	}
	
	public void insert( UserVo vo ) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try{
			conn = getConnection();
			
			String sql = "INSERT INTO USERS values(seq_users.nextval, ?, ?, ?, ?, ?, ?, ?, 0, ?)";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString( 1, vo.getName() );
			pstmt.setString( 2, vo.getGender() );
			pstmt.setString( 3, vo.getId() );
			pstmt.setString( 4, vo.getPassword() );
			pstmt.setString( 5, vo.getHint() );
			pstmt.setString( 6, vo.getAnswer() );
			pstmt.setString( 7, vo.getPhone() );
			pstmt.setString( 8, vo.getBirth() );
			
			pstmt.executeUpdate();
			
		} catch( SQLException e ) {
			e.printStackTrace();
		} finally {
			try{
				if( pstmt != null ) {
					pstmt.close();
				}
				if( conn != null ) {
					conn.close();
				}
			} catch( SQLException e ) {
				e.printStackTrace();
			}
		}
	}

}
