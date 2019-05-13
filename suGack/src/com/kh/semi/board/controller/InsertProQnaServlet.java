package com.kh.semi.board.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.semi.board.model.service.ProQnaService;
import com.kh.semi.board.model.vo.ProQna;
import com.kh.semi.member.model.vo.Member;

/**
 * Servlet implementation class InsertProQnaServlet
 */
@WebServlet("/insertProQna.bo")
public class InsertProQnaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertProQnaServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String category = request.getParameter("category");
		
		String content = request.getParameter("content");
		
		int writer = ((Member)(request.getSession().getAttribute("loginUser"))).getMemberId();
		
		ProQna qna  = new ProQna();
		qna.setcategory(category);
		qna.setContent(content);
		qna.setMid(writer);
		System.out.println(qna);
		
		int result = new ProQnaService().insertProQna(qna);
		
		String page = "";
		
		if(result>0) {
			
			System.out.println("성공: "+result);
			
			response.sendRedirect("views/product/productDetail.jsp");
			//request.getRequestDispatcher("views/product/productDetail.jsp").forward(request, response);
			//RequestDispatcher dis = request.getRequestDispatcher("views/member/boardQna.jsp");
			//dis.forward(request, response);
			/*page = "views/memeber/boardQna.jsp";
			request.setAttribute("qna", qna);
			request.getRequestDispatcher(page).forward(request, response);*/
		}else {
			System.out.println("실패: "+result);
			request.setAttribute("msg", "문의 작성 실패!");
			   
		
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
			
			
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
