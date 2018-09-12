package global.sesoc.seworld;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import global.sesoc.seworld.dao.MemberDetailRepository;
import global.sesoc.seworld.dao.MemberRepository;
import global.sesoc.seworld.dao.TimelineRepository;
import global.sesoc.seworld.dto.Member;
import global.sesoc.seworld.dto.MemberDetail;
import global.sesoc.seworld.dto.Timeline;
import global.sesoc.seworld.dto.Wishing;

@Controller
public class MemberDetailController {
	private static final Logger logger = LoggerFactory.getLogger(MemberDetailController.class);

	@Autowired
	MemberRepository memberRepository;

	@Autowired
	MemberDetailRepository memberDetailRepository;

	@Autowired
	TimelineRepository timelineRepository;

	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public String userprofile(HttpSession session, Model model) {
		logger.info("[/profile]");
		String memberId = (String) session.getAttribute("loginId");
		Member member = memberRepository.selectOneMember(memberId);
		MemberDetail memberDetail = memberDetailRepository.viewMemberDetail(memberId);
		List<Timeline> timelineList = timelineRepository.myTimeline(memberId);
		model.addAttribute("member", member);
		model.addAttribute("memberDetail", memberDetail);
		model.addAttribute("timelineList", timelineList);
		return "member/profile";
	}
}
