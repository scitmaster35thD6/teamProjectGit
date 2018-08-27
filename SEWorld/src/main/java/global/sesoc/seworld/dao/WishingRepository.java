package global.sesoc.seworld.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.seworld.dto.Wishing;

@Repository
public class WishingRepository {
	@Autowired
	SqlSession sqlSession;

	public int insertOneWishing(Wishing wishing) {
		WishingMapper wishingMapper = sqlSession.getMapper(WishingMapper.class);
		return wishingMapper.insertOneWishing(wishing);
	}

	public int deleteOneWishing(Wishing wishing) {
		WishingMapper wishingMapper = sqlSession.getMapper(WishingMapper.class);
		return wishingMapper.deleteOneWishing(wishing);
	}
}
