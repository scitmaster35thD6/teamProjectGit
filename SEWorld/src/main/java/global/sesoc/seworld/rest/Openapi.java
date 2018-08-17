package global.sesoc.seworld.rest;

public class Openapi {
	public static void main(String[] args) throws Exception {
//		CallRestWS callRestWS = new CallRestWS();
//		String result = callRestWS.restClient();
//		String result2 = Jsoup.parse(callRestWS.restClient()).text();
//		System.out.println(result);
//		System.out.println(result2);
		
		XmlParsingTest xmlParsingTest = new XmlParsingTest();
		xmlParsingTest.parse();
	}
}
