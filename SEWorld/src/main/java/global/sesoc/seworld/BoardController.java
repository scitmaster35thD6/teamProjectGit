package global.sesoc.seworld;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import global.sesoc.seworld.dao.BoardRepository;
import global.sesoc.seworld.dto.c6_exhibition;

@Controller
public class BoardController {

	@Autowired
	BoardRepository repository;

	@RequestMapping(value = "/board", method = RequestMethod.GET)
	public String boardDetail(Model model) {
//		String exhibition_id = "";
//		c6_exhibition exhibitionDetail = repository.showExhibitionDetail(exhibition_id);

		c6_exhibition exhibitionDetail = new c6_exhibition();
		exhibitionDetail.setExhibition_title_kor("테스트 제목");
		exhibitionDetail.setExhibition_title_eng("Test Title");
		exhibitionDetail.setOpening_term("20180822-20180901");
		exhibitionDetail.setFirst_opening_year(1945);
		exhibitionDetail.setOpening_city("서울");
		exhibitionDetail.setOpening_country("Republic of Korea");
		exhibitionDetail.setSponsor("이남곤");
		
		model.addAttribute("exhibitionDetail", exhibitionDetail);
		return "boardDetail";
	}
}
