package global.sesoc.seworld.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.seworld.dto.Participating;

@Repository
public class ParticipatingRepository {
	@Autowired
	SqlSession sqlSession;

	public int insertOneParticipating(Participating participating) {
		ParticipatingMapper participatingMapper = sqlSession.getMapper(ParticipatingMapper.class);
		return participatingMapper.insertOneParticipating(participating);
	}

	public int deleteOneParticipating(Participating participating) {
		ParticipatingMapper participatingMapper = sqlSession.getMapper(ParticipatingMapper.class);
		return participatingMapper.deleteOneParticipating(participating);
	}
}
