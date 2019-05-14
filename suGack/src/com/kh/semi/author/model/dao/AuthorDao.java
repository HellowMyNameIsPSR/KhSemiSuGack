package com.kh.semi.author.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import static com.kh.semi.common.JDBCTemplate.*;

public class AuthorDao {
	
	private Properties prop = new Properties();
	
	public AuthorDao() {
		String fileName = AuthorDao.class
				.getResource("/sql/author/author-query.properties")
				.getPath();
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} //end try
	} //end constr

	public int selectBrandName(Connection con, String brandName) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = prop.getProperty("selectBrandName");
		int cnt = 0;
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, brandName);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				cnt++;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		return cnt;
	} //end method

} //end class
