package global.sesoc.seworld.dao;

import java.util.List;

import global.sesoc.seworld.dto.Board;

public interface BoardMapper {
	public List<Board> viewAllBoards();

	public Board viewBoardDetail(String boardId);

	public int insertBoard(Board board);

	public int updateBoard(Board board);

	public int deleteBoard(Board board);
}
