package com.commonchicken.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.commonchicken.dto.OrderDTO;
import com.commonchicken.service.OrderService;
import com.commonchicken.service.ProductService;

@Controller
public class OrderController {
	private static final Logger logger = LoggerFactory.getLogger(OrderController.class);

	@Autowired
	private ProductService productService;
	
	@Autowired
	private OrderService orderService;
	
	//메인페이지에서 헤더메뉴를 통해 들어온 상세페이지
	@PostMapping("/order")
	public String orderMain(@RequestParam Map<String, Object> map, Model model, HttpServletRequest request, String cmNum) {
		Map<String, Object> returnMap = new HashMap<String, Object>();

		String prdCodeList[] = request.getParameterValues("prdCode");
		
		List<String> productList = new ArrayList<String>();
		for(String prdCode : prdCodeList) {
			productList.add(prdCode);
		}
		System.out.println(productList);
		returnMap.put("prdCodelist", productList);
		
		List<String> amountList = new ArrayList<String>();
		
		String prdAmount[] = request.getParameterValues("ordprdamount");
		for(String prdAm : prdAmount) {
			amountList.add(prdAm);
		}
		/*
		List<String> prdNameList = new ArrayList<String>();
		
		String prdName[] = request.getParameterValues("prdName");
		for(String prdN : prdName) {
			prdNameList.add(prdN);
		}
		*/
		model.addAttribute("productList", productService.getProduct(returnMap));
		model.addAttribute("amountList", amountList);
		//model.addAttribute("prdnameList", prdNameList);
		model.addAttribute("ordertotal", map.get("ordertotal"));
		model.addAttribute("cmNum", cmNum);

		//model.addAttribute("cmNum", map.get("cmNum"));
		//model.addAttribute("prdCodeList", prdCodeList);
		//model.addAttribute("stoPayment", map.get("stoPayment"));
		return "order/order";
	}
	
	@PostMapping("/payment")
	public String orderSuccess(@RequestParam Map<String, Object> map, Model model, HttpServletRequest request, @RequestParam String cmNum, @ModelAttribute OrderDTO order) {
		Map<String, Object> returnMap = new HashMap<String, Object>();

		
		
		String prdCodeList[] = request.getParameterValues("prdCode");
		List<String> productList = new ArrayList<String>();
		for(String prdCode : prdCodeList) {
			productList.add(prdCode);
		}
		
		returnMap.put("prdCodelist", productList);
		
		String prdAmount[] = request.getParameterValues("prdAmount");
		List<String> prdAmountList = new ArrayList<String>();
		for(String prdAM : prdAmount) {
			prdAmountList.add(prdAM);
		}
		
		String ordBundleNum = System.currentTimeMillis()+"";
		model.addAttribute("cmNum", cmNum);
		model.addAttribute("memName", map.get("memName"));
		model.addAttribute("ordZipcode", map.get("ordZipcode"));
		model.addAttribute("ordAdd1", map.get("ordAdd1"));
		model.addAttribute("jibun", map.get("jibun"));
		model.addAttribute("ordAdd2", map.get("ordAdd2"));
		model.addAttribute("ordPhone", map.get("ordPhone"));
		model.addAttribute("ordRequest", map.get("ordRequest"));
		model.addAttribute("paymentMethod", map.get("paymentMethod"));
		model.addAttribute("prdCodelist", productList);
		model.addAttribute("amountList", prdAmountList);
		model.addAttribute("ordertotal", map.get("ordertotal"));
		model.addAttribute("productList", productService.getProduct(returnMap));

		/*
		model.addAttribute("ordZipcode", map.get("ordZipcode"));
		model.addAttribute("ordAdd1", map.get("ordAdd1"));
		model.addAttribute("ordAdd2", map.get("ordAdd2"));
		model.addAttribute("ordRequest", map.get("ordRequest"));
		model.addAttribute("ordPayMethod", map.get("paymentMethod"));
		*/
		//model.addAttribute("ordBundleNum", ordBundleNum);
		
		order.setOrdBundleNum(ordBundleNum);
		
		System.out.println(ordBundleNum);
		
		for(int i=0;i<prdAmount.length;i++) {
			//OrderDTO orderNew = new OrderDTO();
			//orderNew.setPrdCode(productList.get(i));
			order.setPrdCode(productList.get(i));
			System.out.println(productList.get(i));
			//orderNew.setOrdQuantity(prdAmountList.get(i));
			order.setOrdQuantity(prdAmountList.get(i));
			System.out.println(prdAmountList.get(i));
			
			order.setOrdBundleNum(ordBundleNum);
			orderService.insertOrder(order);
		}
		
		return "payment/payment_alert";
	}
}
