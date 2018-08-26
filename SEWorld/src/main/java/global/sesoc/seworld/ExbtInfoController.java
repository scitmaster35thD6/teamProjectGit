package global.sesoc.seworld;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import global.sesoc.seworld.dao.ExbtInfoRepository;
import global.sesoc.seworld.dto.ExbtInfo;
import global.sesoc.seworld.rest.XmlParser;

@Controller
public class ExbtInfoController {
	
	/**
	 * SE World ExbtInfo Controller
	 * 
	 * API를 통해 해외전시정보를 수집하는 컨트롤러
	 * 
	 * @author JH Cho 
	 * @version 0.1
	 */
	
	private static final Logger logger = LoggerFactory.getLogger(ExbtInfoController.class);

	@Autowired
	ExbtInfoRepository exbtInfoRepository;

	@RequestMapping(value = "/ExbtInfoTest", method = RequestMethod.GET)
	public String exbtInfoTest() throws Exception {
		logger.info("[/ExbtInfoTest]");
		return "ExbtInfoTest";
	}

	@RequestMapping(value = "/insertExbtInfo", method = RequestMethod.GET)
	public String insertExbtInfo() throws Exception {
		logger.info("[/insertExbtInfo]");
		XmlParser xmlParser = new XmlParser();
		List<ExbtInfo> exbtInfoList = xmlParser.parse();
		System.out.println(exbtInfoRepository.insertExbtInfo(exbtInfoList));
		return "redirect:/";
	}
}
