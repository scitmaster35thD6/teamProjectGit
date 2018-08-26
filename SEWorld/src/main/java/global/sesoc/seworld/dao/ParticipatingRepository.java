package global.sesoc.seworld.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.seworld.dto.Participating;

@Repository
public class ParticipatingRepository {
	@Autowired
	SqlSession sqlSession;

	public int insertParticipating(Participating participating) {
		ParticipatingMapper participatingMapper = sqlSession.getMapper(ParticipatingMapper.class);
		return participatingMapper.insertParticipating(participating);
	}

	public int deleteParticipating(Participating participating) {
		ParticipatingMapper participatingMapper = sqlSession.getMapper(ParticipatingMapper.class);
		return participatingMapper.deleteParticipating(participating);
	}
}
