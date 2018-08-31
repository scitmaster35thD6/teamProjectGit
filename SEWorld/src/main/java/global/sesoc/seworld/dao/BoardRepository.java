package global.sesoc.seworld.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.seworld.dto.Board;

@Repository
public class BoardRepository {
	@Autowired
	SqlSession sqlSession;

	public int getTotalList() {
		BoardMapper boardMapper = sqlSession.getMapper(BoardMapper.class);
		int result = boardMapper.getTotalList();
		return result;
	}
	
	public List<Board> viewAllReviews(String searchCategory, String searchKeyword, int startRecord, int countPerPage) {
		BoardMapper boardMapper = sqlSession.getMapper(BoardMapper.class);
		RowBounds rb = new RowBounds(startRecord, countPerPage);
		Map<String, String> searchItems = new HashMap<String, String>();
		searchItems.put("searchCategory", searchCategory);
		searchItems.put("searchKeyword", searchKeyword);
		List<Board> result = boardMapper.viewAllReviews(searchItems, rb);
		return result;
	}
	
	public List<Board> viewAllQuestions(String searchCategory, String searchKeyword, int startRecord, int countPerPage) {
		BoardMapper boardMapper = sqlSession.getMapper(BoardMapper.class);
		RowBounds rb = new RowBounds(startRecord, countPerPage);
		Map<String, String> searchItems = new HashMap<String, String>();
		searchItems.put("searchCategory", searchCategory);
		searchItems.put("searchKeyword", searchKeyword);
		List<Board> result = boardMapper.viewAllQuestions(searchItems, rb);
		return result;
	}

	public Board viewBoardDetail(String boardId) {
		BoardMapper boardMapper = sqlSession.getMapper(BoardMapper.class);
		Board result = boardMapper.viewBoardDetail(boardId);
		return result;
	}
	
	public String getBoardId(String memberId) {
		BoardMapper boardMapper = sqlSession.getMapper(BoardMapper.class);
		String result = boardMapper.getBoardId(memberId);
		return result;
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
