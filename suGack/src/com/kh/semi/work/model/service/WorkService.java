package com.kh.semi.work.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.semi.work.model.dao.WorkDao;
import com.kh.semi.work.model.vo.PageInfo;
import com.kh.semi.work.model.vo.Work;
import static com.kh.semi.common.JDBCTemplate.*;

public class WorkService {
	
	//작품 판매 등록 메소드
	public int insertSale(Work work) {
		Connection con = getConnection();
		
		int result = new WorkDao().insertSale(con, work);
		
		System.out.println(result);
		
		if(result > 0) {
			commit(con);
		}else {
			rollback(con);
		}
		
		close(con);
		
		return result;
	}
	//판매작품관리 리스트 보기용 메소드
	public ArrayList<Work> selectSalesList(PageInfo pi) {
		Connection con = getConnection();
		
		ArrayList<Work> list = new WorkDao().selectSalesList(con, pi);
		
		close(con);
		
		return list;
	}
	//페이징 메소드
	public int getListCount() {
		Connection con = getConnection();
		
		int listCount = new WorkDao().getListCount(con);
		
		close(con);
		
		return listCount;
	}
	
}




















