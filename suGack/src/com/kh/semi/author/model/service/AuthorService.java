package com.kh.semi.author.model.service;

import static com.kh.semi.common.JDBCTemplate.*;

import java.sql.Connection;

import com.kh.semi.author.model.dao.AuthorDao;

public class AuthorService {

	public int selectBrandName(String brandName) {
		Connection con = getConnection();
		int result = new AuthorDao().selectBrandName(con, brandName);
		close(con);
		return result;
	} //end method

} //end class
