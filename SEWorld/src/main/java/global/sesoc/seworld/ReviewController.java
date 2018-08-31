package global.sesoc.seworld;

import java.io.FileInputStream;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import global.sesoc.seworld.dao.BoardFileRepository;
import global.sesoc.seworld.dao.BoardReplyRepository;
import global.sesoc.seworld.dao.BoardRepository;
import global.sesoc.seworld.dao.ExhibitionRepository;
import global.sesoc.seworld.dto.Board;
import global.sesoc.seworld.dto.BoardFile;
import global.sesoc.seworld.dto.BoardReply;
import global.sesoc.seworld.dto.Exhibition;
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

	@Autowired
	BoardFileRepository boardFileRepository;

	@Autowired
	BoardReplyRepository boardReplyRepository;

	@Autowired
	ExhibitionRepository exhibitionRepository;

	final String uploadPath = "/boardfile/reviews";

	// 리뷰 게시판 페이지로 이동
	@RequestMapping(value = "/reviews", method = RequestMethod.GET)
	public String reviews() {
		return "board/reviewBoard";
	}

	// 질문 게시판 페이지로 이동
	@RequestMapping(value = "/questions", method = RequestMethod.GET)
	public String questions() {
		return "board/questionBoard";
	}

	// 리뷰 게시판 목록 띄우기(Ajax 처리)
	@ResponseBody
	@RequestMapping(value = "/reviewListShow", method = RequestMethod.POST, produces = "application/json; charset=utf8")
	public Map<String, Object> reviewListShow(@RequestParam(value = "currentPage", defaultValue = "1") int currentPage,
			@RequestParam(value = "searchCategory", defaultValue = "memberId") String searchCategory,
			@RequestParam(value = "searchKeyword", defaultValue = "") String searchKeyword) {
		int totalRecordCount = boardRepository.getTotalList();
		PageNavigator navi = new PageNavigator(currentPage, totalRecordCount);
		List<Board> boardList = boardRepository.viewAllReviews(searchCategory, searchKeyword, navi.getStartRecord(),
				navi.getCountPerPage());

		Map<String, Object> responseData = new HashMap<String, Object>();
		String list = "";

		for (int i = 0; i < boardList.size(); i++) {
			list += "<tr onclick=\"location.href='readArticle?boardId=" + boardList.get(i).getBoardId() + "'\"><td>"
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

	// 질문 게시판 목록 띄우기(Ajax 처리)
	@ResponseBody
	@RequestMapping(value = "/questionListShow", method = RequestMethod.POST, produces = "application/json; charset=utf8")
	public Map<String, Object> questionListShow(
			@RequestParam(value = "currentPage", defaultValue = "1") int currentPage,
			@RequestParam(value = "searchCategory", defaultValue = "memberId") String searchCategory,
			@RequestParam(value = "searchKeyword", defaultValue = "") String searchKeyword) {
		int totalRecordCount = boardRepository.getTotalList();
		PageNavigator navi = new PageNavigator(currentPage, totalRecordCount);
		List<Board> boardList = boardRepository.viewAllQuestions(searchCategory, searchKeyword, navi.getStartRecord(),
				navi.getCountPerPage());

		Map<String, Object> responseData = new HashMap<String, Object>();
		String list = "";

		for (int i = 0; i < boardList.size(); i++) {
			list += "<tr onclick=\"location.href='readArticle?boardId=" + boardList.get(i).getBoardId() + "'\"><td>"
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

	// 게시물 읽기 페이지 이동
	@RequestMapping(value = "/readArticle", method = RequestMethod.GET)
	public String readArticle(String boardId, Model model) {
		// Board reviewDetail = boardRepository.viewBoardDetail(boardId);
		// Exhibition exbhibitionForReview =
		// exhibitionRepository.showExhibitionDetail(reviewDetail.getExhibitionId());
		// BoardReply reviewReply =
		// boardReplyRepository.selectOneBoardReply(boardReplyRepository.getBoardReplyId(boardId));
		// model.addAttribute("reviewDetail", reviewDetail);
		// model.addAttribute("reviewReply", reviewReply);
		// model.addAttribute("exhibitionForReview", exbhibitionForReview);
		return "board/readArticle";
	}

	// 게시물 쓰기 페이지 이동
	@RequestMapping(value = "/writeArticle", method = RequestMethod.GET)
	public String writeReview() {
		return "board/writeArticle";
	}

	// 게시물 입력
	@RequestMapping(value = "/writeArticle", method = RequestMethod.POST)
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

		if (board.getCategory().equals("question")) {
			return "redirect:/questions";
		} else {
			return "redirect:/reviews";
		}
	}

	// 게시물 수정 페이지 이동
	@RequestMapping(value = "/updateArticle", method = RequestMethod.GET)
	public String updateReview(String boardId, Model model) {
		Board original = boardRepository.viewBoardDetail(boardId);
		String boardFileId = boardFileRepository.getBoardFileIdByBoardId(boardId);
		BoardFile originalFile = boardFileRepository.selectOneBoardFile(boardFileId);
		if (originalFile != null) {
			model.addAttribute("originalFile", originalFile);
		}
		model.addAttribute("original", original);
		return "board/writeArticle";
	}

	// 게시물 수정 입력
	@RequestMapping(value = "/updateArticle", method = RequestMethod.POST)
	public String updateReview(Board board, MultipartFile uploadedFile, HttpSession session, String deleteFile) {
		String userid = (String) session.getAttribute("loginId");
		String boardId = boardRepository.getBoardId(userid);
		board.setMemberId(userid);
		boardRepository.updateBoard(board);
		String oldFileId = boardFileRepository.getBoardFileIdByBoardId(boardId);
		BoardFile oldBoardFile = boardFileRepository.selectOneBoardFile(oldFileId);

		if (deleteFile != null && deleteFile.equals("deletefile")) {
			String savedfile = oldBoardFile.getSvFilename();
			String fullpath = uploadPath + "/" + savedfile;
			FileService.deleteFile(fullpath);
			boardFileRepository.deleteOneBoardFile(boardId);
		} else if (oldBoardFile != null && uploadedFile.getSize() != 0) {
			String originalfile = uploadedFile.getOriginalFilename();
			String savedfile = FileService.saveFile(uploadedFile, uploadPath);
			BoardFile newBoardFile = new BoardFile();
			newBoardFile.setBoardId(boardId);
			newBoardFile.setOgFilename(originalfile);
			newBoardFile.setSvFilename(savedfile);
			newBoardFile.setFileSize(uploadedFile.getSize());
			boardFileRepository.insertOneBoardFile(newBoardFile);
		}

		if (board.getCategory().equals("question")) {
			return "redirect:/questions";
		} else {
			return "redirect:/reviews";
		}
	}

	// 게시물 삭제하기
	@RequestMapping(value = "/deleteArticle", method = RequestMethod.POST)
	public String deleteReview(Board board) {
		boardRepository.deleteBoard(board);
		if (board.getCategory().equals("question")) {
			return "redirect:/questions";
		} else {
			return "redirect:/reviews";
		}
	}

	// 게시물 첨부 파일 다운로드
	@RequestMapping(value = "/downloadFile", method = RequestMethod.GET)
	public String download(String boardId, HttpServletResponse response) {
		String boardFileId = boardFileRepository.getBoardFileIdByBoardId(boardId);
		BoardFile originalFile = boardFileRepository.selectOneBoardFile(boardFileId);
		String originalfile = originalFile.getOgFilename();
		String savedfile = originalFile.getSvFilename();
		String fullpath = uploadPath + "/" + savedfile;

		FileInputStream fis = null;
		ServletOutputStream sos = null;

		try {
			response.setHeader("Content-Disposition",
					" attachment;filename=" + URLEncoder.encode(originalfile, "UTF-8"));
			fis = new FileInputStream(fullpath);
			sos = response.getOutputStream();
			FileCopyUtils.copy(fis, sos);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				fis.close();
				sos.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return null;
	}
}
