package com.game.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.game.dao.MypageDao;
import com.game.dto.GameDto;

@WebServlet("/pagemove")
public class GameServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		String command = request.getParameter("command");
		System.out.printf("{%s}\n", command);

		MypageDao dao = new MypageDao();

		if (command.equals("main")) {
			response.sendRedirect("main.jsp");
		} else if (command.equals("contentpage")) {
			response.sendRedirect("contentpage.jsp");
		} else if (command.equals("platform")) {
			response.sendRedirect("platform.jsp");
		} else if (command.equals("search")) {
			response.sendRedirect("search.jsp");
		} else if (command.equals("user_dashboard")) {
			List<GameDto> list_pc = dao.selectPc();
			List<GameDto> list_ps4 = dao.selectPs4();			
			List<GameDto> list_xbox = dao.selectXbox();			
			List<GameDto> list_switch = dao.selectSwitch();
			
			request.setAttribute("list_pc", list_pc);
			request.setAttribute("list_ps4", list_ps4);
			request.setAttribute("list_xbox", list_xbox);
			request.setAttribute("list_switch", list_switch);
			
			dispatch("user_dashboard.jsp", request, response);
			
//			response.sendRedirect("user_dashboard.jsp");
		} else if (command.equals("contentpage_more")) {
			response.sendRedirect("contentpage_more.jsp");
		} else if (command.equals("user_dashboard_pop_pc")) { // 마이페이지 리뷰 더보기 /pc
			List<GameDto> list = dao.selectReviewPc();

			request.setAttribute("list", list);
			dispatch("user_dashboard_pop_pc.jsp", request, response);

		} else if (command.equals("user_dashboard_pop_ps4")) { // 마이페이지 리뷰 더보기 /pc
			List<GameDto> list = dao.selectReviewPs4();

			request.setAttribute("list", list);
			dispatch("user_dashboard_pop_ps4.jsp", request, response);

		} else if (command.equals("user_dashboard_pop_xbox")) { // 마이페이지 리뷰 더보기 /ps4
			List<GameDto> list = dao.selectReviewXbox();

			request.setAttribute("list", list);
			dispatch("user_dashboard_pop_xbox.jsp", request, response);

		} else if (command.equals("user_dashboard_pop_switch")) { // 마이페이지 리뷰 더보기 /switch
			List<GameDto> list = dao.selectReviewSwitch();

			request.setAttribute("list", list);
			dispatch("user_dashboard_pop_switch.jsp", request, response);

		} else if (command.equals("deleteform")) { // 삭제 //PC

			int seq = Integer.parseInt(request.getParameter("rv_no"));
			int platform = Integer.parseInt(request.getParameter("rv_platform"));
			System.out.println("platform" + platform);

			int res = dao.deleteRv(seq);

			switch (platform) {
			case 1:
				if (res > 0 & platform == 1) {
					jsResponse("글 삭제 성공", "pagemove?command=user_dashboard_pop_pc", response);
				} else {
					jsResponse("글 삭제 실패ㅜㅜ", "pagemove?command=user_dashboard_pop_pc", response);
				}
				break;
			case 2:
				if (res > 0 & platform == 2) {
					jsResponse("글 삭제 성공", "pagemove?command=user_dashboard_ps4_", response);
				} else {
					jsResponse("글 삭제 실패ㅜㅜ", "pagemove?command=user_dashboard_pop_ps4", response);
				}
				break;
				
			case 3:
				if (res > 0 & platform == 3) {
					jsResponse("글 삭제 성공", "pagemove?command=user_dashboard_pop_xbox", response);
				} else {
					jsResponse("글 삭제 실패ㅜㅜ", "pagemove?command=user_dashboard_pop_xbox", response);
				}
				break;
			case 4:
				if (res > 0 & platform == 4) {
					jsResponse("글 삭제 성공", "pagemove?command=user_dashboard_pop_switch", response);
				} else {
					jsResponse("글 삭제 실패ㅜㅜ", "pagemove?command=user_dashboard_pop_switch", response);
				}
				break;
			}

		} else if(command.equals("updateform")) {
	    	  int rv_no = Integer.parseInt(request.getParameter("rv_no"));
	    	  
	    	  GameDto dto = dao.selectOne_RV(rv_no);
	    	  
	    	  request.setAttribute("dto", dto);
	    	  dispatch("user_dashboard_update.jsp", request, response);
	    	  
	      }else if(command.equals("user_dashboard_update")) {
	    	  int rv_no = Integer.parseInt(request.getParameter("rv_no"));
	    	  double rv_star = Double.parseDouble(request.getParameter("rv_star"));
	    	  String rv_content = request.getParameter("rv_content");
	    	  int rv_platform = Integer.parseInt(request.getParameter("rv_platform"));
	    	  
	    	  GameDto dto = new GameDto(rv_no, rv_star, rv_content,rv_platform);
	    	  int res  = dao.updateRv(dto);
	    	  
	    	  switch (rv_platform) {
				case 1:
					if (res > 0 & rv_platform == 1) {
						jsResponse("글 수정 성공", "pagemove?command=user_dashboard_pop_pc", response);
					} else {
						jsResponse("글 수정 실패ㅜㅜ", "pagemove?command=user_dashboard_pop_pc", response);
					}
					break;
				case 2:
					if (res > 0 & rv_platform == 2) {
						jsResponse("글 수정 성공", "pagemove?command=user_dashboard_ps4_", response);
					} else {
						jsResponse("글 수정 실패ㅜㅜ", "pagemove?command=user_dashboard_pop_ps4", response);
					}
					break;
					
				case 3:
					if (res > 0 & rv_platform == 3) {
						jsResponse("글 수정 성공", "pagemove?command=user_dashboard_pop_xbox", response);
					} else {
						jsResponse("글 수정 실패ㅜㅜ", "pagemove?command=user_dashboard_pop_xbox", response);
					}
					break;
				case 4:
					if (res > 0 & rv_platform == 4) {
						jsResponse("글 수정 성공", "pagemove?command=user_dashboard_pop_switch", response);
					} else {
						jsResponse("글 수정 실패ㅜㅜ", "pagemove?command=user_dashboard_pop_switch", response);
					}
					break;
				}
	      }else if(command.equals("backform")) {
	    	  int rv_platform = Integer.parseInt(request.getParameter("rv_platform"));
	    	  
	    	  switch(rv_platform) {
	    	  case 1:
	    		  dispatch("pagemove?command=user_dashboard_pop_pc", request, response);
	    		  break;
	    	  case 2:
	    		  dispatch("pagemove?command=user_dashboard_pop_ps4", request, response);
	    		  break;
	    	  case 3:
	    		  dispatch("pagemove?command=user_dashboard_pop_xbox", request, response);
	    		  break;
	    	  case 4:
	    		  dispatch("pagemove?command=user_dashboard_pop_switch", request, response);
	    		  break;
	    	  
	    	  }
	    	  
	      }
	}

	private void jsResponse(String msg, String url, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		String s = "<script type='text/javascript'>" + "alert('" + msg + "');" + "location.href='" + url + "';"
				+ "</script>";

		PrintWriter out = response.getWriter();
		out.print(s);
	}

	private void dispatch(String url, HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatch = request.getRequestDispatcher(url);
		dispatch.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
