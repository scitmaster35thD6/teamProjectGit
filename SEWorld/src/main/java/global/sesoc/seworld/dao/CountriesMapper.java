package global.sesoc.seworld.dao;

import java.util.List;

import global.sesoc.seworld.dto.Countries;

public interface CountriesMapper {
	/**
	 * 등록된 모든 국가정보를 가져온다.
	 * 
	 * @return
	 */
	public abstract List<Countries> viewAllCountries();

	/**
	 * 국가이름을 검색해 국가정보를 조회한다.
	 * 
	 * @param countryName
	 * @return
	 */
	public abstract Countries viewOneCountry(String countryName);
}
