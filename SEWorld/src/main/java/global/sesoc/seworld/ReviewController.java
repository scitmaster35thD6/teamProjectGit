package global.sesoc.seworld;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import global.sesoc.seworld.dao.BoardFileRepository;
import global.sesoc.seworld.dao.BoardRepository;
import global.sesoc.seworld.dto.Board;
import global.sesoc.seworld.dto.BoardFile;
import global.sesoc.seworld.util.PageNavigator;
import global.sesoc.seworld.util.FileService;

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
	BoardRepository boardRepository;
	BoardFileRepository boardFileRepository;

	final String uploadPath = "/boardfile/reviews";

	@RequestMapping(value = "/reviews", method = RequestMethod.GET)
	public String reviews() {
		return "review/reviewBoard";
	}

	@ResponseBody
	@RequestMapping(value = "/reviewListShow", method = RequestMethod.POST, produces = "application/json; charset=utf8")
	public Map<String, Object> reviewListShow(@RequestParam(value = "currentPage", defaultValue = "1") int currentPage,
			@RequestParam(value = "searchCategory", defaultValue = "memberId") String searchCategory,
			@RequestParam(value = "searchKeyword", defaultValue = "") String searchKeyword) {
		int totalRecordCount = boardRepository.getTotalList();
		PageNavigator navi = new PageNavigator(currentPage, totalRecordCount);
		List<Board> boardList = boardRepository.viewAllBoards(searchCategory, searchKeyword, navi.getStartRecord(),
				navi.getCountPerPage());

		Map<String, Object> responseData = new HashMap<String, Object>();
		String list = "";

		for (int i = 0; i < boardList.size(); i++) {
			list += "<tr onclick=\"location.href='readReview?boardId=" + boardList.get(i).getBoardId() + "'\"><td>"
					+ Integer.toString(navi.getTotalPageCount() - (i + navi.getStartRecord()) + 1) + "</td>";
			list += "<td>" + boardList.get(i).getMemberId() + "</td>";
			list += "<td>" + boardList.get(i).getTitle() + "</td>";
			list += "<td>" + boardList.get(i).getCreatedDate() + "</td></tr>";
		}

		responseData.put("totalRecordCount", totalRecordCount);
		responseData.put("list", list);
		responseData.put("navi", navi);

		return responseData;
	}

	@RequestMapping(value = "/readReview", method = RequestMethod.GET)
	public String readReview(String boardId, Model model) {
		Board detail = boardRepository.viewBoardDetail(boardId);
		model.addAttribute("detail", detail);
		return "review/reviewDetail";
	}

	@RequestMapping(value = "/writeReview", method = RequestMethod.GET)
	public String writeReview() {
		return "review/reviewWrite";
	}

	@RequestMapping(value = "/writeReview", method = RequestMethod.POST)
	public String writeReview(Board board, MultipartFile uploadedFile, HttpSession session) {
		String userid = (String) session.getAttribute("loginId");
		board.setMemberId(userid);
		boardRepository.insertBoard(board);

		String originalfile = uploadedFile.getOriginalFilename();
		String savedfile = FileService.saveFile(uploadedFile, uploadPath);
		BoardFile boardFile = new BoardFile();
		boardFile.setBoardId(boardRepository.getBoardId(userid));
		boardFile.setOgFilename(originalfile);
		boardFile.setSvFilename(savedfile);
		boardFile.setFileSize(uploadedFile.getSize());
		boardFileRepository.insertOneBoardFile(boardFile);

		return "redirect:/reviews";
	}

	@RequestMapping(value = "/updateReview", method = RequestMethod.GET)
	public String updateReview(Model model) {
		return "review/reviewWrite";
	}

	@RequestMapping(value = "/updateReview", method = RequestMethod.POST)
	public String updateReview(Board board) {
		boardRepository.updateBoard(board);
		return "redirect:/review";
	}

	@RequestMapping(value = "/deleteReview", method = RequestMethod.POST)
	public String deleteReview(Board board) {
		boardRepository.deleteBoard(board);
		return "redirect:/review";
	}
}
