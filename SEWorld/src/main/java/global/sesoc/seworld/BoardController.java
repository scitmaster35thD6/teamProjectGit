package global.sesoc.seworld;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import global.sesoc.seworld.dao.BoardRepository;
import global.sesoc.seworld.dto.Board;

@Controller
public class BoardController {
	
	/**
	 * SE World Board Controller
	 * 
	 * @author youngbinkim
	 * @version 0.1
	 */

	@Autowired
	BoardRepository repository;

	@RequestMapping(value = "/board", method = RequestMethod.GET)
	public String viewAllBoard(Model model) {
		List<Board> allBoard = repository.viewAllBoards();
		model.addAttribute("allBoard", allBoard);
		return "board/boardList";
	}

	@RequestMapping(value = "/boardDetail", method = RequestMethod.GET)
	public String viewBoardDetail(String board_id, Model model) {
		Board selectedBoard = repository.viewBoardDetail(board_id);
		model.addAttribute("selectedBoard", selectedBoard);
		return "board/boardDetail";
	}

	@RequestMapping(value = "/insertBoard", method = RequestMethod.GET)
	public String insertBoard() {
		return "board/insertBoard";
	}

	@RequestMapping(value = "/insertBoard", method = RequestMethod.POST)
	public String insertBoard(Board board) {
		repository.insertBoard(board);
		return "redirect:/board";
	}

	@RequestMapping(value = "/updateBoard", method = RequestMethod.GET)
	public String updateBoard() {
		return "board/updateBoard";
	}

	@RequestMapping(value = "/updateBoard", method = RequestMethod.POST)
	public String updateBoard(Board board) {
		repository.updateBoard(board);
		return "redirect:/board";
	}

	@RequestMapping(value = "/deleteBoard", method = RequestMethod.POST)
	public String deleteBoard(Board board) {
		repository.deleteBoard(board);
		return "redirect:/board";
	}
}
