package global.sesoc.seworld.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.seworld.dto.Timeline;

@Repository
public class TimelineRepository {
	@Autowired
	SqlSession sqlSession;

	public List<Timeline> myTimeline(String memberId) {
		TimelineMapper timelineMapper = sqlSession.getMapper(TimelineMapper.class);
		return timelineMapper.myTimeline(memberId);
	}
}
