package com.nouvolution.testBoardDao;

import com.nouvolution.testBoardDto.LoginDTO;
import com.nouvolution.testBoardDto.UserVO;

public interface UserDAO {
	
	void register(UserVO userVO) throws Exception;
	
	UserVO login(LoginDTO loginDTO) throws Exception;
}
