package com.bitcamp.pick.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.bitcamp.pick.dao.ChoiceDao;
import com.bitcamp.pick.dao.VoteAuthorityDao;
import com.bitcamp.pick.dao.VoteDao;
import com.bitcamp.pick.domain.Choice;
import com.bitcamp.pick.domain.Vote;
import com.bitcamp.pick.domain.VoteAuthority;
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
	
	
	
	@Autowired
	@Qualifier("choiceDaoImpl")
	private ChoiceDao choiceDao;
	
	
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
	     
	      VoteAuthority voteA​uthority = vote.getVoteAuthority();
	      voteA​uthority.setVoteNo(vote.getVoteNo());
	      voteAuthorityDao.addVoteAuthority(voteA​uthority);
	}
	
	public Vote getVote(int voteNo) throws Exception {
		
		Vote vote = voteDao.getVote(voteNo);
		List<Choice> choiceList = choiceDao.getChoiceListByVoteNo(voteNo);
		vote.setChoiceList(choiceList);
		
		
		return vote;
	}

	@Override
	public List<Vote> getVoteList() throws Exception {
		
		return voteDao.getVoteList();
	}
	




	


}