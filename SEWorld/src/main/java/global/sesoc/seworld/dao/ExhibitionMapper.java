package global.sesoc.seworld.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import global.sesoc.seworld.dto.Exhibition;

public interface ExhibitionMapper {
	public List<Exhibition> showExhibitionList(String selectedCountry, RowBounds rb);

	public int getTotalList(String selectedCountry);

	public Exhibition showExhibitionDetail(String exhibitionId);
	
	public int countCountry (String openingCountry) ;
}
