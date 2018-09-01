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
		return "index";
	}
	/*새로운 메인 페이지.. 아직 만드는 중*/
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String newMainPage() {
		logger.info("[/]");
		return "main";
	}
	
	@RequestMapping(value = "/calendar", method = RequestMethod.GET)
	public String calendar() {
		logger.info("[/]");
		return "member/calendar";
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
