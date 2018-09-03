package global.sesoc.seworld.dao;

import java.util.List;

import global.sesoc.seworld.dto.Exhibition;

public interface ExhibitionMapper {

	public int getTotalList(String selectedCountry);

	public Exhibition showExhibitionDetail(String exhibitionId);
	
	public int countCountry (String openingCountry) ;

	public List<Exhibition> showExhibitionList(String selectedCountry);

	public List<String> getTotalCountry();
}
