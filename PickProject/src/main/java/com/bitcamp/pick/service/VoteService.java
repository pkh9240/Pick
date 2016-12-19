package com.bitcamp.pick.service;

import java.util.List;

import com.bitcamp.pick.domain.Vote;

public interface VoteService {
	


	public void addVote(Vote vote)throws Exception;
	
	public Vote getVote(int voteNo)throws Exception;
	public List<Vote> getVoteList() throws Exception;
	public List<Vote> getVoteListByUserNo(int userNo) throws Exception;
	public List<Vote> search(String word) throws Exception;

	

	

	
}