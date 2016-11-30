package com.bitcamp.pick.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.bitcamp.pick.dao.UserDao;
import com.bitcamp.pick.domain.User;

@Repository("userDaoImpl")
public class UserDaoImpl implements UserDao {

	@Autowired
	@Qualifier("sqlSessionTemplate")
	private  SqlSession sqlSession;
	
	public UserDaoImpl(){
		System.out.println(" UserDaoImpl Constructor");
	}
	public void setSqlSession(SqlSession sqlSession){
		this.sqlSession = sqlSession;
	}
	
	@Override
	public int addUser(User user) throws Exception {
		return 0;
	}

	@Override
	public User getUser(String userEmail) throws Exception {
		System.out.println(" UserDaoImpl-getUser");
		return sqlSession.selectOne("UserMapper.getUser",userEmail);
	}

}
