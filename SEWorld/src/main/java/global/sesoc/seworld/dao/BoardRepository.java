package global.sesoc.seworld.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.seworld.dto.c6_exhibition;

@Repository
public class BoardRepository {

	@Autowired
	SqlSession sqlSession;

	public c6_exhibition showExhibitionDetail(String exhibition_id) {
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		c6_exhibition result = mapper.showExhibitionDetail(exhibition_id);
		return result;
	}
}
