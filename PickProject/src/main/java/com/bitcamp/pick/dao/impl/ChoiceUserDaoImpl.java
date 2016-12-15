package com.bitcamp.pick.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.bitcamp.pick.dao.ChoiceUserDao;
import com.bitcamp.pick.domain.ChoiceUser;


@Repository("choiceUserDaoImpl")
public class ChoiceUserDaoImpl implements ChoiceUserDao {

	
	@Autowired
	@Qualifier("sqlSessionTemplate")
	public SqlSession sqlSession;
	
	
	@Override
	public int addChoiceUser(ChoiceUser choiceUser) throws Exception {
		return sqlSession.insert("ChoiceUserMapper.addChoiceUser",choiceUser);
	}

}
