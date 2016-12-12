package com.bitcamp.pick.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.bitcamp.pick.dao.ChoiceDao;
import com.bitcamp.pick.domain.Choice;
import com.bitcamp.pick.service.ChoiceService;



@Service("choiceServiceImpl")
public class ChoiceServiceImpl implements ChoiceService{
	
	///Field
	@Autowired
	@Qualifier("choiceDaoImpl")
	private ChoiceDao choiceDao;
	
	public void setChoiceDao(ChoiceDao choiceDao) { 
		this.choiceDao = choiceDao;
	}
	
	///Constructor
	public ChoiceServiceImpl() {
		System.out.println(this.getClass());
	}

	///Method
	
	public void addChoice(Choice choice) throws Exception {
	      choiceDao.addChoice(choice);
	}
	
	public List<Choice> getChoiceList(int voteNo) throws Exception {
		 return choiceDao.getChoice(voteNo);
	}
	
	public Choice getChoiceByChoiceNo(int choiceNo)throws Exception {
		return choiceDao.getChoiceByChoiceNo(choiceNo);
	}
	
	public void updateChoiceCount(Choice choice)throws Exception {
		
		choiceDao.updateChoiceCount(choice);
	}



}