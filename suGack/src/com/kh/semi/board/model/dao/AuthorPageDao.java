package com.kh.semi.board.model.dao;

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

import com.kh.semi.board.model.vo.AuthorPageAttachmrnt;
import com.kh.semi.board.model.vo.Board;
import static com.kh.semi.common.JDBCTemplate.*;

public class AuthorPageDao {
	private Properties prop = new Properties();

	public AuthorPageDao() {
		
		String fileName = ProQnaDao.class.getResource("/sql/board/board-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (FileNotFoundException e) {
			
			e.printStackTrace();
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}	
	
	
	
	public int insertAuthorPageContent(Connection con, ArrayList<AuthorPageAttachmrnt> fileList) {
		
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		
		String query = prop.getProperty("");
		
		try {
			
			for(int i=0; i<fileList.size();i++) {
			
				pstmt = con.prepareStatement(query);
				pstmt.setInt(1, fileList.get(i).getFileCode());
				pstmt.setString(2,fileList.get(i).getOriginName());
				
			}
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		
		
		
		return 0 ;
	}



	public int InsertAuthorPage(Connection con, Board b) {
		PreparedStatement pstmt = null;
		int result = 0; 
		
		String query = prop.getProperty("insertAuthorPage");
		
		
		try {
			pstmt=con.prepareStatement(query);
			pstmt.setString(1, b.getContent());
			pstmt.setString(2, b.getTitle());
			
			
			
			result = pstmt.executeUpdate();
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			close(pstmt);
		}
		
		
		
		return 0;
	}



	public int insertAuthorPageProContent(Connection con, Board b) {
		
		PreparedStatement pstmt = null;
		
		int result = 0; 
		
		String query  = prop.getProperty("insertAuthorPageBoard");
		
		try {
			pstmt = con.prepareStatement(query);
			
			pstmt.setString(1,b.getContent());
			pstmt.setString(2, b.getTitle());
			
			
			result = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
		
		
		
		
		
	}



	public int selectAuthorPageProCurrval(Connection con) {
		Statement stmt = null; 
		ResultSet rset = null; 
		
		int bid = 0; 
		
		
		String query = prop.getProperty("selectAuthorPageCurrval");
		
		try {
			stmt =con.createStatement();
		    rset =stmt.executeQuery(query);
		    
		    if(rset.next()) {
		    	bid= rset.getInt("currval");
		    }
		
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		
		}finally {
		   
			close(rset);
			close(stmt);
		
		
		} 
		
		
		return bid;
		
		
		
	
	}



	public int insertAuthorPageAttachment(Connection con, ArrayList<AuthorPageAttachmrnt> fileList) {
		// TODO Auto-generated method stub
		return 0;
	}

}
