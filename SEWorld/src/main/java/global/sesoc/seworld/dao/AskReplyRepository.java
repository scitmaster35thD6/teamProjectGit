package global.sesoc.seworld.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import global.sesoc.seworld.dto.AskReply;

public class AskReplyRepository {
	@Autowired
	SqlSession sqlSession;

	public List<AskReply> selectAllAskReplies(String askId) {
		AskReplyMapper askReplyMapper = sqlSession.getMapper(AskReplyMapper.class);
		return askReplyMapper.selectAllAskReplies(askId);
	}

	public AskReply selectOneAskReply(String askReplyId) {
		AskReplyMapper askReplyMapper = sqlSession.getMapper(AskReplyMapper.class);
		return askReplyMapper.selectOneAskReply(askReplyId);
	}

	public int insertOneAskReply(AskReply askReply) {
		AskReplyMapper askReplyMapper = sqlSession.getMapper(AskReplyMapper.class);
		return askReplyMapper.insertOneAskReply(askReply);
	}

	public int deleteOneAskReply(AskReply askReply) {
		AskReplyMapper askReplyMapper = sqlSession.getMapper(AskReplyMapper.class);
		return askReplyMapper.deleteOneAskReply(askReply);
	}

	public int updateOneAskReply(AskReply askReply) {
		AskReplyMapper askReplyMapper = sqlSession.getMapper(AskReplyMapper.class);
		return askReplyMapper.updateOneAskReply(askReply);
	}
}
