package com.commonchicken.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.commonchicken.service.ProductService;

@Controller
public class OrderController {
	
	@Autowired
	private ProductService productService;
	
	//메인페이지에서 헤더메뉴를 통해 들어온 상세페이지
	@PostMapping("/order")
	public String orderMain(@RequestParam Map<String, Object> map, Model model, HttpServletRequest request) {
		Map<String, Object> returnMap = new HashMap<String, Object>();

		String prdCodeList[] = request.getParameterValues("prdCode");
		List<String> productList = new ArrayList<String>();
		for(String prdCode : prdCodeList) {
			productList.add(prdCode);
		}
		System.out.println(productList);
		returnMap.put("prdCodelist", productList);
		
		/*
		String prdAmountList[] = request.getParameterValues("ordprdamount");
		List<String> amountList = new ArrayList<String>();
		for(String ordprdamount : prdAmountList) {
			amountList.add(ordprdamount);
		}
		*/
		List<String> amountList = new ArrayList<String>();
		
		String prdAmount[] = request.getParameterValues("ordprdamount");
		int[] prdAmountList = new int[prdAmount.length];
		
		for(int i=0; i<prdAmount.length; i++) {
			prdAmountList[i] = Integer.parseInt(prdAmount[i]);
		}
		
		//amountList.toArray(prdAmountList);
		
		model.addAttribute("productList", productService.getProduct(returnMap));
		model.addAttribute("amountList", prdAmountList);
		model.addAttribute("ordertotal", map.get("ordertotal"));
		//model.addAttribute("cmNum", map.get("cmNum"));
		//model.addAttribute("prdCodeList", prdCodeList);
		//model.addAttribute("stoPayment", map.get("stoPayment"));
		//model.addAttribute("ordprdname", map.get("ordprdname"));
		//model.addAttribute("ordprdprice", map.get("ordprdprice"));
		//model.addAttribute("ordprdamount", map.get("ordprdamount"));
		return "order/order";
	}
	
	@PostMapping("/payment")
	public String orderSuccess(@RequestParam Map<String, Object> map, Model model, HttpServletRequest request) {
		
		
		return "payment/payment_alert";
	}
}
