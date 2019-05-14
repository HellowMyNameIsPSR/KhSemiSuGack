package com.kh.semi.admin.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.semi.admin.model.dao.adminDao;
import com.kh.semi.admin.model.vo.SearchMember;
import com.kh.semi.member.model.vo.Member;
import static com.kh.semi.common.JDBCTemplate.*;

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

	public ArrayList<SearchMember> searchMember(SearchMember m, Connection con) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<SearchMember> list = null;
		
		String query = prop.getProperty("selectMember");
		
		try {
			pstmt = con.prepareStatement(query);
			
			pstmt.setString(1, m.getNameText());
			pstmt.setString(2, m.getMemberType());
			pstmt.setDate(3, m.getJoinStart());
			pstmt.setDate(4, m.getJoinLast());
			pstmt.setDate(5, m.getBirthDateStart());
			pstmt.setDate(6, m.getBirthDateLast());
			pstmt.setString(7, m.getGender());
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<>();
			
			System.out.println("첫번째 list" + list);
			
			while(rset.next()) {
				SearchMember sm = null;
				sm.setEmailText(rset.getString("EMAIL"));
				sm.setNameText(rset.getString("MEMBER_NAME"));
				sm.setMemberType(rset.getString("MEMBER_TYPE"));
				sm.setBirthDay(rset.getDate("BIRTH_DATE"));
				sm.setJoinDay(rset.getDate("ENROLL_DATE"));
				sm.setGender(rset.getString("GENDER"));
				
				
				System.out.println(sm);
				
				list.add(sm);
				
			}
			
				System.out.println("최종 list" + list);
			
		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
			
		}
		
		
		return list;
	}

}






















