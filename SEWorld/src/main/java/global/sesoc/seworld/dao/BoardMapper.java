package global.sesoc.seworld.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;

import global.sesoc.seworld.dto.Board;

public interface BoardMapper {

	public int getTotalList();
	
	public List<Board> viewAllReviews(Map<String, String> searchItems);
	
	public List<Board> viewAllQuestions(Map<String, String> searchItems, RowBounds rb);

	public Board viewBoardDetail(String boardId);
	
	public String getBoardId(String memberId);

	public int insertBoard(Board board);

	public int updateBoard(Board board);

	public int deleteBoard(Board board);

}
