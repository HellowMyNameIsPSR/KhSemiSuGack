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
	public ArrayList<ProQna> selectList(Connection con) {
		ArrayList<ProQna> list = null;
		Statement stmt = null;
		ResultSet rset = null;
		
		String query = prop.getProperty("selectNotice");
		
		try {
			stmt = con.createStatement();
			
			rset = stmt.executeQuery(query);
			
			list = new ArrayList<ProQna>();
			
			while(rset.next()) {
				ProQna qna = new ProQna();
				qna.setBno(rset.getInt("BNO"));
				qna.setcategory(rset.getString("TITLE"));
				qna.setWriteDate(rset.getDate("WRITE_DATE"));
				
				list.add(qna);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(stmt);
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


	
}
