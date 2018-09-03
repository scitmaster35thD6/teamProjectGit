package global.sesoc.seworld.dao;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.seworld.dto.Exhibition;

@Repository
public class ExhibitionRepository {

	@Autowired
	SqlSession sqlSession;

	public int getTotalList(String selectedCountry) {
		ExhibitionMapper mapper = sqlSession.getMapper(ExhibitionMapper.class);
		int result = mapper.getTotalList(selectedCountry);
		return result;
	}

	public List<String> getTotalCountry() {
		ExhibitionMapper mapper = sqlSession.getMapper(ExhibitionMapper.class);
		return mapper.getTotalCountry();
	}

	public Exhibition showExhibitionDetail(String exhibitionId) {
		ExhibitionMapper mapper = sqlSession.getMapper(ExhibitionMapper.class);
		Exhibition result = mapper.showExhibitionDetail(exhibitionId);
		return result;
	}

	public int countCountry(String openingCountry) {
		ExhibitionMapper mapper = sqlSession.getMapper(ExhibitionMapper.class);
		int result = mapper.countCountry(openingCountry);
		return result;
	}

	public List<Exhibition> showExhibitionList(String selectedCountry) {
		ExhibitionMapper mapper = sqlSession.getMapper(ExhibitionMapper.class);
		List<Exhibition> result = mapper.showExhibitionList(selectedCountry);
		return result;
	}
}
