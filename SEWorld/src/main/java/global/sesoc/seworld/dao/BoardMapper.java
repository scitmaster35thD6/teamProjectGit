package global.sesoc.seworld.dao;

import java.util.List;

import global.sesoc.seworld.dto.c6_board;

public interface BoardMapper {

	public List<c6_board> viewAllBoard();

	public c6_board viewBoardDetail(String board_id);

	public int insertBoard(c6_board board);

	public int updateBoard(c6_board board);

	public int deleteBoard(c6_board board);

}
