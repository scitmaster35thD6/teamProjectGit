package global.sesoc.seworld.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import global.sesoc.seworld.dto.c6_exhibition;

public interface ExhibitionMapper {

	public List<c6_exhibition> showExhibitionList(String selectedCountry, RowBounds rb);

	public int getTotalList(String selectedCountry);

	public c6_exhibition showExhibitionDetail(String exhibition_id);

}
