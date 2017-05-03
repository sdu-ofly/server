package com.ofly.ep.admin.test.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/test")
public class TestController {
	private static final Logger logger = LogManager.getLogger(TestController.class);

	@RequestMapping("/init")
	public String init() {
		logger.error("en --");
		return "test/init";
	}
}
