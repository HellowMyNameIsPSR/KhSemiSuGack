package com.kh.semi.board.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.kh.semi.board.model.service.ProQnaService;
import com.kh.semi.board.model.vo.ProQna;
import com.kh.semi.board.model.vo.ProQnaComment;

/**
 * Servlet implementation class InsertProQnaCommentServlet
 */
@WebServlet("/insertProQnaComment.bo")
public class InsertProQnaCommentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertProQnaCommentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String writer = request.getParameter("writer");
		int bno = Integer.parseInt(request.getParameter("bno"));
		String content = request.getParameter("content");
		
		/*ProQna qna = new ProQna();
		qna.setWriter(writer);
		qna.setBno(bno);
		qna.setContent(content);*/
		ProQnaComment comment = new ProQnaComment();
		comment.setWriter(writer);
		comment.setBno(bno);
		comment.setContent(content);
		
		System.out.println(comment);
		
		//ArrayList<ProQna> commentList = new ProQnaService().insertComment(qna);
		ArrayList<ProQnaComment> commentList = new ProQnaService().insertComment(comment);
		response.setContentType("application/json");
		
		new Gson().toJson(commentList, response.getWriter());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stㄴub
		doGet(request, response);
	}

}
