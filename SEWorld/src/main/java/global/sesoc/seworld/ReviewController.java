package global.sesoc.seworld;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import global.sesoc.seworld.dao.BoardRepository;
import global.sesoc.seworld.dto.Board;
import global.sesoc.seworld.util.PageNavigator;

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
	
	@Autowired
	BoardRepository repository;

	@RequestMapping(value = "/reviews", method = RequestMethod.GET)
	public String reviews() {
		return "review/reviewBoard";
	}
	
	@ResponseBody
	@RequestMapping(value="/reviewListShow", method=RequestMethod.POST, produces = "application/json; charset=utf8")
	public Map<String, Object> reviewListShow(	@RequestParam(value = "currentPage", defaultValue = "1") int currentPage) {
		int totalRecordCount = repository.getTotalList();
		PageNavigator navi = new PageNavigator(currentPage, totalRecordCount);
		List<Board> boardList = repository.viewAllBoards(navi.getStartRecord(),
				navi.getCountPerPage());

		Map<String, Object> responseData = new HashMap<String, Object>();
		String list = "";

		for (int i = 0; i < boardList.size(); i++) {
			list += "<tr><td>" + boardList.get(i).getBoardId() + "</td>";
			list += "<td>" + boardList.get(i).getMemberId() + "</td>";
			list += "<td>" + boardList.get(i).getTitle() + "</td>";
			list += "<td>" + boardList.get(i).getCreatedDate() + "</td></tr>";
		}

		responseData.put("totalRecordCount", totalRecordCount);
		responseData.put("list", list);
		responseData.put("navi", navi);
		
		return responseData;
	}

	@RequestMapping(value = "/writeReview", method = RequestMethod.GET)
	public String writeReview() {
		return "review/reviewWrite";
	}

	@RequestMapping(value = "/writeReview", method = RequestMethod.POST)
	public String writeReview(Board board) {
		return "redirect:/reviews";
	}
	
	@RequestMapping(value = "/updateReview", method = RequestMethod.GET)
	public String updateReview(Model model) {
		return "review/reviewWrite";
	}

	@RequestMapping(value = "/updateReview", method = RequestMethod.POST)
	public String updateReview(Board board) {
		repository.updateBoard(board);
		return "redirect:/review";
	}

	@RequestMapping(value = "/deleteReview", method = RequestMethod.POST)
	public String deleteReview(Board board) {
		repository.deleteBoard(board);
		return "redirect:/review";
	}
}
