package global.sesoc.seworld.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;

import global.sesoc.seworld.dto.Exhibition;

public interface ExhibitionMapper {
	public List<Exhibition> showExhibitionList(Map<String, String> searchItems, RowBounds rb);

	public int getTotalList(String selectedCountry);

	public Exhibition showExhibitionDetail(String exhibitionId);
	
	public int countCountry (String openingCountry) ;
}
