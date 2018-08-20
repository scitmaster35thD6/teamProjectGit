package global.sesoc.seworld.rest;

import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import global.sesoc.seworld.dto.ExbtInfo;

public class XmlParsingTest {
	private List<ExbtInfo> exbtInfoList = new ArrayList<ExbtInfo>();
	private final int TOTAL_PAGE_COUNT = 13;
	
	public List<ExbtInfo> parse() throws Exception {
		for (int pageNo = 1; pageNo <= 1; pageNo++) {
			String addr = "http://www.gep.or.kr/rest/overseasExhibition?serviceKey=";
			String serviceKey = "FsLyT%2F7neLBzi2BSryIlrXTpjg68D44fUqCcl2PO%2B3R%2B8%2FCnikXdveIici4eMl7YiBOm5Is1JnEWJteh9ux0BA%3D%3D";
			String parameter = "";
			parameter = parameter + "&" + "from=20180801";
			parameter = parameter + "&" + "to=20180831";
			parameter = parameter + "&" + "numOfRows=10";
			parameter = parameter + "&" + "pageNo=" + pageNo;
			parameter = parameter + "&" + "type=xml";
			addr = addr + serviceKey + parameter;
			Document document = Jsoup.parse(new URL(addr).openStream(), "UTF-8", addr);
			Elements elements = document.select("data").select("list");
//			System.out.println(addr);
//			System.out.println("elements = " + elements.size());
//			System.out.println("pageNo=" + pageNo);
			for (Element e : elements) {
				ExbtInfo exbt = new ExbtInfo(
					e.select("exhibitionTitleKor").text(),
					e.select("exhibitionTitleEng").text(),
					e.select("openingTerm").text(),
					e.select("openingCycle").text(),
					e.select("firstOpeningYear").text().substring(0, 4),
					e.select("openingScale").text(),
					e.select("openingCountry").text(),
					e.select("openingCity").text(),
					e.select("exhibitionHall").text(),
					e.select("participatingNationCount").text(),
					e.select("openingCountryCount").text(),
					e.select("overseasCount").text(),
					e.select("openingCountryVisitorsCount").text(),
					e.select("mainParticipatingNations").text(),
					e.select("KOREACompanyWhether").text(),
					e.select("KOREACompanyParticipatingCount").text(),
					e.select("totalVisitorsCount").text(),
					e.select("overseasVisitorsCount").text(),
					e.select("exhibitionArea").text(),
					e.select("sponsor").text(),
					e.select("personInCharge").text(),
					e.select("address").text(),
					e.select("telephone").text(),
					e.select("fax").text(),
					e.select("homepage").text(),
					e.select("email").text(),
					e.select("createdDate").text(),
					e.select("lastUpdatedDate").text(),
					e.select("source").text(),
					e.select("dataOffer").text(),
					e.select("exhibitionItem").text(),
					e.select("remarks").text()
				);
				System.out.println(exbt.toString());
				exbtInfoList.add(exbt);
			} // ends for
		} // ends for
		return exbtInfoList;
	}
}
