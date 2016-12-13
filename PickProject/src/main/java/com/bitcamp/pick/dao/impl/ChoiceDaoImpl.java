package com.bitcamp.pick.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.bitcamp.pick.dao.ChoiceDao;
import com.bitcamp.pick.domain.Choice;



@Repository("choiceDaoImpl")
public class ChoiceDaoImpl implements ChoiceDao{
	
	///Field
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	///Constructor
	public ChoiceDaoImpl() {
		System.out.println(this.getClass());
	}

//	///Method
	public void addChoice(Choice choice) throws Exception {
		sqlSession.insert("ChoiceMapper.addChoice", choice);
	}	

	public List<Choice> getChoice(int voteNo)throws Exception {
		return sqlSession.selectList("ChoiceMapper.getChoice", voteNo);
	}
	
	public Choice getChoiceByChoiceNo(int choiceNo)throws Exception {
        return sqlSession.selectOne("ChoiceMapper.getChoiceByChoiceNo", choiceNo);
	}
	
	public void updateChoiceCount(Choice choice)throws Exception {
		sqlSession.update("ChoiceMapper.updateChoiceCount", choice);
	}
	
}