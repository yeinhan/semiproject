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
		}else if(command.equals("pwchk")) {
			//user pw 존재 확인
			String user_id = request.getParameter("user_id");
			String chk_result = "";
			System.out.println("chk.user_id"+user_id);
			
			
			
			LoginDao dao = new LoginDao();
			GameDto res = dao.pwchk(user_id);
			
			String Chk = res.getUser_pw();
			
			String Chk_now = request.getParameter("user_pw");
			System.out.println("Chk:"+Chk);
			System.out.println("Chk_now"+Chk_now);
			
			if(Chk.equals(Chk_now)) {
				chk_result = "1";
			} else {
				chk_result = "0";
			}
		
			System.out.println(res);
			
			PrintWriter out = response.getWriter();
			out.println(chk_result);
			
			
		} else if(command.equals("pwchk2")) {
			//2차 비밀번호 확인
			String user_pw_ud = request.getParameter("user_pw_ud");
			String user_pw_udck = request.getParameter("user_pw_udck");
			System.out.println("user_pw_ud: "+user_pw_ud);
			System.out.println("user_pw_udck: " + user_pw_udck);
			
			String ckh_result = null;
			
			if(user_pw_ud.equals(user_pw_udck)) {
				ckh_result = "1";
			}else {
				ckh_result = "0";
			}
						
			PrintWriter out = response.getWriter();
			out.println(ckh_result);
			
		}else if(command.equals("pwchk_up")){
	        //비밀번호 수정
	         
	         String user_pw_ud = request.getParameter("user_pw_ud");
	         System.out.println("Controller user_pw_ud :"+user_pw_ud);
	         
	         String user_pw_udck = request.getParameter("user_pw_udck");
	         System.out.println("Controller user_pw_udck :"+user_pw_udck);
	         
	         String user_id = request.getParameter("user_id");
	         System.out.println("Controller user_id: "+user_id);
	         
	         LoginDao dao = new LoginDao();
	         GameDto dto = new GameDto(user_id, user_pw_udck);
	         
	            
	            if(user_pw_ud.equals(user_pw_udck)) {
	               int res = dao.Update_pw(dto);
	            
	               if(res>0) {
	            	   
	            	   System.out.println("\n update 성공!");
	                   jsResponse("비밀번호 수정 성공","user_dashboard.jsp",response);
	               
	               }else {
	            	   System.out.println("\n update 실패!");
	                   jsResponse("비밀번호 수정 실패","user_dashboard.jsp",response);
	               }
	               
	            }
		}else if(command.equals("idchk")) {
	         
	         String user_id = request.getParameter("user_id");
	         String chk = null;
	         System.out.println("chk.1"+user_id);
	         
	         LoginDao dao = new LoginDao();
	         boolean res = dao.idChk(user_id);
	         
	         System.out.println("chk.2"+user_id);
	         
	         if(res) {
	            
	            chk = "1";
	            
	         } else {
	            
	            chk = "0";
	            
	         }
	      
	         
	         PrintWriter out = response.getWriter();
	         out.println(chk);
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
