package com.nouvolution.testBoard;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.nouvolution.testBoardDao.ArticleDAO;
import com.nouvolution.testBoardDto.ArticleVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/applicationContext.xml"})
public class ArticleDAOTest {

	private static final Logger logger = LoggerFactory.getLogger(ArticleDAOTest.class);
	
	@Inject
	private ArticleDAO articleDAO;

//    @Test
//    public void testCreate() throws Exception {
//        ArticleVO article = new ArticleVO();
//        article.setTitle("SET TITLE TEST");
//        article.setContent("SET CONTENT TEST");
//        article.setWriter("SET WRITER TEST");
//        articleDAO.create(article);
//    }

    @Test
    public void testRead() throws Exception {
        logger.info(articleDAO.read(12).toString());
    }

    @Test
    public void testUpdate() throws Exception {
        ArticleVO article = new ArticleVO();
        article.setArticleNO(12);
        article.setTitle("Modify title 12/24");
        article.setContent("Modify content 12/24");
        articleDAO.update(article);
    }

//    @Test
//    public void testDelete() throws Exception {
//        articleDAO.delete(1);
//    }
	
	@Test
	public void listAllTest() throws Exception{
		articleDAO.listAll();
	}
	
}
