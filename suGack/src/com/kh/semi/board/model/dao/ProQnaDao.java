package com.kh.semi.board.model.dao;



import static com.kh.semi.common.JDBCTemplate.close;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.semi.board.model.vo.ProQna;

public class ProQnaDao {
	private Properties prop = new Properties();
	public ProQnaDao() {
	
		String fileName = ProQnaDao.class.getResource("/sql/board/board-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (FileNotFoundException e) {
			
			e.printStackTrace();
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}
	

	//Q&A문의글 작성용 메소드
	public int insertProQna(Connection con, ProQna qna) {
		
		PreparedStatement pstmt = null;	
		int result = 0;
		
		String query = prop.getProperty("insertQna");
		
		try {
			pstmt = con.prepareStatement(query);
		
			
			pstmt.setInt(1, qna.getMid());
			pstmt.setString(2, qna.getContent());
			pstmt.setInt(3, qna.getWorkId());  //작품코드
			//pstmt.setInt(4, Integer.parseInt(qna.getcategory()));
			pstmt.setString(4, qna.getcategory());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return result;
	}


	//게시글 리스트 조회
	public ArrayList<ProQna> selectList(Connection con, int memberId) {
		ArrayList<ProQna> list = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = prop.getProperty("selectQna");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, memberId);
			rset = pstmt.executeQuery();
			
			list = new ArrayList<ProQna>();
		
			while(rset.next()) {
				
				ProQna qna = new ProQna();
				qna.setRowNum(rset.getInt("ROWNUM"));
				qna.setBno(rset.getInt("BNO"));
				qna.setcategory(rset.getString("TITLE"));
				qna.setWriteDate(rset.getDate("WRITE_DATE"));
				qna.setMid(rset.getInt("MEMBER_ID"));
				
				list.add(qna);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}

	//전체 게시물 수 조회하기
	public int getListCount(Connection con) {
		Statement stmt = null;
		int listCount = 0;
		ResultSet rset = null;
		
		
		String query = prop.getProperty("listCount");
		
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);
			
			
			if(rset.next()) {
				listCount = rset.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(stmt);
			close(rset);
		}
		
		
		return listCount;
	}


	
	public ProQna selectOne(Connection con, int num) {
		
		ProQna qna = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = prop.getProperty("selectQnaOne");
		System.out.println(query);
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, num);
			
			rset = pstmt.executeQuery();
			System.out.println("ProQnaDao에서");
			if(rset.next()) {
				qna = new ProQna();
				
			
				qna.setContent(rset.getString("CONTENT"));
				qna.setcategory(rset.getString("TITLE"));
				qna.setWriteDate(rset.getDate("WRITE_DATE"));
				qna.setWriter(rset.getString("MEMBER_NAME"));
				
				
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		System.out.println(qna);
		return qna;
	}


	
}
