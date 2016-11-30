package com.bitcamp.pick.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bitcamp.pick.domain.User;
import com.bitcamp.pick.service.UserService;

@Controller
@RequestMapping("/user/*")
public class UserController {
	
	@Autowired
	@Qualifier("userServiceImpl")
	private UserService userService;
	
	public UserController(){
		System.out.println("UserController Default Constructor");
	}
	
	@RequestMapping(value="login",method=RequestMethod.GET)
	public String login(){
		System.out.println("login - GET");
		return "redirect:/loginAndSignUp/loginAndSignUpView.jsp";
	}

	@RequestMapping(value="login", method=RequestMethod.POST)
	public String login(@ModelAttribute User user,HttpSession session) throws Exception{
		
		System.out.println("login - POST");
		User dbUser= userService.loginUser(user);
		System.out.println(dbUser);
		session.setAttribute("user", dbUser);
		return "redirect:/main/main.jsp";
	}
	

	@RequestMapping(value="logout", method=RequestMethod.GET)
	public String login(HttpSession session) throws Exception{
		System.out.println("logout - GET");
		session.invalidate();
		return "redirect:/user/login";
	}
	
	

	

	
	
	
}
