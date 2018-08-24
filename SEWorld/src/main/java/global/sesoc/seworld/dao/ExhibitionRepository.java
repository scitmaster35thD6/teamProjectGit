package global.sesoc.seworld.dao;

import java.util.List;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.seworld.dto.c6_exhibition;

@Repository
public class ExhibitionRepository {

	@Autowired
	SqlSession sqlSession;

	public int getTotalList(String selectedCountry) {
		ExhibitionMapper mapper = sqlSession.getMapper(ExhibitionMapper.class);
		int result = mapper.getTotalList(selectedCountry);
		return result;
	}
	
	public List<c6_exhibition> showExhibitionList(String selectedCountry, int startRecord, int countPerPage) {
		ExhibitionMapper mapper = sqlSession.getMapper(ExhibitionMapper.class);
		RowBounds rb = new RowBounds(startRecord, countPerPage);
		List<c6_exhibition> result = mapper.showExhibitionList(selectedCountry, rb);
		return result;
	}

	public c6_exhibition showExhibitionDetail(String exhibition_id) {
		ExhibitionMapper mapper = sqlSession.getMapper(ExhibitionMapper.class);
		c6_exhibition result = mapper.showExhibitionDetail(exhibition_id);
		return result;
	}

}
