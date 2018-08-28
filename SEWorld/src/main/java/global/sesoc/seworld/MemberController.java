package global.sesoc.seworld;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberController {
	
	/**
	 * SE World Board Controller
	 * 
	 * @author youngbinkim
	 * @version 0.1
	 */
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String home() {
		return "login";
	}
}
