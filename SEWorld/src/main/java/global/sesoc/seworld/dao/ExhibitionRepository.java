package global.sesoc.seworld.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
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

	public List<Exhibition> showExhibitionList(String selectedCountry, String searchCategory, String searchKeyword, int startRecord, int countPerPage) {
		ExhibitionMapper mapper = sqlSession.getMapper(ExhibitionMapper.class);
		RowBounds rb = new RowBounds(startRecord, countPerPage);
		Map<String, String> searchItems = new HashMap<String, String>();
		searchItems.put("selectedCountry", selectedCountry);
		searchItems.put("searchCategory", searchCategory);
		searchItems.put("searchKeyword", searchKeyword);
		List<Exhibition> result = mapper.showExhibitionList(searchItems, rb);
		return result;
	}

	public Exhibition showExhibitionDetail(String exhibitionId) {
		ExhibitionMapper mapper = sqlSession.getMapper(ExhibitionMapper.class);
		Exhibition result = mapper.showExhibitionDetail(exhibitionId);
		return result;
	}
	
	public int countCountry (String openingCountry) {
		ExhibitionMapper mapper = sqlSession.getMapper(ExhibitionMapper.class);
		int result = mapper.countCountry(openingCountry);
		return result;
	}
}
