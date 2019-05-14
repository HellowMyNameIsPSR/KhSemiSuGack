package com.kh.semi.admin.controller;

import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.util.Properties;

import com.kh.semi.admin.controller.QueryMake;
import com.kh.semi.admin.model.vo.SearchMember;

public class QueryMake {
	private Properties prop = new Properties();

	public QueryMake() {
		
		String fileName =  QueryMake.class
				.getResource("/sql/admin/admin-query.properties")
				.getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}


	public QueryMake(SearchMember m) {
		
		System.out.println(m);
		
		
		String query = "SELECT * FROM MEMBER";
	
		if(m.getSearchType().equals("email")) {
			query += " WHERE EMAIL LIKE ?";
		}else {
			query += " WHERE MEMBER_NAME LIKE ?";
		}
		
		if(m.getMemberType() != null) {
			query += " AND MEMBER_TYPE = ?";
		}
		if(m.getJoinStart() != null) {
			query += " AND ENROLL_DATE >= TO_DATE(?) AND ENROLL_DATE < TO_DATE(?)";
		}
		if(m.getBirthDateStart() != null) {
			query += " AND BIRTH_DATE >= TO_DATE(?) AND BIRTH_DATE < TO_DATE(?)";
		}
		if(m.getGender() != null) {
			query += " AND GENDER = ?";
		}
		
		query += " AND STATUS ='Y'";
		
		prop.put("searchMember=", query);
		
		System.out.println(query);
		
	}

	
	
}
