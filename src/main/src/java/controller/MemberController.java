package main.src.java.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import main.src.java.service.MemberService;
import main.src.java.util.KakaoConnection;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private KakaoConnection	kakao;
	
	@PostMapping("/login")
	public String login(HttpServletRequest request, HttpServletResponse response) {
		String id = "";
		String pw = "";
		try {
			id = (String)request.getParameter("input_id");
			pw = (String)request.getParameter("input_pw");
			
			if(memberService.login(id, pw)) return "main/main";
			else return "index";
		}catch (Exception e) {
			e.printStackTrace();
			return "index";
		}
	}
	
	@GetMapping("/loginSuccess")
	public String loginSuccess(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("ddd");
		return "main/main";
	}
	
	@RequestMapping("/kakaoLogin")
	public String kakaoLogin(@RequestParam("code") String code) throws IOException {
		System.out.println("Ä«Ä«¿À code = " + code);
		String access_token = kakao.getAccessToken(code);
		HashMap<String, Object> userInfo = kakao.getUserInfo(access_token);
		System.out.println(userInfo);
		return "main/main";
	}
	
}
