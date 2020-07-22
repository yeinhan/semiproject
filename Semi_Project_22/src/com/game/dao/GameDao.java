package com.game.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.game.dto.GameDto;

import common.JDBCTemplate;

public class GameDao extends JDBCTemplate {

	public List<GameDto> mtableSelectAll() {
		Connection con = getConnection();
		Statement stmt = null;
		ResultSet rs = null;
		String sql = "SELECT * FROM GAME WHERE REGEXP_LIKE(GAME_NAME , '사이버|젤다|모여봐요|헤일로|발로란트|오리|데스페라도|오버워치')";
		List<GameDto> res = new ArrayList<>();

		try {
			stmt = con.createStatement();
			System.out.println("03. query ready " + sql);

			rs = stmt.executeQuery(sql);
			System.out.println("04. query began & return");

			while (rs.next()) {
				GameDto dto = new GameDto();
				dto.setGame_no(rs.getInt(1));
				dto.setGame_staravg(rs.getDouble(2));
				dto.setGame_platform(rs.getInt(3));
				dto.setGame_name(rs.getString(4));
				dto.setGame_company(rs.getString(5));
				dto.setGame_genre(rs.getInt(6));
				dto.setGame_release(rs.getDate(7));
				dto.setGame_content(rs.getString(8));
				dto.setGame_screenshot(rs.getString(9));
				dto.setGame_screenshot2(rs.getString(10));

				res.add(dto);
			}
		} catch (SQLException e) {
			System.out.println("3/4 stage error");
			e.printStackTrace();
		} finally {
			close(rs);
			close(stmt);
			close(con);
			System.out.println("db closed");
		}
		return res;

	}

	public List<GameDto> imageSelectAll() {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		String sql = "SELECT * FROM GAME "
				+ "WHERE REGEXP_LIKE(GAME_NAME ,'더 라스트 오브 어스 파트2|리그 오브 레전드|레드 데드 리뎀션 2|전략적 팀 전투|갓 오브 워') ";

		List<GameDto> res = new ArrayList<>();

		try {
			pstm = con.prepareStatement(sql);
			System.out.println("03.query ready " + sql);

			rs = pstm.executeQuery();
			System.out.println("04. query 실행 및 리턴");

			while (rs.next()) {
				GameDto dto = new GameDto();
				dto.setGame_no(rs.getInt(1));
				dto.setGame_staravg(rs.getDouble(2));
				dto.setGame_platform(rs.getInt(3));
				dto.setGame_name(rs.getString(4));
				dto.setGame_company(rs.getString(5));
				dto.setGame_genre(rs.getInt(6));
				dto.setGame_release(rs.getDate(7));
				dto.setGame_content(rs.getString(8));
				dto.setGame_screenshot(rs.getString(9));
				dto.setGame_screenshot2(rs.getString(10));

				res.add(dto);
			}
		} catch (SQLException e) {
			System.out.println("3/ 4 stage error");
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstm);
			close(con);
		}

		return res;

	}

	public List<GameDto> gotySelectAll() {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		String sql = "SELECT * FROM GAME " + "WHERE REGEXP_LIKE(GAME_NAME ,'세키로|스트랜딩|스파이더맨|위쳐|스타워즈|레지던트|컨트롤|데빌|언챠') ";

		List<GameDto> res = new ArrayList<>();

		try {
			pstm = con.prepareStatement(sql);
			System.out.println("03.query ready " + sql);

			rs = pstm.executeQuery();
			System.out.println("04. query 실행 및 리턴");

			while (rs.next()) {
				GameDto dto = new GameDto();
				dto.setGame_no(rs.getInt(1));
				dto.setGame_staravg(rs.getDouble(2));
				dto.setGame_platform(rs.getInt(3));
				dto.setGame_name(rs.getString(4));
				dto.setGame_company(rs.getString(5));
				dto.setGame_genre(rs.getInt(6));
				dto.setGame_release(rs.getDate(7));
				dto.setGame_content(rs.getString(8));
				dto.setGame_screenshot(rs.getString(9));
				dto.setGame_screenshot2(rs.getString(10));

				res.add(dto);
			}
		} catch (SQLException e) {
			System.out.println("3/ 4 stage error");
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstm);
			close(con);
		}

		return res;

	}

	public List<GameDto> selectReview() {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		List<GameDto> res = new ArrayList<>();
		String sql = "SELECT ROWNUM, A.* FROM (SELECT USER_NAME , USER_NO FROM USERS ORDER BY USER_COUNT DESC) A WHERE ROWNUM <= 6";

		try {
			pstm = con.prepareStatement(sql);
			rs = pstm.executeQuery();
			while (rs.next()) {
				GameDto tmp = new GameDto(rs.getString(2), rs.getInt(3));
				res.add(tmp);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstm);
			close(con);
		}

		return res;
	}

	public GameDto selectGame(int game_no) {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		GameDto res = null;
		String sql = "SELECT * FROM GAME , URL WHERE GAME_NO = ? AND URL_GAME_NO = ? ";

		try {
			pstm = con.prepareStatement(sql);
			pstm.setInt(1, game_no);
			pstm.setInt(2, game_no);
			System.out.println("03 . query 준비" + sql);

			rs = pstm.executeQuery();
			System.out.println("04. query 실행 및 리턴");

			while (rs.next()) {
				res = new GameDto();
				res.setGame_no(rs.getInt(1));
				res.setGame_staravg(rs.getDouble(2));
				res.setGame_platform(rs.getInt(3));
				res.setGame_name(rs.getString(4));
				res.setGame_company(rs.getString(5));
				res.setGame_genre(rs.getInt(6));
				res.setGame_release(rs.getDate(7));
				res.setGame_content(rs.getString(8));
				res.setGame_screenshot(rs.getString(9));
				res.setGame_screenshot2(rs.getString(10));
				res.setUrl_game_no(rs.getInt(11));
				res.setMain_image(rs.getString(12));
				res.setImage1(rs.getString(13));
				res.setImage2(rs.getString(14));
				res.setImage3(rs.getString(15));
				res.setImage4(rs.getString(16));
				res.setVideo1(rs.getString(17));
				res.setVideo2(rs.getString(18));
				res.setVideo3(rs.getString(19));
				res.setVideo4(rs.getString(20));
				res.setArticle1(rs.getString(21));
				res.setArticle2(rs.getString(22));
				res.setArticle3(rs.getString(23));
				res.setA_image1(rs.getString(24));
				res.setA_image2(rs.getString(25));
				res.setA_image3(rs.getString(26));
			}
		} catch (SQLException e) {
			System.out.println("3/4단계 오류");
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstm);
			close(con);
		}
		return res;

	}

	public List<GameDto> selectAll(int platform, int sort) {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		List<GameDto> res = new ArrayList<>();
		String sql = null;

		if (platform == 1) {
			if (sort == 1) {
				sql = "SELECT ROWNUM, A.* FROM (SELECT * FROM GAME WHERE GAME_PLATFORM = 1 ORDER BY GAME_STARAVG DESC) A";
			} else if (sort == 2) {
				sql = "SELECT ROWNUM, A.* FROM (SELECT * FROM GAME WHERE GAME_PLATFORM = 1 ORDER BY GAME_NAME ASC) A";
			} else if (sort == 3) {
				sql = "SELECT ROWNUM, A.* FROM (SELECT * FROM GAME WHERE GAME_PLATFORM = 1 ORDER BY GAME_RELEASE DESC) A";
			}
		} else if (platform == 2) {
			if (sort == 1) {
				sql = "SELECT ROWNUM, A.* FROM (SELECT * FROM GAME WHERE GAME_PLATFORM = 2 ORDER BY GAME_STARAVG DESC) A";
			} else if (sort == 2) {
				sql = "SELECT ROWNUM, A.* FROM (SELECT * FROM GAME WHERE GAME_PLATFORM = 2 ORDER BY GAME_NAME ASC) A";
			} else if (sort == 3) {
				sql = "SELECT ROWNUM, A.* FROM (SELECT * FROM GAME WHERE GAME_PLATFORM = 2 ORDER BY GAME_RELEASE DESC) A";
			}
		} else if (platform == 3) {
			if (sort == 1) {
				sql = "SELECT ROWNUM, A.* FROM (SELECT * FROM GAME WHERE GAME_PLATFORM = 3 ORDER BY GAME_STARAVG DESC) A";
			} else if (sort == 2) {
				sql = "SELECT ROWNUM, A.* FROM (SELECT * FROM GAME WHERE GAME_PLATFORM = 3 ORDER BY GAME_NAME ASC) A";
			} else if (sort == 3) {
				sql = "SELECT ROWNUM, A.* FROM (SELECT * FROM GAME WHERE GAME_PLATFORM = 3 ORDER BY GAME_RELEASE DESC) A";
			}
		} else if (platform == 4) {
			if (sort == 1) {
				sql = "SELECT ROWNUM, A.* FROM (SELECT * FROM GAME WHERE GAME_PLATFORM = 4 ORDER BY GAME_STARAVG DESC) A";
			} else if (sort == 2) {
				sql = "SELECT ROWNUM, A.* FROM (SELECT * FROM GAME WHERE GAME_PLATFORM = 3 ORDER BY GAME_NAME ASC) A";
			} else if (sort == 3) {
				sql = "SELECT ROWNUM, A.* FROM (SELECT * FROM GAME WHERE GAME_PLATFORM = 3 ORDER BY GAME_RELEASE DESC) A";
			}
		}

		try {
			pstm = con.prepareStatement(sql);
			System.out.println("03. query 준비 " + sql);
			rs = pstm.executeQuery();
			System.out.println("04. query 실행 및");
			while (rs.next()) {
				GameDto tmp = new GameDto(rs.getInt(1), rs.getInt(2), rs.getDouble(3), rs.getInt(4), rs.getString(5),
						rs.getString(6), rs.getInt(7), rs.getDate(8), rs.getString(9));
				res.add(tmp);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstm);
			close(con);
		}

		return res;
	}

	public List<GameDto> search(String search) {
		if (!search.isEmpty()) {
			Connection con = getConnection();
			PreparedStatement pstm = null;
			ResultSet rs = null;
			List<GameDto> res = new ArrayList<GameDto>();
			String sql = " SELECT * FROM REVIEW A FULL OUTER JOIN GAME B ON A.RV_GAME_NO = B.GAME_NO WHERE"
					+ " REPLACE(GAME_NAME,' ','')  LIKE ? ORDER BY RV_DATE DESC ";
			try {
				pstm = con.prepareStatement(sql);
				pstm.setString(1, "%" + search.replaceAll(" ", "") + "%");
				System.out.println("3.쿼리문 작성" + sql);

				rs = pstm.executeQuery();
				while (rs.next()) {
					GameDto tmp = new GameDto();

					// GAME
					tmp.setGame_no(rs.getInt("game_no"));
					tmp.setGame_staravg(rs.getDouble("game_staravg"));
					tmp.setGame_platform(rs.getInt("game_platform"));
					tmp.setGame_name(rs.getString("game_name"));
					tmp.setGame_company(rs.getString("game_company"));
					tmp.setGame_genre(rs.getInt("game_genre"));
					tmp.setGame_release(rs.getDate("game_release"));
					tmp.setGame_content(rs.getString("game_content"));
					tmp.setGame_screenshot(rs.getString("game_screenshot"));
					tmp.setGame_screenshot(rs.getString("game_screenshot2"));

					// REVIEW
					tmp.setRv_no(rs.getInt("rv_no"));
					tmp.setRv_user_id(rs.getString("rv_user_id"));
					tmp.setRv_game_no(rs.getInt("rv_game_no"));
					tmp.setRv_star(rs.getDouble("rv_star"));
					tmp.setRv_content(rs.getString("rv_content"));
					tmp.setRv_date(rs.getDate("rv_date"));
					tmp.setRv_platform(rs.getInt("rv_platform"));
					res.add(tmp);
				}
				System.out.println("4.쿼리실행 및 리턴");
			} catch (SQLException e) {
				System.out.println("3/4 오류");
				e.printStackTrace();
			} finally {
				close(rs);
				close(pstm);
				close(con);
				System.out.println("5. db 종료");
			}
			return res;
		} else {
			return null;
		}
	}

	public List<GameDto> reviewselectAll(GameDto dto) {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		List<GameDto> res = new ArrayList<>();
		String sql = " SELECT * FROM REVIEW WHERE RV_GAME_NO=? ORDER BY RV_DATE DESC ";

		try {
			pstm = con.prepareStatement(sql);
			pstm.setInt(1, dto.getGame_no());
			System.out.println("03. query 준비 " + sql);

			rs = pstm.executeQuery();
			System.out.println("04. query 실행 및");

			while (rs.next()) {
				GameDto tmp = new GameDto();
				tmp.setRv_no(rs.getInt(1));
				tmp.setRv_user_id(rs.getString(2));
				tmp.setRv_game_no(rs.getInt(3));
				tmp.setRv_star(rs.getInt(4));
				tmp.setRv_content(rs.getString(5));
				tmp.setRv_date(rs.getDate(6));
				tmp.setRv_platform(rs.getInt(7));

				res.add(tmp);
			}
		} catch (SQLException e) {
			System.out.println("3/4 단계 오류");
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstm);
			close(con);
			System.out.println("05. db 종료\n");
		}
		return res;
	}

	public int reviewInsert(GameDto dto) {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		int res = 0;
		String sql = " INSERT INTO REVIEW VALUES(RV_NO.NEXTVAL, ? ,?, ? ,?, SYSDATE, ?) ";

		try {
			pstm = con.prepareStatement(sql);
			pstm.setString(1, dto.getRv_user_id());
			pstm.setInt(2, dto.getGame_no());
			pstm.setDouble(3, dto.getRv_star());
			pstm.setString(4, dto.getRv_content());
			pstm.setInt(5, dto.getGame_platform());
			System.out.println("03. query 준비 : " + sql);

			res = pstm.executeUpdate();
			System.out.println("04. query 실행 및 리턴");

			if (res > 0) {
				commit(con);
			}

		} catch (SQLException e) {
			System.out.println("3/4 단계 오류");
			e.printStackTrace();
		} finally {
			close(pstm);
			close(con);
			System.out.println("05. db 종료\n");
		}

		return res;
	}

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

	public int deleteRv(int seq, String user_id) {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		int res = 0;

		String sql = " DELETE FROM REVIEW WHERE RV_NO=? AND RV_USER_ID=? ";

		try {
			pstm = con.prepareStatement(sql);
			pstm.setInt(1, seq);
			pstm.setString(2, user_id);

			System.out.println("03. query 준비:" + sql);

			res = pstm.executeUpdate();
			System.out.println("04. query 실행 및 리턴");

			if (res > 0) {
				commit(con);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("3/4 단계 에러");
			e.printStackTrace();
		} finally {
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
	

	public GameDto selectOne_RV(int rv_no, String user_id) {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		GameDto res = null;
		String sql = " SELECT RV_NO,GAME_NAME, RV_STAR, RV_CONTENT,RV_PLATFORM FROM REVIEW A FULL OUTER JOIN GAME B ON A.RV_GAME_NO = B.GAME_NO WHERE RV_NO=? AND RV_USER_ID=? AND RV_NO IS NOT NULL ";

		try {
			pstm = con.prepareStatement(sql);
			pstm.setInt(1, rv_no);
			pstm.setString(2, user_id);

			System.out.println("03. query 준비:" + sql);

			rs = pstm.executeQuery();
			System.out.println("04. query 실행 및 리턴");
			
			while(rs.next()) {
				res = new GameDto(rs.getInt("rv_no"),rs.getString("game_name"),
						rs.getDouble("rv_star"),rs.getString("rv_content"),rs.getInt("rv_platform"));
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

	public int updateRv(GameDto dto) {
		Connection con = getConnection();
		PreparedStatement  pstm = null;
		int res=0;
		String sql = " UPDATE REVIEW SET RV_STAR=?, RV_CONTENT=? WHERE RV_NO=? AND RV_USER_ID=? ";
		
		try {
			pstm = con.prepareStatement(sql);
			pstm.setDouble(1, dto.getRv_star());
			pstm.setString(2, dto.getRv_content());
			pstm.setInt(3, dto.getRv_no());
			pstm.setString(4, dto.getRv_user_id());
			
			System.out.println("03.query 준비: "+sql);

			res=pstm.executeUpdate();
			System.out.println("04. qeury 실행 및 리턴");
			
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

	public List<Integer> count(int game_no) {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		List<Integer> res = new ArrayList<>();
		String sql = "SELECT COUNT(*) FROM REVIEW WHERE RV_GAME_NO = ?";

		try {
			pstm = con.prepareStatement(sql);
			pstm.setInt(1, game_no);
			rs = pstm.executeQuery();

			while (rs.next()) {
				res.add(rs.getInt(1));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstm);
			close(con);
		}

		return res;
	}

	public int starUpdate(int game_no, double starAvg_res) {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		int res = 0;
		String sql = "UPDATE GAME SET GAME_STARAVG = ? WHERE GAME_NO = ?";

		try {
			pstm = con.prepareStatement(sql);
			pstm.setDouble(1, starAvg_res);
			pstm.setInt(2, game_no);
			res = pstm.executeUpdate();
			if (res > 0) {
				commit(con);
			} else {
				rollback(con);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstm);
			close(con);
		}

		return res;
	}

	public List<GameDto> otherUserSelect(int user_no) {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		List<GameDto> res = new ArrayList<>();
		String sql = "SELECT * FROM USERS U "
				+ "FULL OUTER JOIN REVIEW R ON U.USER_ID = R.RV_USER_ID FULL OUTER JOIN GAME G ON R.RV_GAME_NO = G.GAME_NO WHERE USER_NO= ? ";
		
		try {
			pstm = con.prepareStatement(sql);
			pstm.setInt(1, user_no);
			System.out.println("03. query 준비 : " + sql );
			
			rs = pstm.executeQuery();
			System.out.println("04. query 실행 및 리턴");
			
			while(rs.next() ) {
				GameDto dto = new GameDto();
				dto.setUser_no(rs.getInt("user_no"));
				dto.setUser_id(rs.getString("user_id"));
				dto.setUser_pw(rs.getString("user_pw"));
				dto.setUser_name(rs.getString("user_name"));
				dto.setUser_email(rs.getString("user_email"));
				dto.setUser_enabled(rs.getString("user_enabled"));
				dto.setUser_count(rs.getInt("user_count"));
				dto.setRv_no(rs.getInt("rv_no"));
				dto.setRv_user_id(rs.getString("rv_user_id"));
				dto.setRv_game_no(rs.getInt("rv_game_no"));
				dto.setRv_star(rs.getDouble("rv_star"));
				dto.setRv_content(rs.getString("rv_content"));
				dto.setRv_date(rs.getDate("rv_date"));
				dto.setRv_platform(rs.getInt("rv_platform"));
				dto.setGame_no(rs.getInt("game_no"));
				dto.setGame_staravg(rs.getDouble("game_staravg"));
				dto.setGame_platform(rs.getInt("game_platform"));
				dto.setGame_name(rs.getString("game_name"));
				dto.setGame_company(rs.getString("game_company"));
				dto.setGame_genre(rs.getInt("game_genre"));
				dto.setGame_release(rs.getDate("game_release"));
				dto.setGame_content(rs.getString("game_content"));
				dto.setGame_screenshot(rs.getString("game_screenshot"));
				dto.setGame_screenshot2(rs.getString("game_screenshot2"));
				
				res.add(dto);
			}
			
		} catch (SQLException e) {
			System.out.println("3/4 단계 오류");
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstm);
			close(con);
			System.out.println("05. db 종료");
		}
		return res;
	}
	
	public GameDto selectOtherUser(int user_no) {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		GameDto res = null;
		String sql = "SELECT * FROM USERS WHERE USER_NO = ? ";
		
		try {
			pstm = con.prepareStatement(sql);
			pstm.setInt(1, user_no);
			System.out.println("03. query 준비 :" + sql);
			
			rs = pstm.executeQuery();
			System.out.println("04. query 실행 및 리턴");
			
			while(rs.next()  ) {
				res = new GameDto();
				res.setUser_no(rs.getInt("user_no"));
				res.setUser_id(rs.getString("user_id"));
				res.setUser_pw(rs.getString("user_pw"));
				res.setUser_name(rs.getString("user_name"));
				res.setUser_email(rs.getString("user_email"));
				res.setUser_enabled(rs.getString("user_enabled"));
				res.setUser_count(rs.getInt("user_count"));
			}
			
		} catch (SQLException e) {
			System.out.println("3/4 단계 오류");
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstm);
			close(con);
			System.out.println("05. db 종료");
		}
		return res;
	}
	public List<GameDto> selectPc(String user_id) {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		List<GameDto> res = new ArrayList<GameDto>();
		// pc
		String sql = " SELECT RV_NO,GAME_NAME, RV_STAR, RV_CONTENT, USER_ID " + 
				" FROM REVIEW A " + 
				" FULL OUTER JOIN GAME B " + 
				"ON A.RV_GAME_NO = B.GAME_NO " + 
				" FULL OUTER JOIN USERS C " + 
				" ON A.RV_USER_ID = C.USER_ID " + 
				" WHERE GAME_PLATFORM=1 " + 
				" AND USER_ID = ? " +
				" AND RV_NO IS NOT NULL ORDER BY RV_NO ";

		try {
			pstm = con.prepareStatement(sql);
			pstm.setString(1, user_id);
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

	public List<GameDto> selectPs4(String user_id) {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		List<GameDto> res = new ArrayList<GameDto>();
		//ps4
		String sql = " SELECT RV_NO,GAME_NAME, RV_STAR, RV_CONTENT, USER_ID " + 
				" FROM REVIEW A " + 
				" FULL OUTER JOIN GAME B " + 
				"ON A.RV_GAME_NO = B.GAME_NO " + 
				" FULL OUTER JOIN USERS C " + 
				" ON A.RV_USER_ID = C.USER_ID " + 
				" WHERE GAME_PLATFORM=2 " + 
				" AND USER_ID = ? " +
				" AND RV_NO IS NOT NULL ORDER BY RV_NO ";
		
	
		
		try {
			pstm = con.prepareStatement(sql);
			pstm.setString(1, user_id);
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

	public List<GameDto> selectXbox(String user_id) {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		List<GameDto> res = new ArrayList<GameDto>();
		// xbox
		String sql = " SELECT RV_NO,GAME_NAME, RV_STAR, RV_CONTENT, USER_ID " + 
				" FROM REVIEW A " + 
				" FULL OUTER JOIN GAME B " + 
				"ON A.RV_GAME_NO = B.GAME_NO " + 
				" FULL OUTER JOIN USERS C " + 
				" ON A.RV_USER_ID = C.USER_ID " + 
				" WHERE GAME_PLATFORM=3 " + 
				" AND USER_ID = ? " +
				" AND RV_NO IS NOT NULL ORDER BY RV_NO ";

		try {
			pstm = con.prepareStatement(sql);
			pstm.setString(1, user_id);
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

	public List<GameDto> selectSwitch(String user_id) {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		List<GameDto> res = new ArrayList<GameDto>();
		// switch
		String sql = " SELECT RV_NO,GAME_NAME, RV_STAR, RV_CONTENT, USER_ID " + 
				" FROM REVIEW A " + 
				" FULL OUTER JOIN GAME B " + 
				"ON A.RV_GAME_NO = B.GAME_NO " + 
				" FULL OUTER JOIN USERS C " + 
				" ON A.RV_USER_ID = C.USER_ID " + 
				" WHERE GAME_PLATFORM=4 " + 
				" AND USER_ID = ? " +
				" AND RV_NO IS NOT NULL  ORDER BY RV_NO ";

		try {
			pstm = con.prepareStatement(sql);
			pstm.setString(1, user_id);
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
	public List<GameDto> selectReviewPc(int startRow, int endRow, String user_id) {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		List<GameDto> res = new ArrayList<GameDto>();
		// pc
		String sql ="SELECT * FROM(SELECT * FROM "
				+ " (SELECT ROWNUM AS row_num,RV_NO,GAME_NAME, RV_STAR, RV_CONTENT,RV_PLATFORM ,RV_DATE  FROM REVIEW A FULL OUTER JOIN GAME B ON A.RV_GAME_NO = B.GAME_NO FULL OUTER JOIN USERS C ON A.RV_USER_ID = C.USER_ID WHERE RV_PLATFORM = 1 AND USER_ID = ? )) "
				+ " WHERE row_num >= ? AND row_num <= ? ";

		try {
			pstm = con.prepareStatement(sql);
			pstm.setString(1, user_id);
			pstm.setInt(2, startRow);
			pstm.setInt(3, endRow);
			
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
				dto.setRv_date(rs.getDate("rv_date"));

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

	public List<GameDto> selectReviewPs4(int startRow, int endRow, String user_id) {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		List<GameDto> res = new ArrayList<GameDto>();

		String sql ="SELECT * FROM(SELECT * FROM "
				+ " (SELECT ROWNUM AS row_num,RV_NO,GAME_NAME, RV_STAR, RV_CONTENT,RV_PLATFORM ,RV_DATE  FROM REVIEW A FULL OUTER JOIN GAME B ON A.RV_GAME_NO = B.GAME_NO FULL OUTER JOIN USERS C ON A.RV_USER_ID = C.USER_ID WHERE GAME_PLATFORM=2 AND USER_ID = ? )) "
				+ " WHERE row_num >= ? AND row_num <= ? ";
		
		
//		SELECT RV_NO,GAME_NAME, RV_STAR, RV_CONTENT, USER_ID FROM REVIEW A FULL OUTER JOIN GAME B ON A.RV_GAME_NO = B.GAME_NO FULL OUTER JOIN USERS C ON A.RV_USER_ID = C.USER_ID WHERE GAME_PLATFORM=2 AND USER_ID = ? AND RV_NO IS NOT NULL
		
		try {
			pstm = con.prepareStatement(sql);
			pstm.setString(1, user_id);
			pstm.setInt(2, startRow);
			pstm.setInt(3, endRow);
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
				dto.setRv_date(rs.getDate("rv_date"));
				
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

	public List<GameDto> selectReviewXbox(int startRow, int endRow,String user_id) {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		List<GameDto> res = new ArrayList<GameDto>();
		// pc
		String sql ="SELECT * FROM(SELECT * FROM "
				+ " (SELECT ROWNUM AS row_num,RV_NO,GAME_NAME, RV_STAR, RV_CONTENT,RV_PLATFORM ,RV_DATE  FROM REVIEW A FULL OUTER JOIN GAME B ON A.RV_GAME_NO = B.GAME_NO FULL OUTER JOIN USERS C ON A.RV_USER_ID = C.USER_ID WHERE GAME_PLATFORM=3 AND USER_ID = ? )) "
				+ " WHERE row_num >= ? AND row_num <= ? ";
		try {
			pstm = con.prepareStatement(sql);
			pstm.setString(1, user_id);
			pstm.setInt(2, startRow);
			pstm.setInt(3, endRow);
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
				dto.setRv_date(rs.getDate("rv_date"));

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
	

	public List<GameDto> selectReviewSwitch(int startRow, int endRow, String user_id) {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		List<GameDto> res = new ArrayList<GameDto>();
		// pc
		String sql ="SELECT * FROM(SELECT * FROM "
				+ " (SELECT ROWNUM AS row_num,RV_NO,GAME_NAME, RV_STAR, RV_CONTENT,RV_PLATFORM ,RV_DATE  FROM REVIEW A FULL OUTER JOIN GAME B ON A.RV_GAME_NO = B.GAME_NO FULL OUTER JOIN USERS C ON A.RV_USER_ID = C.USER_ID WHERE GAME_PLATFORM=4 AND USER_ID = ? )) "
				+ " WHERE row_num >= ? AND row_num <= ? ";
		try {
			pstm = con.prepareStatement(sql);
			pstm.setString(1, user_id);
			pstm.setInt(2, startRow);
			pstm.setInt(3, endRow);
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
				dto.setRv_date(rs.getDate("rv_date"));

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
	
	public int getCount2(){
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		
		int count = 0;
		String sql = "select count(*) from review where rv_platform =2";
		try {
			pstm = con.prepareStatement(sql);
			rs = pstm.executeQuery();
			if(rs.next()){
				count = rs.getInt(1);
			}
		} catch (Exception e) {
			System.out.println("3/4단계 에러");
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstm);
			close(con);
			System.out.println("05. db 종료\n");
		}
		return count; // 총 레코드 수 리턴
	}
	
	public int getCount1(){
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		
		int count = 0;
		String sql = "select count(*) from review where rv_platform =1";
		try {
			pstm = con.prepareStatement(sql);
			rs = pstm.executeQuery();
			if(rs.next()){
				count = rs.getInt(1);
			}
		} catch (Exception e) {
			System.out.println("3/4단계 에러");
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstm);
			close(con);
			System.out.println("05. db 종료\n");
		}
		return count; // 총 레코드 수 리턴
	}
	
	public int getCount3(){
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		
		int count = 0;
		String sql = "select count(*) from review where rv_platform =3";
		try {
			pstm = con.prepareStatement(sql);
			rs = pstm.executeQuery();
			if(rs.next()){
				count = rs.getInt(1);
			}
		} catch (Exception e) {
			System.out.println("3/4단계 에러");
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstm);
			close(con);
			System.out.println("05. db 종료\n");
		}
		return count; // 총 레코드 수 리턴
	}
	public int getCount4(){
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		
		int count = 0;
		String sql = "select count(*) from review where rv_platform =4";
		try {
			pstm = con.prepareStatement(sql);
			rs = pstm.executeQuery();
			if(rs.next()){
				count = rs.getInt(1);
			}
		} catch (Exception e) {
			System.out.println("3/4단계 에러");
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstm);
			close(con);
			System.out.println("05. db 종료\n");
		}
		return count; // 총 레코드 수 리턴
	}
}
