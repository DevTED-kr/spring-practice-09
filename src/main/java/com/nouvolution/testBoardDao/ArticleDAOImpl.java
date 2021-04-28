package com.nouvolution.testBoardDao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.nouvolution.testBoardDto.ArticleVO;

@Repository
public class ArticleDAOImpl implements ArticleDAO {

	private static final String NAMESPACE = "com.nouvolution.testBoard.mappers.article.ArticleMapper";
	
	private final SqlSession sqlSession;
	
	@Inject
	public ArticleDAOImpl(SqlSession sqlSession) {
		// TODO Auto-generated constructor stub
		this.sqlSession = sqlSession;
	}
	
	@Override
	public void create(ArticleVO articleVO) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.insert(NAMESPACE + ".create", articleVO);
		
	}

	@Override
	public ArticleVO read(Integer articleNO) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NAMESPACE + ".read", articleNO);
	}

	@Override
	public void update(ArticleVO articleVO) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.update(NAMESPACE + ".update", articleVO);
		
	}

	@Override
	public void delete(Integer articleNO) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.delete(NAMESPACE + ".delete", articleNO);
	}

	@Override
	public List<ArticleVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NAMESPACE + ".listAll");
	}

}
