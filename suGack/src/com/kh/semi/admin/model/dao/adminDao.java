package com.kh.semi.admin.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.semi.admin.model.dao.adminDao;
import com.kh.semi.member.model.vo.Member;

public class adminDao {
	private Properties prop = new Properties();
	
	public adminDao() {
		String fileName =  adminDao.class
				.getResource("/sql/admin/admin-query.properties")
				.getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	public ArrayList<Member> searchMember(Member m, Connection con) {
		ArrayList<Member> list = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "";
		
		if(m.getEmail() != null) {
			query = prop.getProperty("searchMemberEmail");
		}else if(m.getMemberName() != null){
			query = prop.getProperty("searchMemberName");
		}
		
		
		
		
		
		
		
		return list;
	}

}
