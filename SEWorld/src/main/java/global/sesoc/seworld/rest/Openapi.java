package global.sesoc.seworld.rest;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

public class Openapi {
	public static void main(String[] args) throws Exception {
		CallRestWS callRestWS = new CallRestWS();
		String result = callRestWS.restClient();
		System.out.println(result);
		result.replace("&#034;", "\"\"");
		System.out.println(result);
//		JSONParser jsonParser = new JSONParser();
//		JSONObject jsonObject = (JSONObject) jsonParser.parse(result);
//		JSONArray jsonArray = (JSONArray) jsonObject.get("overseasExhibitionListArray");
//		System.out.println(jsonArray.toArray());
//		
//		try {
//			JSONParser jsonParser = new JSONParser();
//			JSONObject jsonObj = (JSONObject) jsonParser.parse(result);
//			JSONArray oela = (JSONArray) jsonObj.get("overseasExhibitionListArray");
//
//			System.out.println("=====Members=====");
//			for (int i = 0; i < oela.size(); i++) {
//				JSONObject tempObj = (JSONObject) oela.get(i);
//				System.out.println("" + (i + 1) + "번째 exhibitionTitleKor" + tempObj.get("exhibitionTitleKor"));
//				System.out.println("----------------------------");
//			}
//		} catch (ParseException e) {
//			e.printStackTrace();
//		}
//		
//		System.out.println("??");
	}
}
