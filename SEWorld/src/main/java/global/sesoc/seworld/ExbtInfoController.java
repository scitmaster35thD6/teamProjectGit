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
import global.sesoc.seworld.rest.XmlParsingTest;

@Controller
public class ExbtInfoController {
	private static final Logger logger = LoggerFactory.getLogger(ExbtInfoController.class);
	
	@Autowired
	ExbtInfoRepository exbtInfoRepository;
	
	@RequestMapping(value = "/insertExbtInfo", method = RequestMethod.GET)
	public String insertExbtInfo() throws Exception {
		logger.info("[/insertExbtInfo]");
		XmlParsingTest xmlParsingTest = new XmlParsingTest();
		List<ExbtInfo> exbtInfoList = xmlParsingTest.parse();
//		System.out.println(exbtInfoList.toString());
		System.out.println(exbtInfoRepository.insertExbtInfo(exbtInfoList));
		return "redirect:/";
	}
}
