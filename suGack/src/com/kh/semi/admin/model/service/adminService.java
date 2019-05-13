package com.kh.semi.admin.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.semi.admin.model.dao.adminDao;
import com.kh.semi.member.model.vo.Member;
import static com.kh.semi.common.JDBCTemplate.*;

public class adminService {

	public ArrayList<Member> searchMember(Member m) {
		Connection con = getConnection();
		
		ArrayList<Member> list = new adminDao().searchMember(m, con);
		
		
		close(con);
		
		
		return list;
	}

	public ArrayList<Integer> selectMemberForMonth() {
		Connection con = getConnection();
		
		ArrayList<Integer> list = new adminDao().selectMemberForMonth(con);
		
		close(con);
		
		return list;
	}

	
	
}
