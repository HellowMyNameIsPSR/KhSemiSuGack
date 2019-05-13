package com.kh.semi.board.model.service;

import static com.kh.semi.common.JDBCTemplate.close;
import static com.kh.semi.common.JDBCTemplate.getConnection;

import static com.kh.semi.common.JDBCTemplate.commit;

import static com.kh.semi.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;


import com.kh.semi.board.model.dao.ProQnaDao;

import com.kh.semi.board.model.vo.ProQna;
public class ProQnaService {

	//Q&A문의글 작성용 메소드
	public int insertProQna(ProQna qna) {
		Connection con = getConnection();
		int result = new ProQnaDao().insertProQna(con,qna);
		
		if(result>0) {
			/*int bno = new ProQnaDao().selectCurrval(con);
			
			for(int i=0; i<fileList.size(); i++) {
				fileList.get(i).setBno(bno);
			}*/
			commit(con);
			result = 1;
		}else {
			rollback(con);
			result = 0;
		}
		return result;
		
	}

	public ArrayList<ProQna> selectList() {
		Connection con = getConnection();
		ArrayList<ProQna> list =  new ProQnaDao().selectList(con);
		
		close(con);
		return list;
	}


	//게시물의 갯수 조회용 메소드
	public int getListCount() {
		Connection con = getConnection();
		int listCount = new ProQnaDao().getListCount(con);
		close(con);
		return listCount;
	}

}
