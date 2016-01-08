package com.hybrid.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.hybrid.command.StoreLoginCommand;
import com.hybrid.exception.StoreLoginFailException;
import com.hybrid.model.Store;
import com.hybrid.service.StoreLoginService;

@Controller
@RequestMapping("/user")
public class StoreLoginController {
	static Log log = LogFactory.getLog(StoreLoginController.class);

	@Autowired
	StoreLoginService storeloginService;

	/*
	 * storelogin.html
	 */
	@RequestMapping(value="/storelogin.html", method=RequestMethod.GET)
	public String getStoreLoginView(HttpSession session) {
		log.info("getStoreLoginView()...");
		
		return "user/storelogin";		
	}
	
	@RequestMapping(value = "/storelogin", method = RequestMethod.POST)
	@ResponseBody
	public StoreLoginCommand storelogin(@RequestBody StoreLoginCommand command, HttpSession session) {
		log.info("email = " + command.getEmail());
		log.info("password = " + command.getPassword());

		Store store = storeloginService.storelogin(command.getEmail(), command.getPassword());
		session.setAttribute("storelogin", true);
		session.setAttribute("store", store);

		return command;
	}

	@RequestMapping(value="/storelogout", method=RequestMethod.GET)
	public String logout(HttpSession session) {
		log.info("logout()...");
		
		session.invalidate();
		
	
		
		return "redirect:/user/storelogin.html";
//		return "redirect:/city/main.html";
	}
	
	@RequestMapping(value = "/storelogincheck", method=RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> storelogincheck(HttpSession session) {
		Map<String, Object> map = new HashMap<>();
		
		Boolean storelogin = (Boolean) session.getAttribute("storelogin");
		if (storelogin != null && storelogin == true) {
			map.put("storelogin", true);
			map.put("store", session.getAttribute("store"));
		} else {
			map.put("storelogin", false);
		}
		
		return map;
	}
	
	@ExceptionHandler
	@ResponseBody
	@ResponseStatus(HttpStatus.BAD_REQUEST)
	public Map<String, Object> storeloginfail(StoreLoginFailException e) {
		Map<String, Object> error = new HashMap<String, Object>();
		error.put("message", e.getMessage());

		return error;
	}

}
