package com.kh.semi.work.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.semi.common.MyFileRenamePolicy;
import com.kh.semi.work.model.service.WorkService;
import com.kh.semi.work.model.vo.PicFile;
import com.kh.semi.work.model.vo.Work;
import com.oreilly.servlet.MultipartRequest;

@WebServlet("/insertSale.wo")
public class InsertWorkSalesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public InsertWorkSalesServlet() {}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//int workId = Integer.parseInt(request.getParameter("workId"));	//작품코드
		String workName = request.getParameter("workName");				//작품명
		String workContent = request.getParameter("workContent");		//작품설명
		int deliPrice = Integer.parseInt(request.getParameter("deliPrice"));				//배송비
		//String wrDate = request.getParameter("wrDate");					//작품등록일
		//String workKind = request.getParameter("workKind");				//작품종류
		//String memberId = request.getParameter("memberId");				//작가코드
		int price = Integer.parseInt(request.getParameter("price"));	//가격
		int cid = Integer.parseInt(request.getParameter("cid"));		//카테고리코드
		//int typeId = Integer.parseInt(request.getParameter("typeId"));	//유형코드
		
		//String author = String.valueOf(((Member)(request.getSession().getAttribute("loginUser"))).getMemberId());
		
		Work work = new Work();
		work.setworkName(workName);
		work.setWorkContent(workContent);
		work.setDeliPrice(deliPrice);
		work.setPrice(price);
		work.setCid(cid);
		System.out.println("workName : "+workName);
		System.out.println("workContent : "+workContent);
		System.out.println("deliPrice : "+deliPrice);
		System.out.println("price : "+price);
		System.out.println("cid : "+cid);
		
		int result = new WorkService().insertSale(work);
		
		System.out.println(result);
		
		
		//사진 부분!!
	
		
		
		String page = "";
		if(result > 0) {
			page = "views/author/authorHome.jsp";
			
			response.sendRedirect(page);
		}else {
			page = "";
			
			System.out.println("등록실패 원인 찾자");
		}
	
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}





























