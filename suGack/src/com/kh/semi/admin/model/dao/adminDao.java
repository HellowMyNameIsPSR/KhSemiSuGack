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

	public ArrayList selectMemberForMonth(Connection con) {
		Statement stmt = null;
		ResultSet rset = null;
		ArrayList<Integer> list =  null;
		int num = 0;
		String query = prop.getProperty("selectMemberForMonth");
		
		try {
			stmt = con.createStatement();
			
			rset = stmt.executeQuery(query);
			
			list = new ArrayList<Integer>();
			
			while(rset.next()) {
				list.add(num, rset.getInt("MEMBERCOUNT"));
				num++;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		
		return list;
	}

}






















