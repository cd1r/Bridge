package com.bridge.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.bridge.domain.PerformanceVO;
import com.bridge.service.PerformanceService;

//@RestController
@Controller
@RequestMapping("/*")
public class PerformanceController {
	
	@Inject
	private PerformanceService service;
	
	/*@RequestMapping(value = "/intro", method = RequestMethod.GET)
	public ResponseEntity<List<PerformanceVO>> readAllPerformance(){
		ResponseEntity<List<PerformanceVO>> entity = null;
		
		try{
			entity = new ResponseEntity(service.readAllPerformance(), HttpStatus.OK);
		} catch (Exception e){
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}*/
	
	@RequestMapping(value="/intro", method = RequestMethod.GET)
	public void intro(Model model) throws Exception{
		
		model.addAttribute("perfList", service.readAllPerformance());
		
	}
	
	@RequestMapping(value="/performance", method = RequestMethod.GET)
	public void readAPerformance(@RequestParam("perfId") int id, Model model) throws Exception{
		System.out.println(id);
		model.addAttribute("perfDesc", service.readAPerformance(id));
		
	}
}

