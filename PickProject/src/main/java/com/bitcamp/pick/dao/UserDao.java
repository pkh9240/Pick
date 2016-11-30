package com.bitcamp.pick.dao;

import com.bitcamp.pick.domain.User;

public interface UserDao {
	public int addUser(User user) throws Exception;
	public User getUser(String userEmail) throws Exception;
}
