package com.kh.semi.admin.model.service;

import java.sql.Connection;
import java.sql.Date;
import java.util.ArrayList;

import com.kh.semi.admin.model.dao.adminDao;
import com.kh.semi.admin.model.vo.SearchMember;
import com.kh.semi.member.model.vo.Member;
import static com.kh.semi.common.JDBCTemplate.*;

public class adminService {

	public ArrayList<SearchMember> searchMember(SearchMember m) {
		Connection con = getConnection();
		
		ArrayList<SearchMember> list = new adminDao().searchMember(m, con);
		
		close(con);
		
		
		return list;
	}

	public ArrayList<Integer> selectMemberForMonth() {
		Connection con = getConnection();
		
		ArrayList<Integer> list = new adminDao().selectMemberForMonth(con);
		
		close(con);
		
		return list;
	}

	public ArrayList<Integer> selectSalesForMonth(Date sDate, Date eDate) {
		Connection con = getConnection();
		
		ArrayList<Integer> list = new adminDao(1).selectSalesForMonth(con, sDate, eDate);
		
		close(con);
		
		return list;
	}

	public ArrayList<Integer> selectSalesForWeek(Date sDate, Date eDate) {
		Connection con = getConnection();
		
		ArrayList<Integer> list = new adminDao(1).selectSalesForWeek(con, sDate, eDate);
		
		close(con);
		
		return list;
	}

	public ArrayList<Integer> selectSalesForDay(Date sDate, Date eDate) {
		Connection con = getConnection();
		
		ArrayList<Integer> list = new adminDao(1).selectSalesForDay(con, sDate, eDate);
		
		close(con);
		
		return list;
	}

	public ArrayList<String> getMonth(Date sDate, Date eDate) {
		Connection con = getConnection();
		
		ArrayList<String> list2 = new adminDao(1).getMonth(con, sDate, eDate);;
		
		close(con);
		
		return list2;
	}

	public ArrayList<String> getDay(Date sDate, Date eDate) {
		Connection con = getConnection();
		
		ArrayList<String> list2 = new adminDao(1).getDay(con, sDate, eDate);;
		
		close(con);
		
		return list2;
	}

	public ArrayList<String> getWeek(Date sDate, Date eDate) {
		Connection con = getConnection();
		
		ArrayList<String> list2 = new adminDao(1).getWeek(con, sDate, eDate);;
		
		close(con);
		
		return list2;
	}
		

	
	
}
