package global.sesoc.seworld.dao;

import java.util.List;

import global.sesoc.seworld.dto.Regions;

public interface RegionsMapper {
	/**
	 * 등록된 모든 대륙정보를 가져온다.
	 * 
	 * @return
	 */
	public abstract List<Regions> viewAllRegions();

	/**
	 * 대륙이름을 검색해 대륙정보를 조회한다.
	 * 
	 * @param regionsName
	 * @return
	 */
	public abstract Regions viewOneRegions(String regionsName);
}
