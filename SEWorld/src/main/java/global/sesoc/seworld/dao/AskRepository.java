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

	public List<Ask> viewAllAsksFromMember(String memberId) {
		AskMapper askMapper = sqlSession.getMapper(AskMapper.class);
		return askMapper.viewAllAsksFromMember(memberId);
	}

	public List<Ask> viewAllAsksFromExhibition(String exhibitionId) {
		AskMapper askMapper = sqlSession.getMapper(AskMapper.class);
		return askMapper.viewAllAsksFromExhibition(exhibitionId);
	}

	public Ask viewAskDetail(String askId) {
		AskMapper askMapper = sqlSession.getMapper(AskMapper.class);
		return askMapper.viewAskDetail(askId);
	}

	public int insertAsk(Ask ask) {
		AskMapper askMapper = sqlSession.getMapper(AskMapper.class);
		return askMapper.insertAsk(ask);
	}

	public int deleteAsk(Ask ask) {
		AskMapper askMapper = sqlSession.getMapper(AskMapper.class);
		return askMapper.deleteAsk(ask);
	}

	public int updateAsk(Ask ask) {
		AskMapper askMapper = sqlSession.getMapper(AskMapper.class);
		return askMapper.updateAsk(ask);
	}
}
