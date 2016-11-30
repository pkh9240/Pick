package com.bitcamp.pick.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.bitcamp.pick.dao.UserDao;
import com.bitcamp.pick.domain.User;
import com.bitcamp.pick.service.UserService;


@Service("userServiceImpl")
public class UserServiceImpl implements UserService {
	
	@Autowired
	@Qualifier("userDaoImpl")
	private UserDao userDao;
	
	
	
	public UserServiceImpl(){
		System.out.println(" UserServiceImpl Constructor");
	}
	@Override
	public User loginUser(User user) throws Exception {
		System.out.println(" UserServiceImpl-loginUser");
		
		User dbUser=userDao.getUser(user.getUserEmail());

		if(dbUser==null){
			System.out.println("해당하는 정보 없음 ");
			throw new Exception("로그인에 실패했습니다.");
		}
		else{
		if(! dbUser.getUserPassword().equals(user.getUserPassword())){
			
			System.out.println("비밀번호 틀림 ");
			throw new Exception("로그인에 실패했습니다.");
			
		}
		}
		System.out.println("DataBase에서 가져온 User"+user);
		return dbUser;
	
	}
	@Override
	public int addUser(User user) throws Exception {
		return 0;
	}

	@Override
	public User getUser(String userEmail) throws Exception {
		return null;
	}

	

}
