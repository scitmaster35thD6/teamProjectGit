package global.sesoc.seworld;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import global.sesoc.seworld.dao.ExhibitionRepository;
import global.sesoc.seworld.dto.Exhibition;
import global.sesoc.seworld.util.PageNavigator;

@Controller
public class ExhibitionController {

	/*
	 * SE World Exhibition Controller
	 * 
	 * API를 통해 수집한 전시정보를 제공하는 컨트롤러
	 * 
	 * @author youngbinkim
	 * 
	 * @version 0.1
	 */

	@Autowired
	ExhibitionRepository repository;

	// 전시회 목록 페이지로 이동
	@RequestMapping(value = "/exhibitionList", method = RequestMethod.GET)
	public String exhibitionList(@RequestParam(value = "selectedCountry", defaultValue = "") String selectedCountry,
			@RequestParam(value = "searchCategory", defaultValue = "exhibitionTitleKor") String searchCategory,
			@RequestParam(value = "searchKeyword", defaultValue = "") String searchKeyword, Model model) {
		List<Exhibition> exhibitionList = repository.showExhibitionListEL(selectedCountry, searchCategory,
				searchKeyword);

		String ELlist = "";
		for (int i = 0; i < exhibitionList.size(); i++) {
			ELlist += "<tr onclick=\"location.href='exhibitionDetail?exhibitionId="
					+ exhibitionList.get(i).getExhibitionId() + "'\"><td>"
					+ exhibitionList.get(i).getExhibitionTitleEng() + "</td>";
			ELlist += "<td>" + exhibitionList.get(i).getExhibitionTitleKor() + "</td>";
			ELlist += "<td>" + exhibitionList.get(i).getOpeningCountry() + "</td>";
			ELlist += "<td>" + exhibitionList.get(i).getOpeningCity() + "</td>";
			ELlist += "<td>" + exhibitionList.get(i).getOpeningTerm().substring(0, 8) + "</td>";
			ELlist += "<td>" + exhibitionList.get(i).getOpeningTerm().substring(9, 17) + "</tr></a>";
		}
		model.addAttribute("ELlist", ELlist);

		return "exhibition/exhibitionList";
	}

	// 상세 전시회 보기 페이지
	@RequestMapping(value = "/exhibitionDetail", method = RequestMethod.GET)
	public String exhibitionDetail(String exhibitionId, Model model) {
		Exhibition exhibitionDetail = repository.showExhibitionDetail(exhibitionId);
		model.addAttribute("exhibitionDetail", exhibitionDetail);
		return "exhibition/exhibitionDetail";
	}

	/** 지도에 전시회 몇개인지 표시하기 **/
	@RequestMapping(value = "countcountry", method = RequestMethod.POST)
	public @ResponseBody Integer countcountry(@RequestBody String openingCountry) throws Exception {
		System.out.println(openingCountry + "오프팅컨트리");
		int result = repository.countCountry(openingCountry);
		System.out.println(result + "몇개");
		return result;
	}

	// 벡터 지도로 이동
	@RequestMapping(value = "/vector", method = RequestMethod.GET)
	public String vectorMap() {
		return "exhibition/vector";
	}
}
