package com.bitcamp.pick.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bitcamp.pick.domain.Interest;
import com.bitcamp.pick.domain.User;
import com.bitcamp.pick.service.InterestService;
import com.bitcamp.pick.service.UserService;

@Controller
@RequestMapping("/user/*")
public class UserController {
	
	@Autowired
	@Qualifier("userServiceImpl")
	private UserService userService;
	
	
	@Autowired
	@Qualifier("interestServiceImpl")
	private InterestService interestService;
	
	public UserController(){
		System.out.println("UserController Default Constructor");
	}
	
	
	/*단순 Login View 로 이동 */
	@RequestMapping(value="login",method=RequestMethod.GET)
	public String login(){
		
		System.out.println("login - GET");
		return "redirect:/loginAndSignUp/loginAndSignUpView.jsp";
	}
	
	
	/* ID ,Password 체크후 결과 리턴, 세션 저장 */
	@RequestMapping(value="login", method=RequestMethod.POST)
	public @ResponseBody Map<String,Object> login(@RequestBody User user,HttpSession session) throws Exception{
		
		System.out.println("login - POST");
		
		Map<String,Object> loginCheckMap = userService.loginUser(user);
		String loginCheck = (String)loginCheckMap.get("loginCheck");
		
		/*로그인 성공시 Session에 User 정보 Add*/
		if(loginCheck.equals("success")){  
			session.setAttribute("user",loginCheckMap.get("user"));
		}
		
		return loginCheckMap;
		
	}
	
	/* 로그인 성공 후 Main View 로 이동 */
	@RequestMapping(value="loginSuccess", method=RequestMethod.GET)
	public String loginSuccess() throws Exception{
		System.out.println("loginSuccess - GET");
		return "redirect:/main/main.jsp";
	}
	
	/* 로그아웃  */
	@RequestMapping(value="logout", method=RequestMethod.GET)
	public String logout(HttpSession session) throws Exception{
		System.out.println("logout - GET");
		session.invalidate();
		return "redirect:/user/login";
	}
	
	/*Email 중복 체크 */
	
	@RequestMapping(value="checkDuplication", method=RequestMethod.POST)
	public  @ResponseBody Map<String,Object> checkDuplication(@RequestBody User user,HttpSession session) throws Exception{
		
		System.out.println("checkDuplication - POST");
		
		
		User dbUser = userService.getUserByUserEmail(user.getUserEmail());
		Map<String,Object> result = new HashMap<String,Object>();
		
		if(dbUser!=null){
			result.put("isDuplicated", true);
		}else{
			//중복이 아닐경우 session에  id,password 정보 저장 
			System.out.println("세션에 저장");
			session.setAttribute("user", user);
			result.put("isDuplicated", false);
		}
		return result;
	}
	
	
	/*상세정보 선택 뷰 리턴 */
	@RequestMapping(value="getDetailInfomationSelectView", method=RequestMethod.GET)
	public String getDetailInfomationSelectView(Model model) throws Exception{
		System.out.println("getDetailInfomationSelectView - GET");
		
		
		List<Interest> interestList = interestService.getInterestList();
		
		model.addAttribute("interestList", interestList);
		
		return "forward:/interest/interestView.jsp";
	}
	
	
	/* 회궝 등록*/
	@RequestMapping(value="addUser", method=RequestMethod.POST)
	public String addUser(@RequestParam("interestList") List<Integer> interestList,
						@RequestParam("userAge") String userAge,
						@RequestParam("userGender") String userGender,HttpSession session) throws Exception{
		System.out.println("addUser - POST");
		
		
		User user = (User)session.getAttribute("user");
		user.setUserAge(userAge);
		user.setUserGender(userGender);
		
		List<Interest> userInterestList = new ArrayList<Interest>();

		for(int interestNo : interestList){
			userInterestList.add(new Interest(interestNo));
		}
		user.setInterestList(userInterestList);
		
		userService.addUser(user);
	
		return "forward:/main/main.jsp";
	}
	
	
	/* 회원 정보 보기 */
	@RequestMapping(value="getAccount",method=RequestMethod.GET)
	public String getAccount(HttpSession session,Model model) throws Exception {
		System.out.println("getAccount- GET");
		
		User user = userService.getUserByUserNo(((User)session.getAttribute("user")).getUserNo());
		
		
	
		List<Interest> interestList = interestService.getInterestList();
		
		
		model.addAttribute("user", user);
		model.addAttribute("interestList", interestList);
		
		return "forward:../account/accountView.jsp";
		
	}
	
	
	
	
	

	

	
	
	
}
