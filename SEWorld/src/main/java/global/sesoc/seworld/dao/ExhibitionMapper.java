package global.sesoc.seworld.dao;

import java.util.List;

import global.sesoc.seworld.dto.Exhibition;

public interface ExhibitionMapper {

	public int getTotalList();

	public Exhibition showExhibitionDetail(String exhibitionId);
	
	public int countCountry (String openingCountry) ;

	public List<Exhibition> showExhibitionList();

	public List<String> getTotalCountry();
}
