package main.src.java.util;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;

import org.json.simple.parser.JSONParser;
import org.springframework.stereotype.Component;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;



@Component
public class KakaoConnection {
	
	private String CLIENT_ID = "9b0e96d311c214cff6e6197588843451";
	private String REDIRECT_URI = "http://localhost:9090/member/kakaoLogin";
	private String GRANT_TYPE = "authorization_code";
	private String CLIENT_SECRET = "pFKIzDE5f9onmE5bdyBL9oiwaD3QGxnz";
	private String KAKAOURL= "https://kauth.kakao.com/oauth/token";
	private String KAKAOGETUSERURL = "https://kauth.kakao.com/v2/user/me";
	
	public String getAccessToken(String code) {
		String access_token = "";
		String refresh_token ="";
		try {
			URL url = new URL(KAKAOURL);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("POST");
			
			//URL 연결을 출력용으로 사용하려는 경우 true로 설정하고, 그렇지 않은 경우는 false로 설정
			//기본값은 false
			conn.setDoOutput(true);
			
			BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
			StringBuilder sb = new StringBuilder();
			sb.append("grant_type="+GRANT_TYPE);
			sb.append("&client_id="+CLIENT_ID);
			sb.append("&redirect_uri="+REDIRECT_URI);
			sb.append("&client_secret="+CLIENT_SECRET);
			sb.append("&code="+code);
			String param = sb.toString();
			
			bw.write(param);
			bw.flush();
			int response = conn.getResponseCode();
			System.out.println("로그인 통신 상태 : " + response);
			
			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            String line = "";
            String result = "";
            
            while ((line = br.readLine()) != null) {
                result += line;
            }
            System.out.println("response body : " + result);
            JsonElement ele = JsonParser.parseString(result);
            access_token = ele.getAsJsonObject().get("access_token").getAsString();
            refresh_token = ele.getAsJsonObject().get("refresh_token").getAsString();
            
            br.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return refresh_token;
	}
	public HashMap<String, Object> getUserInfo(String access_token) throws IOException {
		URL url = new URL(KAKAOGETUSERURL);
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		
		conn.setRequestMethod("POST");
		conn.setRequestProperty("Authorization", "Bearer " + access_token);
        System.out.println("Authorization:" + "Bearer " + access_token);
        int response = conn.getResponseCode();
		System.out.println("사용자정보 통신 상태 : " + response);
		String responseMsg = conn.getResponseMessage();
        System.out.println("responseCode : " + response);
        System.out.println("responseMsg : " + responseMsg);
        
        BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
        
		return null;
	}
	
	
	
}
