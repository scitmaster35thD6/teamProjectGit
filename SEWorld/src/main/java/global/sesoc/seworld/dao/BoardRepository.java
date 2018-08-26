package global.sesoc.seworld.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.seworld.dto.Board;

@Repository
public class BoardRepository {
	@Autowired
	SqlSession sqlSession;

	public List<Board> viewAllBoards() {
		BoardMapper boardMapper = sqlSession.getMapper(BoardMapper.class);
		return boardMapper.viewAllBoards();
	}

	public Board viewBoardDetail(String boardId) {
		BoardMapper boardMapper = sqlSession.getMapper(BoardMapper.class);
		return boardMapper.viewBoardDetail(boardId);
	}

	public int insertBoard(Board board) {
		BoardMapper boardMapper = sqlSession.getMapper(BoardMapper.class);
		return boardMapper.insertBoard(board);
	}

	public int updateBoard(Board board) {
		BoardMapper boardMapper = sqlSession.getMapper(BoardMapper.class);
		return boardMapper.updateBoard(board);
	}

	public int deleteBoard(Board board) {
		BoardMapper boardMapper = sqlSession.getMapper(BoardMapper.class);
		return boardMapper.deleteBoard(board);
	}
}
