package com.game.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.game.dto.GameDto;

import common.JDBCTemplate;

public class MypageDao extends JDBCTemplate {

	public List<GameDto> selectReviewPc() {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		List<GameDto> res = new ArrayList<GameDto>();
		// pc
		String sql = " SELECT RV_NO,GAME_NAME, RV_STAR, RV_CONTENT,RV_PLATFORM FROM REVIEW A FULL OUTER JOIN GAME B ON A.RV_GAME_NO = B.GAME_NO WHERE GAME_PLATFORM=1 AND RV_NO IS NOT NULL ";

		try {
			pstm = con.prepareStatement(sql);
			System.out.println("03. query 준비: " + sql);

			rs = pstm.executeQuery();
			System.out.println("04. 실행 및 리턴");

			while (rs.next()) {
				GameDto dto = new GameDto();
				dto.setRv_no(rs.getInt("rv_no"));
				dto.setGame_name(rs.getString("game_name"));
				dto.setRv_star(rs.getDouble("rv_star"));
				dto.setRv_content(rs.getString("rv_content"));
				dto.setRv_platform(rs.getInt("rv_platform"));

				res.add(dto);
			}

		} catch (SQLException e) {
			System.out.println("3/4단계 에러");
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstm);
			close(con);
			System.out.println("05. db 종료\n");
		}
		return res;

	}
	
	public List<GameDto> selectReviewPs4() {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		List<GameDto> res = new ArrayList<GameDto>();
		// pc
		String sql = " SELECT RV_NO,GAME_NAME, RV_STAR, RV_CONTENT,RV_PLATFORM FROM REVIEW A FULL OUTER JOIN GAME B ON A.RV_GAME_NO = B.GAME_NO WHERE GAME_PLATFORM=2 AND RV_NO IS NOT NULL ";

		try {
			pstm = con.prepareStatement(sql);
			System.out.println("03. query 준비: " + sql);

			rs = pstm.executeQuery();
			System.out.println("04. 실행 및 리턴");

			while (rs.next()) {
				GameDto dto = new GameDto();
				dto.setRv_no(rs.getInt("rv_no"));
				dto.setGame_name(rs.getString("game_name"));
				dto.setRv_star(rs.getDouble("rv_star"));
				dto.setRv_content(rs.getString("rv_content"));
				dto.setRv_platform(rs.getInt("rv_platform"));

				res.add(dto);
			}

		} catch (SQLException e) {
			System.out.println("3/4단계 에러");
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstm);
			close(con);
			System.out.println("05. db 종료\n");
		}
		return res;

	}
	
	public List<GameDto> selectReviewXbox() {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		List<GameDto> res = new ArrayList<GameDto>();
		// pc
		String sql = " SELECT RV_NO,GAME_NAME, RV_STAR, RV_CONTENT,RV_PLATFORM FROM REVIEW A FULL OUTER JOIN GAME B ON A.RV_GAME_NO = B.GAME_NO WHERE GAME_PLATFORM=3 AND RV_NO IS NOT NULL ";

		try {
			pstm = con.prepareStatement(sql);
			System.out.println("03. query 준비: " + sql);

			rs = pstm.executeQuery();
			System.out.println("04. 실행 및 리턴");

			while (rs.next()) {
				GameDto dto = new GameDto();
				dto.setRv_no(rs.getInt("rv_no"));
				dto.setGame_name(rs.getString("game_name"));
				dto.setRv_star(rs.getDouble("rv_star"));
				dto.setRv_content(rs.getString("rv_content"));
				dto.setRv_platform(rs.getInt("rv_platform"));

				res.add(dto);
			}

		} catch (SQLException e) {
			System.out.println("3/4단계 에러");
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstm);
			close(con);
			System.out.println("05. db 종료\n");
		}
		return res;

	}
	
	public List<GameDto> selectReviewSwitch() {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		List<GameDto> res = new ArrayList<GameDto>();
		// pc
		String sql = " SELECT RV_NO,GAME_NAME, RV_STAR, RV_CONTENT,RV_PLATFORM FROM REVIEW A FULL OUTER JOIN GAME B ON A.RV_GAME_NO = B.GAME_NO WHERE GAME_PLATFORM=4 AND RV_NO IS NOT NULL ";

		try {
			pstm = con.prepareStatement(sql);
			System.out.println("03. query 준비: " + sql);

			rs = pstm.executeQuery();
			System.out.println("04. 실행 및 리턴");

			while (rs.next()) {
				GameDto dto = new GameDto();
				dto.setRv_no(rs.getInt("rv_no"));
				dto.setGame_name(rs.getString("game_name"));
				dto.setRv_star(rs.getDouble("rv_star"));
				dto.setRv_content(rs.getString("rv_content"));
				dto.setRv_platform(rs.getInt("rv_platform"));

				res.add(dto);
			}

		} catch (SQLException e) {
			System.out.println("3/4단계 에러");
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstm);
			close(con);
			System.out.println("05. db 종료\n");
		}
		return res;

	}

	public int deleteRv(int seq) {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		int res = 0;
	
		
		String sql = " DELETE FROM REVIEW WHERE RV_NO=? ";

		try {
			pstm = con.prepareStatement(sql);
			pstm.setInt(1, seq);

			System.out.println("03. query 준비:" + sql);
			
			res = pstm.executeUpdate();
			System.out.println("04. query 실행 및 리턴");
			
			if(res>0) {
				commit(con);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("3/4 단계 에러");
			e.printStackTrace();
		}finally {
			close(pstm);
			close(con);
			System.out.println("05. db 종료\n");
		}
		return res;
	}

	public List<GameDto> selectPc() {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		List<GameDto> res = new ArrayList<GameDto>();
		// pc
		String sql = " SELECT RV_NO,GAME_NAME, RV_STAR, RV_CONTENT FROM REVIEW A FULL OUTER JOIN GAME B ON A.RV_GAME_NO = B.GAME_NO WHERE GAME_PLATFORM=1 AND RV_NO IS NOT NULL ";

		try {
			pstm = con.prepareStatement(sql);
			System.out.println("03. query 준비: " + sql);

			rs = pstm.executeQuery();
			System.out.println("04. 실행 및 리턴");

			while (rs.next()) {
				GameDto dto = new GameDto();
				dto.setRv_no(rs.getInt("rv_no"));
				dto.setGame_name(rs.getString("game_name"));
				dto.setRv_star(rs.getDouble("rv_star"));
				dto.setRv_content(rs.getString("rv_content"));

				res.add(dto);
			}

		} catch (SQLException e) {
			System.out.println("3/4단계 에러");
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstm);
			close(con);
			System.out.println("05. db 종료\n");
		}
		return res;
	}
	
	public List<GameDto> selectPs4() {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		List<GameDto> res = new ArrayList<GameDto>();

		String sql = " SELECT RV_NO,GAME_NAME, RV_STAR, RV_CONTENT FROM REVIEW A FULL OUTER JOIN GAME B ON A.RV_GAME_NO = B.GAME_NO WHERE GAME_PLATFORM=2 AND RV_NO IS NOT NULL ";

		try {
			pstm = con.prepareStatement(sql);
			System.out.println("03. query 준비: " + sql);

			rs = pstm.executeQuery();
			System.out.println("04. 실행 및 리턴");

			while (rs.next()) {
				GameDto dto = new GameDto();
				dto.setRv_no(rs.getInt("rv_no"));
				dto.setGame_name(rs.getString("game_name"));
				dto.setRv_star(rs.getDouble("rv_star"));
				dto.setRv_content(rs.getString("rv_content"));

				res.add(dto);
			}

		} catch (SQLException e) {
			System.out.println("3/4단계 에러");
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstm);
			close(con);
			System.out.println("05. db 종료\n");
		}
		return res;
	}
	
	public List<GameDto> selectXbox() {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		List<GameDto> res = new ArrayList<GameDto>();
		// pc
		String sql = " SELECT RV_NO,GAME_NAME, RV_STAR, RV_CONTENT FROM REVIEW A FULL OUTER JOIN GAME B ON A.RV_GAME_NO = B.GAME_NO WHERE GAME_PLATFORM=3 AND RV_NO IS NOT NULL ";

		try {
			pstm = con.prepareStatement(sql);
			System.out.println("03. query 준비: " + sql);

			rs = pstm.executeQuery();
			System.out.println("04. 실행 및 리턴");

			while (rs.next()) {
				GameDto dto = new GameDto();
				dto.setRv_no(rs.getInt("rv_no"));
				dto.setGame_name(rs.getString("game_name"));
				dto.setRv_star(rs.getDouble("rv_star"));
				dto.setRv_content(rs.getString("rv_content"));

				res.add(dto);
			}

		} catch (SQLException e) {
			System.out.println("3/4단계 에러");
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstm);
			close(con);
			System.out.println("05. db 종료\n");
		}
		return res;
	}
	
	public List<GameDto> selectSwitch() {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		List<GameDto> res = new ArrayList<GameDto>();
		// pc
		String sql = " SELECT RV_NO,GAME_NAME, RV_STAR, RV_CONTENT FROM REVIEW A FULL OUTER JOIN GAME B ON A.RV_GAME_NO = B.GAME_NO WHERE GAME_PLATFORM=4 AND RV_NO IS NOT NULL ";

		try {
			pstm = con.prepareStatement(sql);
			System.out.println("03. query 준비: " + sql);

			rs = pstm.executeQuery();
			System.out.println("04. 실행 및 리턴");

			while (rs.next()) {
				GameDto dto = new GameDto();
				dto.setRv_no(rs.getInt("rv_no"));
				dto.setGame_name(rs.getString("game_name"));
				dto.setRv_star(rs.getDouble("rv_star"));
				dto.setRv_content(rs.getString("rv_content"));

				res.add(dto);
			}

		} catch (SQLException e) {
			System.out.println("3/4단계 에러");
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstm);
			close(con);
			System.out.println("05. db 종료\n");
		}
		return res;
	}

//	public GameDto selectOne_RV(int rv_no) {
//		Connection con = getConnection();
//		PreparedStatement pstm = null;
//		ResultSet rs = null;
//		GameDto res = null;
//		String sql =" SELECT RV_NO, RV_CONTENT,  "
//		
//		pstm = con.prepareStatement(sql);
//		
//		return null;
//	}
}
