package com.bitcamp.pick.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;
import org.springframework.util.SystemPropertyUtils;

import com.bitcamp.pick.domain.Comment;
import com.bitcamp.pick.dao.CommentDao;


@Repository("commentDaoImpl")
public class CommentDaoImpl implements CommentDao {
	
	@Autowired
	@Qualifier("sqlSessionTemplate")
	public SqlSession sqlSession;
	
	public CommentDaoImpl() {
		System.out.println("CommentDaoImpl Default Constructor");
	}
	@Override
	public int addComment(Comment comment) throws Exception{
	
		System.out.println("Approch addComment DAO , parameter Check.. : " + comment);
		return sqlSession.insert("CommentMapper.addComment",comment);
		
	}
	@Override
	public Comment getComment(int commentNo) throws Exception{
		return sqlSession.selectOne("CommentMapper.getComment",commentNo);
	}
	public List<Comment> getCommentListByVoteNo(int voteNo) throws Exception{
		return sqlSession.selectList("CommentMapper.getCommentListByVoteNo",voteNo);
	}
	
	
}
