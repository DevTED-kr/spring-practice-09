package com.nouvolution.testBoardService;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.nouvolution.testBoardDao.UserDAO;
import com.nouvolution.testBoardDto.LoginDTO;
import com.nouvolution.testBoardDto.UserVO;

@Service
public class UserServiceImpl implements UserService {

	private final UserDAO userDAO;
	
	@Inject
	public UserServiceImpl(UserDAO userDAO) {
		// TODO Auto-generated constructor stub
		this.userDAO = userDAO;
	}
	
	@Override
	public void register(UserVO userVO) throws Exception {
		// TODO Auto-generated method stub
		userDAO.register(userVO);
	}

	@Override
	public UserVO login(LoginDTO loginDTO) throws Exception {
		// TODO Auto-generated method stub
		return userDAO.login(loginDTO);
	}

}
