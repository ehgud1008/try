package main.src.java.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDaoImpl implements MemberDao{
	
	//private String namespace = "main.src.resources.mapper.MemberMapper";
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public boolean login(String id, String pw) {
		HashMap<String, Object> param = new HashMap<String, Object>(); 
		try {
			param.put("id", id);
			param.put("pw", pw);
			int row = sqlSession.selectOne("member.login", param);
			if(row == 1) return true;
			else return false;
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
}
