package com.bitcamp.pick.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.bitcamp.pick.dao.InterestDao;
import com.bitcamp.pick.dao.UserInterestDao;
import com.bitcamp.pick.domain.Interest;
import com.bitcamp.pick.service.InterestService;


@Service("interestServiceImpl")
public class InterestServiceImpl implements InterestService{

	@Autowired
	@Qualifier("interestDaoImpl")
	public InterestDao interestDao;
	
 
	
	public InterestServiceImpl() {
		System.out.println(" InterestServiceImpl Default Constructor");
	}
	@Override
	public int addInterest(Interest interest) throws Exception {
		return interestDao.addInterest(interest);
	}
	@Override
	public Interest getInterestByContent(String content) throws Exception {
		return interestDao.getInterestByContent(content);
	}
	@Override
	public Interest getInterestByInterestNo(int interestNo) throws Exception {
		return interestDao.getInterestByInterestNo(interestNo);
	}
	@Override
	public List<Interest> getInterestList() throws Exception {
		return interestDao.getInterestList();
	}
	
	

}
