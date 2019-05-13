package com.kh.semi.admin.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.semi.admin.model.service.adminService;
import com.kh.semi.member.model.vo.Member;


@WebServlet("/memberCheck.ad")
public class adminMemberCheckSerlvet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public adminMemberCheckSerlvet() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String type = request.getParameter("searchType");
		String searchType1 = request.getParameter("searchType1");
		String type2 = request.getParameter("type2");

		
		System.out.println("검색값 : " + searchType1);
		Member m = new Member();
		PrintWriter out = response.getWriter();
		if(type.equals("email")) {
			System.out.println("이메일이다!");
			
			m.setEmail(searchType1);
			
		}else if(type.equals("name")) {
			System.out.println("이름!");
			m.setMemberName(searchType1);

		}else {
			System.out.println("안된다!");
		}
		
		if(type2.equals("일반회원")) {
			m.setMemberType("N");
		}else {
			m.setMemberType("W");
		}
		
		ArrayList<Member> list = new adminService().searchMember(m);
		
		String page = "";
		
		if(list != null) {
			page = "views/notice/noticeList.jsp";
			request.setAttribute("list", list);
			
		}else {
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "공지사항 조회 실패!");
			
		}

		RequestDispatcher view = request.getRequestDispatcher(page);
		
		view.forward(request, response);
		
		//Member m = new adminService().searchId();
		
		/*System.out.println(type);
		
		out.print(type);*/
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
