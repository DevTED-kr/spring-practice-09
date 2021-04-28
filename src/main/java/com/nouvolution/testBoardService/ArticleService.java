package com.nouvolution.testBoardService;

import java.util.List;

import com.nouvolution.testBoardDto.ArticleVO;

public interface ArticleService {

	void create(ArticleVO articleVO) throws Exception;
	
	ArticleVO read(Integer articleNO) throws Exception;
	
	void update(ArticleVO articleVO) throws Exception;
	
	void delete(Integer articleNO) throws Exception;
	
	List<ArticleVO> listAll() throws Exception;
	
}
