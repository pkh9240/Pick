package com.bitcamp.pick.service.impl;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.bitcamp.pick.dao.CommentDao;

import com.bitcamp.pick.domain.Comment;
import com.bitcamp.pick.service.CommentService;



@Service("commentServiceImpl")
public class CommentServiceImpl implements CommentService{

	@Autowired
	@Qualifier("commentDaoImpl")
	public CommentDao commentDao;
	
	
	
	public CommentServiceImpl() {
		System.out.println(" CommentServiceImpl Default Constructor");
	}
	
	@Override
	public int addComment(Comment comment) throws Exception{
		// TODO Auto-generated method stub
		return commentDao.addComment(comment);
	}

	@Override
	public Comment getComment(int commentNo) throws Exception {
		// TODO Auto-generated method stub
		return commentDao.getComment(commentNo);
	}

	@Override
	public List<Comment> getCommentListByVoteNo(int voteNo) throws Exception {
		return commentDao.getCommentListByVoteNo(voteNo);
	}

	@Override
	public int deleteCommnet(int commentNo) throws Exception {
		return commentDao.deleteCommnet(commentNo);
	}


	
}
