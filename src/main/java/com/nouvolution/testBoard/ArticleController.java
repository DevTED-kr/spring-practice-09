package com.nouvolution.testBoard;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.nouvolution.testBoardDto.ArticleVO;
import com.nouvolution.testBoardService.ArticleService;

@Controller
@RequestMapping("/article")
public class ArticleController {
	private static final Logger logger = LoggerFactory.getLogger(ArticleController.class);
	
	private final ArticleService articleService;
	
	@Inject
	public ArticleController(ArticleService articleService) {
		// TODO Auto-generated constructor stub
		this.articleService = articleService;
	}
	
	@RequestMapping(value="/write" , method = RequestMethod.GET)
	public String writeGET() {
		logger.info("write GET...");
		
		return "/article/write";
	}
	
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String writePOST(ArticleVO articleVO,
							RedirectAttributes redirectAttributes) throws Exception{
		logger.info("write POST...");
		logger.info(articleVO.toString());
		articleService.create(articleVO);
		redirectAttributes.addFlashAttribute("msg", "regSuccess");
		
		return "redirect:/article/list";
	}
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model) throws Exception{
		logger.info("list ... ");
		model.addAttribute("articles", articleService.listAll());
		logger.info("TEST zzz");
		return "/article/list";
	}
	
		
	@RequestMapping(value = "/listd")
	public List<ArticleVO> listAjax(@RequestBody ArticleVO vo) throws Exception{
			logger.info("listAjax ... ");
//			model.addAttribute("articles", articleService.listAll());
			logger.info("TEST vvvv");
			return articleService.listAll();
	}
	
	@RequestMapping(value = "/read", method = RequestMethod.GET)
	public String read(@RequestParam("articleNO") int articleNO, Model model) throws Exception{
		
		logger.info("read...");
		model.addAttribute("article", articleService.read(articleNO));
		
		return "/article/read";
	}
	
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public String ModifyGET(@RequestParam("articleNO") int articleNO, Model model) throws Exception{
		logger.info("modify GET ...");
		model.addAttribute("article", articleService.read(articleNO));
		
		return "/article/modify";
	}
	
	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String modifyPOST(ArticleVO articleVO,
							RedirectAttributes redirectAttributes) throws Exception{
		logger.info("modify POST ...");
		articleService.update(articleVO);
		redirectAttributes.addFlashAttribute("msg", "modSuccess");
				
		return "redirect:/article/list";	
	}
	
	@RequestMapping(value = "/remove", method = RequestMethod.POST)
	public String remove(@RequestParam("articleNO") int articleNO,
						RedirectAttributes redirectAttributes) throws Exception{
		
		logger.info("remove...");
		articleService.delete(articleNO);
		redirectAttributes.addAttribute("msg", "delSuccess");
		
		return "redirect:/article/list";
		
	}
	
}
