package com.nguyendt9.finalproj.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.beans.factory.annotation.Value;

@RestController
public class AppController {

	@GetMapping("/")
	public String index() {
		return "Greetings from Spring Boot!";
	}

}