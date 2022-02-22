package com.nas.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nas.mapper.NasDao;
import com.nas.service.FvServiceImpl;

import apiTest.test.GetApi;
import apiTest.test.GetApi.SvcName;
import apiTest.vo.RequestCommon;
import apiTest.vo.ResponseCommon;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired
	NasDao dao;	
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		model.addAttribute("time", dao.time());
		return "home";
	}
	
}
