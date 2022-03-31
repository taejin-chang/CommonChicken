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
		
		/*
		String prdAmountList[] = request.getParameterValues("ordprdamount");
		List<String> amountList = new ArrayList<String>();
		for(String ordprdamount : prdAmountList) {
			amountList.add(ordprdamount);
		}
		*/
		List<String> amountList = new ArrayList<String>();
		
		String prdAmount[] = request.getParameterValues("ordprdamount");
		for(String prdAm : prdAmount) {
			amountList.add(prdAm);
		}
		
		//int[] prdAmountList = new int[prdAmount.length];
		
		//for(int i=0; i<prdAmount.length; i++) {
		//	prdAmountList[i] = Integer.parseInt(prdAmount[i]);
		//}
		
		//amountList.toArray(prdAmountList);
		
		model.addAttribute("productList", productService.getProduct(returnMap));
		model.addAttribute("amountList", amountList);
		model.addAttribute("ordertotal", map.get("ordertotal"));
		model.addAttribute("cmNum", cmNum);

		//model.addAttribute("cmNum", map.get("cmNum"));
		//model.addAttribute("prdCodeList", prdCodeList);
		//model.addAttribute("stoPayment", map.get("stoPayment"));
		return "order/order";
	}
	
	@PostMapping("/payment")
	public String orderSuccess(Model model, HttpServletRequest request, @RequestParam String cmNum, @ModelAttribute OrderDTO order) {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		String prdCodeList[] = request.getParameterValues("prdCode");
		List<String> productList = new ArrayList<String>();
		for(String prdCode : prdCodeList) {
			productList.add(prdCode);
		}
		/*
		String prdAmount[] = request.getParameterValues("prdAmount");
		List<String> prdAmountList = new ArrayList<String>();
		for(String prdAM : prdAmount) {
			prdAmountList.add(prdAM);
		}
		*/
		
		String prdAmount[] = request.getParameterValues("prdAmount");
		List<String> prdAmountList = new ArrayList<String>();
		for(String prdAM : prdAmount) {
			prdAmountList.add(prdAM);
		}
		 
		
		/*
		String prdAmount[] = request.getParameterValues("prdAmount");
		List<String> prdAmountList1 = new ArrayList<String>();

		int[] prdAmountList = new int[prdAmountList1.size()];
		
		for(int i=0; i<prdAmount.length; i++) {
			prdAmountList[i] = Integer.parseInt(prdAmount[i]);
		}*/
		
		String ordBundleNum = System.currentTimeMillis()+"";
		//String ordBundleNum = "들어가라";
		model.addAttribute("cmNum", cmNum);
		model.addAttribute("prdCodelist", productList);
		model.addAttribute("amountList", prdAmountList);
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
			OrderDTO orderNew = new OrderDTO();
			orderNew.setPrdCode(productList.get(i));
			System.out.println(productList.get(i));
			orderNew.setOrdQuantity("0");
			System.out.println(prdAmountList.get(i));
			
			orderNew.setOrdBundleNum(ordBundleNum);
			orderService.insertOrder(order);
		}
		
		return "payment/payment_alert";
	}
}
