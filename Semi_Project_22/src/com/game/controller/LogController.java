package com.game.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.game.dao.LoginDao;
import com.game.dto.GameDto;

@WebServlet("/LogController")
public class LogController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LogController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
	    response.setContentType("text/html; charset=UTF-8");
		
		String command = request.getParameter("command");
		HttpSession session = null;
		System.out.printf("{%s}\n",command);
		
		if(command.equals("login")) {
			
			String user_id = request.getParameter("user_id");
			String user_pw = request.getParameter("user_pw");
			
			System.out.println("ID :"+ user_id);
			System.out.println("PW :"+ user_pw);
			
			LoginDao dao = new LoginDao();
			
			GameDto dto = dao.login(user_id,user_pw);
			
			System.out.println(dto.getUser_id());
			
			//request.getSession().setAttribute("login", user_id);
			
			if(dto.getUser_id()!= null) {
				
				System.out.println("로그인");
				session = request.getSession();
				session.setAttribute("dto", dto);
				
				
				request.getSession().setAttribute("login", user_id);
				System.out.println(user_id);
				jsResponse("로그인 성공","index.jsp",response);
				System.out.println("로그인");
				
				
			}
			else {
				System.out.println("실패");
				jsResponse("로그인 실패","index.jsp",response);
				
			}
			
		}else if(command.equals("log_out")) {
			
			request.getSession().invalidate(); 		//세션에 작성된 정보 삭제 
			jsResponse("정상적으로 로그아웃 되었습니다.", "index.jsp", response);
			//response.sendRedirect("index.jsp");
			
		}else if(command.equals("Insert")) {
		
			String user_id = request.getParameter("user_id");
			System.out.println("ID :"+user_id);
			String user_pw = request.getParameter("user_pw");
			System.out.println("PW :"+user_pw);
			String user_name = request.getParameter("user_name");
			System.out.println("NAME :"+user_name);
			String user_email = request.getParameter("user_email");
			System.out.println("EMAIL :"+user_email);
			String user_enable = request.getParameter("user_enable");
			System.out.println("ENABLE :"+user_enable);
			//int user_count = Integer.parseInt(request.getParameter("user_count"));
			//System.out.println("COUNT :"+user_count);
			
			
			GameDto dto = new GameDto(user_id,user_pw,user_name,user_email,user_enable);
			LoginDao dao = new LoginDao();
			int res = dao.insertLogin(dto);
			
			if(res>0) {
				System.out.println("\ninsert 성공!");
				jsResponse("회원가입 성공","main.jsp",response);
			}
			
			else {
				System.out.println("\ninsert 실패!");
				jsResponse("회원가입 실패","platform.jsp",response);
			}
		}else if(command.equals("pwchk")){
			
			String user_id = request.getParameter("user_id");
			System.out.println("Controller user_id :"+user_id);
			
			String user_pw = request.getParameter("user_pw");
			System.out.println("Controller user_pw :"+user_pw);
			
			String user_pw_ck = request.getParameter("user_pw_ck");
			System.out.println("Controller user_pw_ck :"+user_pw_ck);

			if(user_pw.equals(user_pw_ck)) {
				GameDto dto = new GameDto(user_id,user_pw);
				LoginDao dao = new LoginDao();
				int res = dao.pwchk(dto);
				
				if(res>0) {
					System.out.println("\n update 성공!");
					jsResponse("수정 성공","user_dashboard.jsp",response);
				}
				
				else {
					System.out.println("\n update 실패!");
					jsResponse("수정 실패","user_dashboard.jsp",response);
				}
				
			}else {
				jsResponse("수정 비밀번호가 일치하지 않습니다. ","user_dashboard.jsp",response);
			}
			
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	private void jsResponse(String msg, String url, HttpServletResponse response) throws IOException {
		String s = "<script type='text/javascript'>"+
				"alert('"+msg+"');"+
				"location.href='"+url+"';"+
				"</script>";
			
		PrintWriter out = response.getWriter();
		out.print(s);
	}

}
