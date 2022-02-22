package com.nas.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nas.domain.ParamContents;
import com.nas.service.FvService;

@RequestMapping(value = "fv/")
@Controller
public class FvController {
	@Autowired
	FvService fs;	

	
	@GetMapping(value = "/nasfv01")
	public String nasfv01(Model model, @RequestParam String numOfRows, @RequestParam String location ) {
		System.out.println("GET");
		System.out.println(numOfRows.toString()+ " / "+location.toString());
		model.addAttribute("list", fs.getAll(numOfRows.toString(), location.toString() ));
		model.addAttribute("location", location.toString());
		
		return "fv/nasfv01";
	}

//	@PostMapping(value = "/nasfv01")
//	public String nasfv01Post(Model model, HttpServletRequest request, HttpServletResponse response) {
////		System.out.println(numOfRows.toString()+ " / "+location.toString());
//		model.addAttribute("list", fs.getAll(request.getParameter("numOfRows").toString(), request.getParameter("location").toString() ));
//		return "fv/nasfv01";
//	}
	@ResponseBody // json으로 뿌려서 하고싶은데 방법을 모르겠땅...
	@PostMapping(value = "/nasfv01_2")
	public List<Object> nasfv01Post2(Model model,@RequestBody ParamContents param,  HttpServletRequest request) {
		System.out.println("POST -> "+ param.getLocation() +" / "+param.getNumOfRows());
		return fs.getAll(param.getNumOfRows(), param.getLocation());
	}

	@GetMapping(value = "/nasfv02")
	public String nasfv02(Model model, @RequestParam String contentid, @RequestParam String contentTypeId) {
		model.addAttribute("list1", fs.getOne1(contentid, contentTypeId).get(0));
		model.addAttribute("list2", fs.getOne2(contentid, contentTypeId).get(0));
		return "fv/nasfv02";
	}

}
