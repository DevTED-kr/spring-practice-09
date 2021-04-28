package com.nouvolution.testBoardService;

import java.util.List;

import org.springframework.stereotype.Service;

import com.nouvolution.testBoardDao.ArticleDAO;
import com.nouvolution.testBoardDto.ArticleVO;

@Service
public class ArticleServiceImpl implements ArticleService {

	private final ArticleDAO articleDAO;
	
	public ArticleServiceImpl(ArticleDAO articleDAO) {
		// TODO Auto-generated constructor stub
		this.articleDAO = articleDAO;
	}
	
	@Override
	public void create(ArticleVO articleVO) throws Exception {
		// TODO Auto-generated method stub
		articleDAO.create(articleVO);
	}

	@Override
	public ArticleVO read(Integer articleNO) throws Exception {
		// TODO Auto-generated method stub
		return articleDAO.read(articleNO);
	}

	@Override
	public void update(ArticleVO articleVO) throws Exception {
		// TODO Auto-generated method stub
		articleDAO.update(articleVO);
	}

	@Override
	public void delete(Integer articleNO) throws Exception {
		// TODO Auto-generated method stub
		articleDAO.delete(articleNO);
	}

	@Override
	public List<ArticleVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return articleDAO.listAll();
	}

}
