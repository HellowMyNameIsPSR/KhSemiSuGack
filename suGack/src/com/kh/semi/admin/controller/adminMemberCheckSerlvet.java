package com.kh.semi.admin.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.sql.Date;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.kh.semi.admin.model.service.adminService;
import com.kh.semi.admin.model.vo.SearchMember;
import com.google.gson.Gson;



@WebServlet("/memberCheck.ad")
public class adminMemberCheckSerlvet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public adminMemberCheckSerlvet() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String searchType = request.getParameter("searchType");
		String searchText = request.getParameter("searchText");
		String memberType = request.getParameter("memberType");
		String joinStart = request.getParameter("joinStart");
		String joinLast = request.getParameter("joinLast");
		String birthDateStart = request.getParameter("birthDateStart");
		String birthDateLast = request.getParameter("birthDateLast");
		String gender = request.getParameter("gender");
		
		
		java.sql.Date joinStartday =  java.sql.Date.valueOf(joinStart);
		java.sql.Date joinLastday =  java.sql.Date.valueOf(joinLast);
		java.sql.Date birthDayStart = java.sql.Date.valueOf(birthDateStart);
		java.sql.Date birthDayLast = java.sql.Date.valueOf(birthDateLast);
		
		SearchMember m = new SearchMember();

		
		if(searchType.equals("email")) {
			System.out.println("이메일이다!");
			m.setEmailText(searchText);		
		}else if(searchType.equals("name")) {
			System.out.println("이름!");
			m.setNameText(searchText);
		}else {
			System.out.println("안된다!");
		}
		if(memberType.equals("일반회원")) {
			m.setMemberType("N");
		}else {
			m.setMemberType("W");
		}
		
		m.setSearchType(searchType);
		m.setJoinStart(joinStartday);
		m.setJoinLast(joinLastday);
		m.setBirthDateStart(birthDayStart);
		m.setBirthDateLast(birthDayLast);
		m.setGender(gender);
		
		
		new QueryMake(m);
		
		
		ArrayList<SearchMember> list = new adminService().searchMember(m);
		
		JSONArray result = new JSONArray();
		JSONObject searchMember = null;
		
		for(SearchMember sm : list) {
			searchMember = new JSONObject();
			searchMember.put("memberName", URLEncoder.encode(sm.getNameText(), "UTF-8"));
			searchMember.put("memberEmail", sm.getEmailText());
			searchMember.put("memberJoinDay", sm.getJoinDay());
			searchMember.put("memberBirthDay", sm.getBirthDay());
			searchMember.put("memberGender", sm.getGender());
			searchMember.put("memberType", sm.getMemberType());
			
			result.add(searchMember);
		}
	
		

		response.setContentType("application/json");
		new Gson().toJson(result, response.getWriter());
		
		
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
