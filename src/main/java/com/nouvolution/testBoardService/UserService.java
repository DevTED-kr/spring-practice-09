package com.nouvolution.testBoardService;

import com.nouvolution.testBoardDto.LoginDTO;
import com.nouvolution.testBoardDto.UserVO;

public interface UserService {
	void register(UserVO userVO) throws Exception;
	
	UserVO login(LoginDTO loginDTO) throws Exception;
}
