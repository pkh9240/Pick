package com.bitcamp.pick.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.bitcamp.pick.dao.VoteDao;
import com.bitcamp.pick.domain.Vote;




@Repository("voteDaoImpl")
public class VoteDaoImpl implements VoteDao{
	
	///Field
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	///Constructor
	public VoteDaoImpl() {
		System.out.println(this.getClass());
	}

//	///Method
	public void addVote(Vote vote) throws Exception {
		System.out.println("여기는 VoteDaoImple의 addVote, 도메인객체값 확인 :"+vote);
		sqlSession.insert("VoteMapper.addVote", vote);
	}

    public Vote getVote(int voteNo)throws Exception {
    	
    	System.out.println("여기는 VoteDaoImpl의 getVote, 메소드 인자값 확인 :" + voteNo);
    	return sqlSession.selectOne("VoteMapper.getVote", voteNo);
    }

	@Override
	public List<Vote> getVoteList() throws Exception {
	
		return sqlSession.selectList("VoteMapper.getVoteList");
	}
	
	
}