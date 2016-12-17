package com.bitcamp.pick.dao;

import java.util.List;

import com.bitcamp.pick.domain.Comment;

public interface CommentDao {
	//insert
	public int addComment(Comment comment) throws Exception;
	public Comment getComment(int commentNo) throws Exception;
	public List<Comment> getCommentListByVoteNo(int voteNo) throws Exception;
	
	
}
