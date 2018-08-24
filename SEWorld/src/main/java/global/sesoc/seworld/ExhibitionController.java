package global.sesoc.seworld;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import global.sesoc.seworld.dao.ExhibitionRepository;
import global.sesoc.seworld.dto.c6_exhibition;
import global.sesoc.seworld.util.PageNavigator;

@Controller
public class ExhibitionController {

	/*
	 * SE World Exhibition Controller
	 * 
	 * API를 통해 수집한 전시정보를 제공하는 컨트롤러
	 * 
	 * @author youngbinkim
	 * @version 0.1
	 */

	@Autowired
	ExhibitionRepository repository;

	@RequestMapping(value = "/exhibitionList", method = RequestMethod.GET)
	public String exhibitionList(@RequestParam(value = "currentPage", defaultValue = "1") int currentPage,
			@RequestParam(value = "selectedCountry", defaultValue = "") String selectedCountry, Model model) {
		int totalRecordCount = repository.getTotalList(selectedCountry);
		PageNavigator navi = new PageNavigator(currentPage, totalRecordCount);
		List<c6_exhibition> exhibitionList = repository.showExhibitionList(selectedCountry, navi.getStartRecord(), navi.getCountPerPage());
		model.addAttribute("exhibitionList", exhibitionList);
		model.addAttribute("selectedCountry", selectedCountry);
		model.addAttribute("navi", navi);
		model.addAttribute("currentPage", currentPage);
		return "exhibition/exhibitionList";
	}

	@RequestMapping(value = "/exhibitionDetail", method = RequestMethod.GET)
	public String exhibitionDetail(Model model) {
		// String exhibition_id = "";
		// c6_exhibition exhibitionDetail =
		// repository.showExhibitionDetail(exhibition_id);

		c6_exhibition exhibitionDetail = new c6_exhibition();
		exhibitionDetail.setExhibition_title_kor("테스트 제목");
		exhibitionDetail.setExhibition_title_eng("Test Title");
		exhibitionDetail.setOpening_term("20180822-20180901");
		exhibitionDetail.setFirst_opening_year(1945);
		exhibitionDetail.setOpening_city("서울");
		exhibitionDetail.setOpening_country("Republic of Korea");
		exhibitionDetail.setSponsor("이남곤");

		model.addAttribute("exhibitionDetail", exhibitionDetail);
		return "exhibition/exhibitionDetail";
	}

}
