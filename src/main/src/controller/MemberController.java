package main.src.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import main.src.service.MemberService;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping("/login")
	public String login(HttpServletRequest request, HttpServletResponse response) {
		String id = "";
		String pw = "";
		try {
			id = (String)request.getParameter("input_id");
			pw = (String)request.getParameter("input_pw");
			
			memberService.login(id, pw);
			return "main/main";
		}catch (Exception e) {
			e.printStackTrace();
			return "/";
		}
	}
}
