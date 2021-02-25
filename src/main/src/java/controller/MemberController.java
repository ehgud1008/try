package main.src.java.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import main.src.java.service.MemberService;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@PostMapping("/login")
	public String login(HttpServletRequest request, HttpServletResponse response) {
		String id = "";
		String pw = "";
		try {
			id = (String)request.getParameter("input_id");
			pw = (String)request.getParameter("input_pw");
			
			if(memberService.login(id, pw)) return "/main/main";
			else return "index";
		}catch (Exception e) {
			e.printStackTrace();
			return "index";
		}
	}
}
