package global.sesoc.seworld.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.seworld.dto.c6_board;

@Repository
public class BoardRepository {

	@Autowired
	SqlSession sqlSession;

	public List<c6_board> viewAllBoard() {
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		List<c6_board> result = mapper.viewAllBoard();
		return result;

	}

	public c6_board viewBoardDetail(String board_id) {
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		c6_board result = mapper.viewBoardDetail(board_id);
		return result;

	}

	public int insertBoard(c6_board board) {
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		int result = mapper.insertBoard(board);
		return result;

	}

	public int updateBoard(c6_board board) {
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		int result = mapper.updateBoard(board);
		return result;

	}

	public int deleteBoard(c6_board board) {
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		int result = mapper.deleteBoard(board);
		return result;

	}
}
