package com.kh.semi.member.model.service;

import com.kh.semi.member.model.dao.MemberDao;
import com.kh.semi.member.model.vo.Member;
import static com.kh.semi.common.JDBCTemplate.*;

import java.sql.Connection;

public class MemberService {

	public int insertMember(Member m) {
		Connection con = getConnection();
		
		int result = new MemberDao().insertMember(con, m);
		
		if(result > 0) {
			commit(con);
		}else {
			rollback(con);
		}
		close(con);
		
		return result;
	}

	public Member loginMember(String email, String password) {
		Connection con = getConnection();
		
		Member loginUser = new MemberDao().loginMember(con, email, password);
		
		close(con);
		
		return loginUser;
	}

	public Member updateMember(Member m) {
		Connection con = getConnection();
		Member loginUser = null;
		
		int result = new MemberDao().updateMember(con, m);
		
		if(result > 0) {
			commit(con);
			loginUser = new MemberDao().loginMember(con, m.getEmail(), m.getPassword());
		}else {
			rollback(con);
		}
		close(con);
		
		return loginUser;
	}

	public int idCheck(String email) {
		Connection con = getConnection();
		
		int result = new MemberDao().idCheck(con, email);
		
		close(con);
		
		return result;
	}

}






























