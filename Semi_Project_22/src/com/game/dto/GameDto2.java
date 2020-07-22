package com.game.dto;

import java.util.Date;

public class GameDto2 {
	// USER TABLE
	// 유저 번호, 아이디, 비밀번호, 이름, 이메일, 가입여부, COUNT=리뷰 작성 수
	private int user_no;
	private String user_id;
	private String user_pw;
	private String user_name;
	private String user_email;
	private String user_enabled;
	private int user_count;

	// -- 리뷰 번호, 리뷰에 작성한 유저 아이디, 게임 번호, 별점, 내용, 작성일자, 플랫폼 번호
	// -- RV_USER_ID는 USERS 테이블의 USER_ID의 컬럼을 참조
	// -- RV_GAME_NO는 GAME 테이블의 GAME_NO의 컬럼을 참조
	// -- RV_PLATFORM GAME 테이블의 GAME_PLATFORM의 컬럼을 참조
	// REVIEW TABLE
	private int rv_no;
	private int rv_game_no;
	private String rv_user_id;
	private String rv_game_name;
	private int rv_star;
	private String rv_content;
	private Date rv_date;
	private int rv_platform;
	
	//-- 게임 번호, 별 평점, 플랫폼, 게임이름, 회사, 장르, 출시일자, 요약(content)
	//GAME TABLE
	private int row_num;
	private int game_no;
	private double game_staravg;
	private int game_platform;
	private String game_name;
	private String game_company;
	private int game_genre;
	private Date game_release;
	
	//-- 상세페이지 테이블
	//CONTENTPAGE TABLE
	private int ul_game_no;
	private String video1;
	private String video2;
	private String video3;
	private String video4;
	private String video_title1;
	private String video_title2;
	private String video_title3;
	private String video_title4;
	private String article1;
	private String article2;
	private String article3;
	private String article_title1;
	private String article_title2;
	private String article_title3;
	private String article_summary1;
	private String article_summary2;
	private String article_summary3;
	
	
}
