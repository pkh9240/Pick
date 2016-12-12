package com.bitcamp.pick.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.bitcamp.pick.dao.VoteAuthorityDao;
import com.bitcamp.pick.dao.VoteDao;
import com.bitcamp.pick.domain.Vote;
import com.bitcamp.pick.domain.VoteA​uthority;
import com.bitcamp.pick.service.VoteService;





@Service("voteServiceImpl")
public class VoteServiceImpl implements VoteService{
	
	///Field
	@Autowired
	@Qualifier("voteDaoImpl")
	private VoteDao voteDao;
	
	
	@Autowired
	@Qualifier("voteAuthorityDaoImpl")
	private VoteAuthorityDao voteAuthorityDao;
	
	public void setVoteDao(VoteDao voteDao) { 
		this.voteDao = voteDao;
	}
	
	///Constructor
	public VoteServiceImpl() {
		System.out.println(this.getClass());
	}

	///Method
	public void addVote(Vote vote) throws Exception {
			System.out.println("voteServiceImpl addVote");
		 
	      voteDao.addVote(vote);
	     
	      VoteA​uthority voteA​uthority = vote.getVoteA​uthority();
	      voteA​uthority.setVoteNo(vote.getVoteNo());
	      System.out.println("서비스단에서 :"+vote);
	      voteAuthorityDao.addVoteAuthority(voteA​uthority);
	}
	
	public Vote getVote(int voteNo) throws Exception {
		
		return voteDao.getVote(voteNo);
	}

	@Override
	public List<Vote> getVoteList() throws Exception {
		
		return voteDao.getVoteList();
	}
	




	


}