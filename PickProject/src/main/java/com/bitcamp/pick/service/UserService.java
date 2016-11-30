package com.bitcamp.pick.service;

import com.bitcamp.pick.domain.User;

public interface UserService {
	public int addUser(User user) throws Exception;
	public User getUser(String userEmail) throws Exception;
	public User loginUser(User user) throws Exception;
	
}
