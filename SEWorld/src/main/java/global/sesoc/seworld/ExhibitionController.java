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

	@RequestMapping(value = "/exhibitionList", method = RequestMethod.GET)
	public String exhibitionList() {
		return "exhibition/exhibitionList";
	}

	@RequestMapping(value = "/exhibitionListShow", method = RequestMethod.POST, produces = "application/json; charset=utf8")
	public @ResponseBody Map<String, Object> exhibitionListShow(
			@RequestParam(value = "currentPage", defaultValue = "1") int currentPage,
			@RequestParam(value = "selectedCountry", defaultValue = "") String selectedCountry,
			@RequestParam(value = "searchCategory", defaultValue = "exhibitionTitleKor") String searchCategory,
			@RequestParam(value = "searchKeyword", defaultValue = "") String searchKeyword) {
		int totalRecordCount = repository.getTotalList(selectedCountry);
		PageNavigator navi = new PageNavigator(currentPage, totalRecordCount);
		List<Exhibition> exhibitionList = repository.showExhibitionList(selectedCountry, searchCategory, searchKeyword,
				navi.getStartRecord(), navi.getCountPerPage());

		Map<String, Object> responseData = new HashMap<String, Object>();
		String list = "";

		for (int i = 0; i < exhibitionList.size(); i++) {
			list += "<tr onclick=\"location.href='exhibitionDetail?exhibitionId=" + exhibitionList.get(i).getExhibitionId() + "'\"><td>"
					+ exhibitionList.get(i).getExhibitionTitleEng() + "</td>";
			list += "<td>" + exhibitionList.get(i).getExhibitionTitleKor() + "</td>";
			list += "<td>" + exhibitionList.get(i).getOpeningCountry() + "</td>";
			list += "<td>" + exhibitionList.get(i).getOpeningCity() + "</td>";
			list += "<td>" + exhibitionList.get(i).getOpeningTerm().substring(0, 8) + "</td></tr></a>";
		}

		responseData.put("totalRecordCount", totalRecordCount);
		responseData.put("list", list);
		responseData.put("navi", navi);

		return responseData;

	}

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

	@RequestMapping(value = "/vector", method = RequestMethod.GET)
	public String vectorMap() {
		return "exhibition/vector";
	}
}
