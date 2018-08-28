package global.sesoc.seworld;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ReviewController {

	/*
	 * SE World Review Controller
	 * 
	 * 유저 리뷰 관련 컨트롤러
	 *
	 * @author youngbinkim
	 * 
	 * @version 0.1
	 */

	@RequestMapping(value = "/reviews", method = RequestMethod.GET)
	public String reviews() {
		return "review/reviewBoard";
	}

	@RequestMapping(value = "/writeReview", method = RequestMethod.GET)
	public String writeReview() {
		return "review/reviewWrite";
	}
}
