package com.nouvolution.testBoard;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nouvolution.testBoardDto.LoginDTO;
import com.nouvolution.testBoardDto.UserVO;
import com.nouvolution.testBoardService.UserService;

@Controller
@RequestMapping("/user")
public class UserLoginController {
	private final UserService userService;
	
	@Inject
	public UserLoginController(UserService userService) {
		// TODO Auto-generated constructor stub
		this.userService = userService;
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginGET(@ModelAttribute("loginDTO") LoginDTO loginDTO) throws Exception{
		return "/user/login";
	}
	
	@RequestMapping(value = "/loginPost", method = RequestMethod.POST)
	public void loginPost(LoginDTO loginDTO, HttpSession httpSession, Model model) throws  Exception{
		UserVO userVO = userService.login(loginDTO);
		
		if(userVO == null || !BCrypt.checkpw(loginDTO.getUserPw(), userVO.getUserPw())) {
			return;
		}
		
		model.addAttribute("user", userVO);
	}
}
