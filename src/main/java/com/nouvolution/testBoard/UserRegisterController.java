package com.nouvolution.testBoard;

import javax.inject.Inject;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.nouvolution.testBoardDto.UserVO;
import com.nouvolution.testBoardService.UserService;

@Controller
@RequestMapping("/user")
public class UserRegisterController {
	
	private final UserService userService;
	
	@Inject
	public UserRegisterController(UserService userService) {
		// TODO Auto-generated constructor stub
		this.userService = userService;
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String registerGET() throws Exception{
		return "/user/register";
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registerPOST(UserVO userVO, RedirectAttributes redirectAttributes) throws Exception{
		String hashedPw = BCrypt.hashpw(userVO.getUserPw(), BCrypt.gensalt());
		userVO.setUserPw(hashedPw);
		userService.register(userVO);
		redirectAttributes.addFlashAttribute("msg", "REGISTERED");
		
		return "redirect:/user/login";
	}
	
}
