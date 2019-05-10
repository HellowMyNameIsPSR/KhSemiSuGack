package com.kh.semi.member.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.kh.semi.member.model.vo.Member;
import static com.kh.semi.common.JDBCTemplate.*;

public class MemberDao {
	private Properties prop = new Properties();
	
	public MemberDao() {
		String fileName = MemberDao.class.getResource("/sql/member/member-query.properties").getPath();
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public int insertMember(Connection con, Member m) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertMember");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, m.getEmail());
			pstmt.setString(2, m.getPassword());
			pstmt.setString(3, m.getMemberName());
			pstmt.setString(4, m.getNickName());
			pstmt.setString(5, m.getPhone());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public Member loginMember(Connection con, String email, String password) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Member loginUser = null;
		
		String query = prop.getProperty("loginMember");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, email);
			pstmt.setString(2, password);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				loginUser = new Member();
				loginUser.setMemberId(rset.getInt("MEMBER_ID"));
				loginUser.setEmail(rset.getString("EMAIL"));
				loginUser.setPassword(rset.getString("PASSWORD"));
				loginUser.setMemberName(rset.getString("MEMBER_NAME"));
				loginUser.setNickName(rset.getString("NICK_NAME"));
				loginUser.setPhone(rset.getString("PHONE"));
				loginUser.setGender(rset.getString("GENDER"));
				loginUser.setBirthDate(rset.getDate("BIRTH_DATE"));
				loginUser.setEnrollDate(rset.getDate("ENROLL_DATE"));
				loginUser.setMemberType(rset.getString("MEMBER_TYPE"));
				loginUser.setAuthorDate(rset.getDate("AUTHOR_DATE"));
				loginUser.setPoint(rset.getInt("POINT"));
				loginUser.setEmailYN(rset.getString("EMAIL_YN"));
				loginUser.setOutDate(rset.getDate("OUT_DATE"));
				loginUser.setModifyDate(rset.getDate("L_MODIFY_DATE"));
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return loginUser;
	}

	public int updateMember(Connection con, Member m) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("updateMember");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, m.getPassword());
			pstmt.setString(2, m.getNickName());
			pstmt.setString(3, m.getPhone());
			pstmt.setString(4, m.getGender());
			pstmt.setDate(5, m.getBirthDate());
			pstmt.setInt(6, m.getMemberId());
			
			result = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		
		return result;
	}

	public int idCheck(Connection con, String email) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int result = 0;
		
		String query = prop.getProperty("idCheck");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, email);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				result = rset.getInt(1);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		
		
		
		return result;
	}

}






















