package com.bitcamp.pick.dao;

import java.util.List;

import com.bitcamp.pick.domain.Vote;

public interface VoteDao {
	

	public void addVote(Vote vote)throws Exception ;
	public Vote getVote(int voteNo)throws Exception ; 
    public List<Vote> getVoteList() throws Exception;
	
}