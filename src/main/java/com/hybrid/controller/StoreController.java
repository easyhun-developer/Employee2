package com.hybrid.controller;

import java.rmi.activation.ActivationGroupDesc.CommandEnvironment;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


import com.hybrid.command.MemberCommand;
import com.hybrid.command.StoreCommand;
import com.hybrid.model.Member;
import com.hybrid.model.MemberList;
import com.hybrid.model.MemberPage;
import com.hybrid.model.Store;
import com.hybrid.model.StoreList;
import com.hybrid.model.StorePage;
import com.hybrid.service.CityDetailService;
import com.hybrid.service.CityUnRegisterService;
import com.hybrid.service.MemberDetailService;
import com.hybrid.service.MemberListService;
import com.hybrid.service.MemberModifyService;
import com.hybrid.service.MemberPageService;
import com.hybrid.service.MemberRegisterService;
import com.hybrid.service.MemberUnRegisterService;
import com.hybrid.service.StoreDetailService;
import com.hybrid.service.StoreListService;
import com.hybrid.service.StoreModifyService;
import com.hybrid.service.StorePageService;
import com.hybrid.service.StoreRegisterService;
import com.hybrid.service.StoreUnRegisterService;
import com.hybrid.util.Pagination;

@Controller
@RequestMapping("/store")
public class StoreController {
	static Log log = LogFactory.getLog(StoreController.class);

	@Autowired	// 필드 주입
	StoreListService storeListService;
	
	@Autowired
	StorePageService storePageService;
	
	@Autowired
	StoreRegisterService storeRegisterService;
	
	@Autowired
	StoreModifyService storeModifyService;
	
	@Autowired
	StoreDetailService storeDetailService;
	
	@Autowired
	StoreUnRegisterService storeUnRegisterService;
	
	/*
	 * main.html
	 */
	@RequestMapping(value="/main.html", method=RequestMethod.GET)
	public String getMainView() {
		log.info("getMainView()...");
		
		return "store/main";
	}
	/*
	 * list.html
	 */
	@RequestMapping(value="/list.html", method=RequestMethod.GET)
	public String getListView() {
		log.info("getListView()...");
		
		return "store/list";
	}
	/*
	 * detail.html
	 */
	@RequestMapping(value="/detail.html", method=RequestMethod.GET)
	public String getDetailView() {
		log.info("getDetailView()...");
		
		return "store/detail"; 
	}
	/*
	 * append.html
	 */
	@RequestMapping(value="/append.html", method=RequestMethod.GET)
	public String getAppendView() {
		log.info("getAppendView()...");
		
		return "store/append"; 
	}
	
	/*
	 * modify.html
	 */
	@RequestMapping(value="/modify.html", method=RequestMethod.GET)
	public String getModifyView() {
		log.info("getModifyView()...");
		
		return "store/modify"; 
	}
	
	/*
	 * delete.html
	 */
	@RequestMapping(value="/delete.html", method=RequestMethod.GET)
	public String getDeleteView() {
		log.info("getDeleteView()...");
		
		return "store/delete"; 
	}
	
	/*
	 *  URL_GET_LIST = [/city] or [/city/]
	 *  Accept = application/json
	 */
	@RequestMapping(value={"", "/"}, method=RequestMethod.GET)
	@ResponseBody
	public StoreList getStoreAll() {
		log.info("getStoreAll()...");
		
		StoreList list = storeListService.getList();
		
		return list;
	}
	
	/*
	 * URL_GET_ITEM_BASE = [/city/{id}]
	 * Accept = application/json
	 */
	@RequestMapping(value="/{id:[0-9]+}", method=RequestMethod.GET)
	@ResponseBody
	public Store getStoreItem(@PathVariable int id) {
		log.info("getStoreItem()... id=" + id);
		
		Store store = storeDetailService.detail(id);
		
		return store;
	}
	
	/*
	 *  URL_GET_PAGE_BASE = [/city/page/{pageNo}]
	 *  Accept = application/json
	 */	
	@RequestMapping(value="/page/{pageNo:[0-9]+}", method=RequestMethod.GET)
	@ResponseBody
	public StorePage getStorePage(@PathVariable int pageNo) {
		log.info("getStorePage()... pageNo = " + pageNo);
		
		StorePage page = storePageService.getPage(pageNo);
		
		return page;
	}
	/*
	 * 	URL_POST_ITEM_APPEND = [/city] or [/city/]
	 *  Accept = application/json
	 */
	@RequestMapping(value={"", "/"}, method=RequestMethod.POST)
	@ResponseBody
	public StoreCommand postStoreAppend(@RequestBody StoreCommand command) {
		log.info("postStoreAppend()... store id = " + command.getId());
		
		command.validate();
		
		if (!command.isValid()) {
			// throw 
		}
		
		int id = storeRegisterService.regist(command.getStore());
		command.setId(id);
		
		return command;
	}
	/*
	 * 	URL_PUT_ITEM_MODIFY = [/city/{id}]
	 *  Accept = application/json
	 */
	@RequestMapping(value="/{id:[0-9]+}", method=RequestMethod.PUT)
	@ResponseBody
	public StoreCommand putStoreModify(@PathVariable int id, @RequestBody StoreCommand command) {
		log.info("putStoreModify()... id = " + id);
		log.info("putStoreModify()... store id = " + command.getId());
		
		storeModifyService.modify(command.getStore());
		
		return command;
	}
	
	/*
	 * 	URL_DELETE_ITEM_DELETE = [/city/{id}]
	 *  Accept = application/json
	 */
	@RequestMapping(value="/{id:[0-9]+}", method=RequestMethod.DELETE)
	@ResponseBody
	public void deleteStore(@PathVariable int id) {
		log.info("deleteStore()... id = " + id);
		
		storeUnRegisterService.unregist(id);
	}	
}
