package com.spring;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.been.SignUpBeen;
import com.services.LoginService;
import com.services.SignUpService;

@Controller
public class LoginSignupController 
{
	@RequestMapping(value="signup-page" ,method= RequestMethod.GET)
	public String sign( Model model )
	{
		return "signup";
	}
	@RequestMapping(value="login-page", method=RequestMethod.GET)
	public String log( Model model )
	{
		return "login";
	}
	@RequestMapping(value="signup", method=RequestMethod.POST)
	public String signup( Model model , @ModelAttribute("sign") SignUpBeen sign)
	{
		System.out.println("signup contr");
		int ret=-1;
		SignUpService ss=new SignUpService();
		ret=ss.registerUser(sign);
		if(ret==1)
		{
			return "home";
		}else
		return "signup";
	}
	@RequestMapping(value="login", method=RequestMethod.POST)
	public String login( Model model , @ModelAttribute("log") SignUpBeen log)
	{
		System.out.println("signup contr");
		int ret=-1;
		LoginService ls=new LoginService();
		ret=ls.loginUser(log);
		if(ret==1)
		{
			return "home";
		}else
		model.addAttribute("msg", "invalid username or password");
		return "login";
	}
}
