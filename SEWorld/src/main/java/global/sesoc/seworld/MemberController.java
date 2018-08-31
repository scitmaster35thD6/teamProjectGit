package global.sesoc.seworld;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import global.sesoc.seworld.dao.MemberRepository;
import global.sesoc.seworld.dto.Member;

@Controller
public class MemberController {

	/**
	 * SE World Board Controller
	 * 
	 * @author youngbinkim
	 * @version 0.1
	 */

	@Autowired
	MemberRepository memberRepository;

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "member/login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(Member searchMember, boolean saveid, HttpServletResponse response, HttpSession session,
			Model model) {
		logger.info("[/login]");
		// logger.info(searchMember.toString());
		Member loginMember = memberRepository.selectOneMember(searchMember);
		if (loginMember != null) {
			session.setAttribute("loginId", loginMember.getMemberId());
			session.setAttribute("loginName", loginMember.getMemberName());
			// 쿠키 처리
			if (saveid) {
				Cookie idCookie = new Cookie("saveid", searchMember.getMemberId());
				Cookie pwCookie = new Cookie("savepw", searchMember.getMemberPwd());
				idCookie.setMaxAge(60 * 60 * 24);
				pwCookie.setMaxAge(60 * 60 * 24);
				response.addCookie(idCookie);
				response.addCookie(pwCookie);
			} else {
				Cookie idCookie = new Cookie("saveid", null);
				Cookie pwCookie = new Cookie("savepw", null);
				idCookie.setMaxAge(0);
				pwCookie.setMaxAge(0);
				response.addCookie(idCookie);
				response.addCookie(pwCookie);
			}
			return "redirect:/";
		} else {
			model.addAttribute("message", "*ID/PW 오류");
			return "member/login";
		}
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		logger.info("[/logout]");
		session.invalidate();
		return "redirect:/";
	}

	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String signUp() {
		return "member/signup";
	}

	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public @ResponseBody Integer signUp(@RequestBody Member insertMember) {
		logger.info("[/signup]");
		logger.info(insertMember.toString());
		return memberRepository.insertOneMember(insertMember);
	}
}
