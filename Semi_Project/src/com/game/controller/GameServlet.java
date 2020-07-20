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

import com.game.dao.GameDao;
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

		GameDao dao = new GameDao();

		if (command.equals("other_user_dashboard")) {
			int user_no = Integer.parseInt(request.getParameter("user_no") );
			System.out.println("user_no : "+user_no);
			
			//GameDto otherList = dao.user_Select(user_no);
			//request.setAttribute("other", otherList);
			
			
		} else if (command.equals("contentpage")) {
			int game_no = Integer.parseInt(request.getParameter("game_no"));
			GameDto dto = dao.selectGame(game_no);
			request.setAttribute("dto", dto);

			List<GameDto> list = dao.reviewselectAll(dto);
			request.setAttribute("list", list);

			dispatch("contentpage.jsp", request, response);

		} else if (command.equals("contentpage_review")) {
			int game_no = Integer.parseInt(request.getParameter("game_no"));
			int rv_platform = Integer.parseInt(request.getParameter("game_platform"));
			String rv_content = request.getParameter("rv_content");

			GameDto dto = new GameDto(game_no, rv_platform, rv_content);

			int res = dao.reviewInsert(dto);

			if (res > 0) {
				jsResponse("리뷰 등록 성공!",
						"pagemove?command=contentpage&game_no=" + game_no + "&game_platform=" + rv_platform, response);
			} else {
				dispatch("pagemove?command=contentpage&game_no=" + game_no + "&game_platform=" + rv_platform, request,
						response);
			}
		} else if (command.equals("contentpage_review2")) {
			int game_no = Integer.parseInt(request.getParameter("game_no"));
			int rv_platform = Integer.parseInt(request.getParameter("game_platform"));
			String rv_content = request.getParameter("rv_content");

			GameDto dto = new GameDto(game_no, rv_platform, rv_content);

			int res = dao.reviewInsert(dto);

			if (res > 0) {
				jsResponse("리뷰 등록 성공!",
						"pagemove?command=contentpage_more&game_no=" + game_no + "&game_platform=" + rv_platform,
						response);
			} else {
				dispatch("pagemove?command=contentpage_more&game_no=" + game_no + "&game_platform=" + rv_platform,
						request, response);
			}

		} else if (command.equals("platform")) {
			int platform = Integer.parseInt(request.getParameter("platform"));

			List<GameDto> res1 = dao.selectAll(platform, 1);
			request.setAttribute("list1", res1);

			List<GameDto> res2 = dao.selectAll(platform, 2);
			request.setAttribute("list2", res2);

			List<GameDto> res3 = dao.selectAll(platform, 3);
			request.setAttribute("list3", res3);

			List<GameDto> alist = dao.imageSelectAll();
			request.setAttribute("alist", alist);

			List<GameDto> gotylist = dao.gotySelectAll();
			request.setAttribute("gotylist", gotylist);

			List<GameDto> reviewerlist = dao.selectReview();
			request.setAttribute("reviewer", reviewerlist);

			dispatch("platform.jsp", request, response);

		} else if (command.equals("search")) {
			String search = request.getParameter("search");
			System.out.println(search);

			// gamedto
			List<GameDto> dto = dao.search(search);
			request.setAttribute("dto", dto);

			List<GameDto> alist = dao.imageSelectAll();
			request.setAttribute("alist", alist);

			List<GameDto> gotylist = dao.gotySelectAll();
			request.setAttribute("gotylist", gotylist);

			List<GameDto> reviewerlist = dao.selectReview();
			request.setAttribute("reviewer", reviewerlist);

			dispatch("search.jsp", request, response);

		} else if (command.equals("contentpage_more")) {
			int game_no = Integer.parseInt(request.getParameter("game_no"));
			GameDto dto = dao.selectGame(game_no);
			request.setAttribute("dto", dto);
			List<GameDto> list = dao.reviewselectAll(dto);

			request.setAttribute("list", list);
			dispatch("contentpage_more.jsp", request, response);

		} else if (command.equals("mainLoad")) {
			List<GameDto> list = dao.mtableSelectAll();
			request.setAttribute("list", list);

			List<GameDto> alist = dao.imageSelectAll();
			request.setAttribute("alist", alist);

			List<GameDto> gotylist = dao.gotySelectAll();
			request.setAttribute("gotylist", gotylist);

			List<GameDto> reviewerlist = dao.selectReview();
			request.setAttribute("reviewer", reviewerlist);
			

			dispatch("main.jsp", request, response);

		} else if (command.equals("user_dashboard")) {
			String user_id = request.getParameter("user_id");
			
			List<GameDto> list_pc = dao.selectPc(user_id);
			List<GameDto> list_ps4 = dao.selectPs4(user_id);
			List<GameDto> list_xbox = dao.selectXbox(user_id);
			List<GameDto> list_switch = dao.selectSwitch(user_id);

			request.setAttribute("list_pc", list_pc);
			request.setAttribute("list_ps4", list_ps4);
			request.setAttribute("list_xbox", list_xbox);
			request.setAttribute("list_switch", list_switch);

			
			
			
			
			dispatch("user_dashboard.jsp", request, response);

//			response.sendRedirect("user_dashboard.jsp");
		} else if (command.equals("user_dashboard_pop_pc")) { // 마이페이지 리뷰 더보기 /pc
			//페이징
			int pageSize = 10;
			String pageNum = request.getParameter("pageNum");
			int currentPage =Integer.parseInt(pageNum);
			int startRow = (currentPage -1) * pageSize +1;
			int endRow = currentPage * pageSize;
			String user_id = request.getParameter("user_id");
			
			List<GameDto> list = dao.selectReviewPc(startRow, endRow, user_id);

			request.setAttribute("list", list);
			dispatch("user_dashboard_pop_pc.jsp", request, response);


		} else if (command.equals("user_dashboard_pop_ps4")) { // 마이페이지 리뷰 더보기 /pc
			//페이징
			int pageSize = 10;
			String pageNum = request.getParameter("pageNum");
			int currentPage =Integer.parseInt(pageNum);
			int startRow = (currentPage -1) * pageSize +1;
			int endRow = currentPage * pageSize;
			String user_id = request.getParameter("user_id");
			
			List<GameDto> list = dao.selectReviewPs4(startRow, endRow, user_id);

			request.setAttribute("list", list);
			dispatch("user_dashboard_pop_ps4.jsp", request, response);

		} else if (command.equals("user_dashboard_pop_xbox")) { // 마이페이지 리뷰 더보기 /ps4
			//페이징
			int pageSize = 10;
			String pageNum = request.getParameter("pageNum");
			int currentPage =Integer.parseInt(pageNum);
			int startRow = (currentPage -1) * pageSize +1;
			int endRow = currentPage * pageSize;
			String user_id = request.getParameter("user_id");
			
			List<GameDto> list = dao.selectReviewXbox(startRow, endRow, user_id);

			request.setAttribute("list", list);
			dispatch("user_dashboard_pop_xbox.jsp", request, response);


		} else if (command.equals("user_dashboard_pop_switch")) { // 마이페이지 리뷰 더보기 /switch
			//페이징
			int pageSize = 10;
			String pageNum = request.getParameter("pageNum");
			int currentPage =Integer.parseInt(pageNum);
			int startRow = (currentPage -1) * pageSize +1;
			int endRow = currentPage * pageSize;
			String user_id = request.getParameter("user_id");
			
			List<GameDto> list = dao.selectReviewSwitch(startRow, endRow, user_id);

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

		} else if (command.equals("updateform")) {
			int rv_no = Integer.parseInt(request.getParameter("rv_no"));

			GameDto dto = dao.selectOne_RV(rv_no);

			request.setAttribute("dto", dto);
			dispatch("user_dashboard_update.jsp", request, response);

		} else if (command.equals("user_dashboard_update")) {
			int rv_no = Integer.parseInt(request.getParameter("rv_no"));
			double rv_star = Double.parseDouble(request.getParameter("rv_star"));
			String rv_content = request.getParameter("rv_content");
			int rv_platform = Integer.parseInt(request.getParameter("rv_platform"));

			GameDto dto = new GameDto(rv_no, rv_star, rv_content, rv_platform);
			int res = dao.updateRv(dto);

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
		} else if (command.equals("backform")) { // 마이페이지 리뷰 슈정 - 취소 버튼 누르면
			int rv_platform = Integer.parseInt(request.getParameter("rv_platform"));

			switch (rv_platform) {
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

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	private void dispatch(String url, HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatch = request.getRequestDispatcher(url);
		dispatch.forward(request, response);
	}

	private void jsResponse(String msg, String url, HttpServletResponse response) throws IOException {

		String s = "<script type='text/javascript'>" + "alert('" + msg + "');" + "location.href='" + url + "';"
				+ "</script>";

		PrintWriter out = response.getWriter();
		out.print(s);

	}

}
