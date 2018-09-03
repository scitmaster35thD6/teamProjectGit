package global.sesoc.seworld.dao;

import java.util.List;
import java.util.Map;

import global.sesoc.seworld.dto.Board;

public interface BoardMapper {

	public int getTotalList();
	
	public List<String> getTotalCountry();
	
	public List<Board> viewAllReviews(Map<String, String> searchItems);
	
	public List<Board> viewAllQuestions(Map<String, String> searchItems);

	public Board viewBoardDetail(String boardId);
	
	public String getBoardId(String memberId);

	public int insertBoard(Board board);

	public int updateBoard(Board board);

	public int deleteBoard(Board board);

}
