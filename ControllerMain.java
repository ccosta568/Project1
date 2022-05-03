package com.costa.spring.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ControllerMain {

	@RequestMapping("/login")
	public String LoginMethod() {
		return "login";
	}
}
