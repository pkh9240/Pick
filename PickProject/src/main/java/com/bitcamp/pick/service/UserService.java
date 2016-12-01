package com.bitcamp.pick.service;

import java.util.Map;

import com.bitcamp.pick.domain.User;

public interface UserService {
	public int addUser(User user) throws Exception;
	public User getUserByUserEmail(String userEmail) throws Exception;
	public User getUserByUserNo(int userNo) throws Exception;
	public Map<String,Object> loginUser(User user) throws Exception;
	
}
