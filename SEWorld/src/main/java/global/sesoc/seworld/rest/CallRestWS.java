package global.sesoc.seworld.rest;

import java.io.InputStream;
import java.net.URL;
import org.apache.cxf.helpers.IOUtils;
import org.apache.cxf.io.CachedOutputStream;

public class CallRestWS {
	public String restClient() throws Exception {
		String addr = "http://www.gep.or.kr/rest/overseasExhibition?serviceKey=";
		String serviceKey = "FsLyT%2F7neLBzi2BSryIlrXTpjg68D44fUqCcl2PO%2B3R%2B8%2FCnikXdveIici4eMl7YiBOm5Is1JnEWJteh9ux0BA%3D%3D";
		String parameter = "";
//		serviceKey = URLEncoder.encode(serviceKey, "UTF-8"); // 인증키(서비스키) url인코딩
		parameter = parameter + "&" + "from=20180801";
		parameter = parameter + "&" + "to=20180831";
		parameter = parameter + "&" + "numOfRows=10";
		parameter = parameter + "&" + "pageNo=1";
		parameter = parameter + "&" + "type=json";
		addr = addr + serviceKey + parameter;
		System.out.println(addr);
		
		URL url = new URL(addr);
		InputStream in = url.openStream();
		CachedOutputStream bos = new CachedOutputStream();
		IOUtils.copy(in, bos);
		bos.close();
		in.close();
		String result = bos.getOut().toString();
		return result;
	}
}
