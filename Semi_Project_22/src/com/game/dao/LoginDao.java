package com.game.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.game.dto.GameDto;
import com.sun.corba.se.spi.orbutil.fsm.Guard.Result;

import common.JDBCTemplate;

public class LoginDao extends JDBCTemplate {

	public GameDto login(String user_id,String user_pw) {
		
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		GameDto res = new GameDto();
		
		String sql = " SELECT * FROM USERS WHERE USER_ID=? AND USER_PW=? ";
		
		try {
			
			pstm = con.prepareStatement(sql);
			pstm.setString(1, user_id);
			
			pstm.setString(2, user_pw);
			System.out.println("03. query 준비 : " + sql);
			
			rs = pstm.executeQuery();
			System.out.println("04");
			
			while(rs.next()) {
				
				res.setUser_id(rs.getString("user_id"));
				res.setUser_pw(rs.getString("user_pw"));
				res.setUser_name(rs.getString("user_name"));
				res.setUser_email(rs.getString("user_email"));
				res.setUser_enabled(rs.getString("user_enabled"));
				res.setUser_count(rs.getInt("user_count"));
				
			}
			System.out.println(res.getUser_id());
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			
			close(rs);
			close(pstm);
			close(con);
			System.out.println("05");
		}
		
		return res;
	}
	
	public String idChk(String user_id) {
		
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		String res = null;
		String sql = " SELECT * FROM USERS WHERE USER_ID = ?";
		
		try {
			
			pstm = con.prepareStatement(sql);
			pstm.setString(rs.getInt("user_id"),user_id);
			System.out.println("03");
			
			rs = pstm.executeQuery();
			System.out.println("04");
			
			while(rs.next()) {
				
				res = rs.getString(rs.getInt("user_id"));
				
			}
			
		} catch (SQLException e) {
			System.out.println("3/4");
			e.printStackTrace();
		} finally {
			
			close(rs);
			close(pstm);
			System.out.println("05");
		}
			
		return res;
	}
	
	public int pwchk(GameDto dto) {
		
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		int res = 0;
		String sql = " UPDATE USERS SET USER_PW =?  WHERE USER_ID = ? ";
		
		try {
			
			pstm = con.prepareStatement(sql);
			pstm.setString(1,dto.getUser_pw());
			pstm.setString(2,dto.getUser_id());
			
			System.out.println("수정 쿼리 준비 03");
			
			res = pstm.executeUpdate();
			
			System.out.println("쿼리 실행 및 준비 04 ");
			
			if(res>0) {
				commit(con);
			}
			
			
		} catch (SQLException e) {
			System.out.println("3/4 단계 오류");
			e.printStackTrace();
		}finally {
			close(pstm);
			close(con);
			System.out.println("05. db 종료\n");
		}
		
		return res;
	
	}
	
	public int insertLogin(GameDto dto) {
		
		Connection con = getConnection();
		PreparedStatement pstm = null;
		
		int res = 0;
		
		String sql = " INSERT INTO USERS VALUES(USER_NO.NEXTVAL, ? , ? , ? , ? , 'N', 0 ) ";
		
		try {
			pstm = con.prepareStatement(sql);
			pstm.setString(1, dto.getUser_id());
			pstm.setString(2,dto.getUser_pw());
			pstm.setString(3, dto.getUser_name());
			pstm.setString(4,dto.getUser_email());
			//pstm.setString(5, dto.getUser_enabled());
			//pstm.setInt(6, dto.getUser_count());
			
			System.out.println("3" + sql);
			
			res = pstm.executeUpdate();
			System.out.println("4");
			
			if(res>0)commit(con);
			
		} catch (SQLException e) {
			
			System.out.println("3/4");
			e.printStackTrace();
			
		} finally {
			close(pstm);
		}
		
		return res;
	}

	public GameDto selectPw(String user_id) {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		GameDto res = null;
		String sql = " SELECT USER_PW FROM USERS WHERE USER_ID=? ";

		try {
			pstm = con.prepareStatement(sql);
			pstm.setString(1, user_id);

			System.out.println("03. query 준비:" + sql);

			rs = pstm.executeQuery();
			System.out.println("04. query 실행 및 리턴");
			
			while(rs.next()) {
				res = new GameDto(rs.getString("user_pw"));
			}

		} catch (SQLException e) {
			System.out.println("3/4 실행 오류");
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstm);
			close(con);
			System.out.println("05. db 종료\n");
		}
			
		return res;
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
