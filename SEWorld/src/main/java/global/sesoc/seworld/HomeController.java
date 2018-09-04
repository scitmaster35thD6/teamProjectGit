package global.sesoc.seworld;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	/**
	 * SE World Home Controller
	 * 
	 * @author youngbinkim
	 * @version 0.1
	 */
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	// 메인 페이지로 이동
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		logger.info("[/]");
		return "main";
	}
	/*예전 메인*/
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String newMainPage() {
		logger.info("[/]");
		return "index";
	}

	@RequestMapping(value = "/readArticle3", method = RequestMethod.GET)
	public String articlereading() {
		return "board/readArticle3";
	}
	
	/**
	 * 
	 * 테스트용
	 * 
	 * **/
	@RequestMapping(value = "/boardList", method = RequestMethod.GET)
	public String bList() {

		return "boardList";
	}
	
	
	
	@RequestMapping(value = "/boardWrite", method = RequestMethod.GET)
	public String write() {

		return "boardWrite";
	}
	
	@RequestMapping(value = "/reviewBoard", method = RequestMethod.GET)
	public String review() {

		return "reviewBoard";
	}
	
	
}
