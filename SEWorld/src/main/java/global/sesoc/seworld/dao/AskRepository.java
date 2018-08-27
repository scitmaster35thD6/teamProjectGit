package global.sesoc.seworld.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.seworld.dto.Ask;

@Repository
public class AskRepository {
	@Autowired
	SqlSession sqlSession;

	public List<Ask> selectAllAsksFromMember(String memberId) {
		AskMapper askMapper = sqlSession.getMapper(AskMapper.class);
		return askMapper.selectAllAsksFromMember(memberId);
	}

	public List<Ask> selectAllAsksFromExhibition(String exhibitionId) {
		AskMapper askMapper = sqlSession.getMapper(AskMapper.class);
		return askMapper.selectAllAsksFromExhibition(exhibitionId);
	}

	public Ask selectOneAsk(String askId) {
		AskMapper askMapper = sqlSession.getMapper(AskMapper.class);
		return askMapper.selectOneAsk(askId);
	}

	public int insertOneAsk(Ask ask) {
		AskMapper askMapper = sqlSession.getMapper(AskMapper.class);
		return askMapper.insertOneAsk(ask);
	}

	public int deleteOneAsk(Ask ask) {
		AskMapper askMapper = sqlSession.getMapper(AskMapper.class);
		return askMapper.deleteOneAsk(ask);
	}

	public int updateOneAsk(Ask ask) {
		AskMapper askMapper = sqlSession.getMapper(AskMapper.class);
		return askMapper.updateOneAsk(ask);
	}
}
