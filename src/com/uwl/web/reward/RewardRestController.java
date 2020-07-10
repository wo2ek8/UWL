package com.uwl.web.reward;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.uwl.common.Page;
import com.uwl.common.Search;
import com.uwl.service.challenge.ChallengeService;
import com.uwl.service.domain.Challenge;
import com.uwl.service.domain.Purchase;
import com.uwl.service.domain.Reward;
import com.uwl.service.domain.User;
import com.uwl.service.purchase.PurchaseService;
import com.uwl.service.reward.RewardService;

@RestController
@RequestMapping("/reward/*")
public class RewardRestController {
	
	//Field
	@Autowired
	@Qualifier("rewardServiceImpl")
	private RewardService rewardService;
	
	@Autowired
	@Qualifier("purchaseServiceImpl")
	private PurchaseService purchaseService;
	
	@Autowired
	@Qualifier("challengeServiceImpl")
	private ChallengeService challService;
	
	@Value("#{commonProperties['pageUnit']}")
	int pageUnit;
	//@Value("#{commonProperties['pageSize']}")
	int pageSize;
	@Value("#{commonProperties['price']}")
	int price;
	
	@Value("#{commonProperties['spear']}")
	String spear;
	@Value("#{commonProperties['shield']}")
	String shield;
	
	
	private User user;
	
	//session 검증작업 User getter, setter
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}


	//Constructor
	public RewardRestController() {
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	//GET / POST 둘 다
	//@RequestMapping(value = "getUserBothPointList/{reward}")
	//@ModelAttribute("user") User user
 	@RequestMapping(value = "rest/listRewardCheck", method = RequestMethod.POST)
	public Map getUserBothPointList(@RequestBody Search search,HttpSession session ) throws Exception{
 		//page사이즈를 10을 setting
 		pageSize = 10;
 		System.out.println("rest/Reward/getUserBothPointList : POST ");
		
		user = (User)session.getAttribute("user");
		
		if (search.getCurrentPage() == 0) {
			search.setCurrentPage(1);
		}
		search.setPageSize(pageSize);
		
		System.out.println("listRewardCheck user: " + user);
		
		Purchase purchaseItem = new Purchase();
		
		Map<String, Object> challMap = challService.getCompleteChallengeList(search, user.getUserId());
		
		System.out.println("challMap : " + challMap);
		
		//Challenge challenge = new Challenge();
		
		//reawrd set
		Reward reward = new Reward();
		reward.setUserId(user.getUserId());
		Map<String, Object> map = rewardService.getUserBothPointList(search, reward);
		System.out.println("RewardController getUserBothPointList()의 Map : " + map);
		
		List<Reward> totalList = (List<Reward>)(map.get("list"));
		System.out.println("========================>>>> reward map : " + map);
		
		reward.setUserId(user.getUserId());
		reward.setPurchaseItem(purchaseItem);
		
		//List에 담긴정보가 아예 없다면
		if (totalList.size() == 0) {
			System.out.println("totalList.size()가 0인 if문에 접근함 ");
			reward.setRecentlyTotalPoint(0);
			reward.setRecentlyTotalActivityPoint(0);
		}else {
			System.out.println("totalList null이 아닌 if문에 접근함 ");
			reward.setRecentlyTotalPoint(totalList.get(0).getRecentlyTotalPoint());
			reward.setRecentlyTotalActivityPoint(totalList.get(0).getRecentlyTotalActivityPoint());
		}
		
		
		System.out.println("===============================================");
		System.out.println("RewardController의 reward : " + reward);
		System.out.println("===============================================");
		
		Page resultPage = new Page(search.getCurrentPage(), ((Integer)map.get("totalCount")).intValue(), pageUnit, pageSize);
		System.out.println("포인트목록보기 resultPage : " + resultPage);
		
		//getUserPurchaseList()로직을 돌리기전에 purchase Id를 세팅해줘서 getUserBothPointList과 다른 쿼리가 나오게 설정
		purchaseItem.setUserId(user.getUserId());
		
		/////////////////////////////////////////////////////////////////////////////
		Map<String, Object> purchaseMap = rewardService.getUserPurchaseList(search, reward);
		System.out.println("=============>>>>" + purchaseMap);
		System.out.println("RewardController getUserPurchaseList()의 Map : " + map);
		Page purchaseResultPage = new Page(search.getCurrentPage(), ((Integer)purchaseMap.get("totalCount")).intValue(), pageUnit, pageSize);
		System.out.println("포인트목록보기 purchaseResultPage : " + purchaseResultPage);
		
		System.out.println("RewardController reward 토탈카운트 전 ===>" + reward);
		Reward totalPointReward = rewardService.getTotalPoint(user.getUserId());
		//reward.setUserId(user.getUserId());
		System.out.println("RewardController totalPointReward 토탈카운트 후 ===>" + totalPointReward);
		
		
		System.out.println("rewardController map.get(\"list\") : " + map.get("list"));
		System.out.println("rewardController Reward : " + reward);
		
		System.out.println("rewardController purchaseMap.get(\"list\") : " + purchaseMap.get("purchaselist"));
		
		//포인트사용내역 model addAttribute
		
		System.out.println("price : " + price);
		
		map.put("resultPage", resultPage);
		map.put("search", search);
		
		return map;
		
		
	}
 	
 	@RequestMapping(value = "rest/listPurchaseCheck", method = RequestMethod.POST)
 	public Map getpurchasePointList(@RequestBody Search search,HttpSession session ) throws Exception{
 		
 		//page사이즈를 10을 setting
 		pageSize = 10;
 		System.out.println("rest/Reward/getpurchasePointList : POST ");
 		
 		user = (User)session.getAttribute("user");
 		
 		if (search.getCurrentPage() == 0) {
 			search.setCurrentPage(1);
 		}
 		search.setPageSize(pageSize);
 		
 		System.out.println("listRewardCheck user: " + user);
 		
 		//얘의 정보를 넣어주셈
 		Map<String, Object> temPurcha = purchaseService.getPurchaseList(user.getUserId(), search);
 		List<Purchase> temList = (List<Purchase>) temPurcha.get("list");
 		System.out.println("=================><<<<<>>>>>> : " + temList);
 		
 		Purchase purchaseItem = new Purchase();
 		purchaseItem.setPurchaseNo(temList.get(0).getPurchaseNo());
 		
 		Map<String, Object> challMap = challService.getCompleteChallengeList(search, user.getUserId());
 		
 		System.out.println("challMap : " + challMap);
 		
 		//Challenge challenge = new Challenge();
 		
 		//reawrd set
 		Reward reward = new Reward();
 		reward.setUserId(user.getUserId());
 		reward.setUserId(user.getUserId());
 		reward.setPurchaseItem(purchaseItem);
 		
 		//List에 담긴정보가 아예 없다면
 		
 		
 		System.out.println("===============================================");
 		System.out.println("RewardController의 reward : " + reward);
 		System.out.println("===============================================");
 		
 		
 		//getUserPurchaseList()로직을 돌리기전에 purchase Id를 세팅해줘서 getUserBothPointList과 다른 쿼리가 나오게 설정
 		purchaseItem.setUserId(user.getUserId());
 		
 		/////////////////////////////////////////////////////////////////////////////
 		Map<String, Object> purchaseMap = rewardService.getUserPurchaseList(search, reward);
 		List<Reward> list = (List<Reward>) purchaseMap.get("list");
 		
 		System.out.println("====>>>>>>>>>>>> : " + list);
 		
 		System.out.println("=============>>>>" + purchaseMap);
 		Page purchaseResultPage = new Page(search.getCurrentPage(), ((Integer)purchaseMap.get("totalCount")).intValue(), pageUnit, pageSize);
 		System.out.println("포인트목록보기 purchaseResultPage : " + purchaseResultPage);
 		
 		System.out.println("RewardController reward 토탈카운트 전 ===>" + reward);
 		Reward totalPointReward = rewardService.getTotalPoint(user.getUserId());
 		//reward.setUserId(user.getUserId());
 		System.out.println("RewardController totalPointReward 토탈카운트 후 ===>" + totalPointReward);
 		
 		
 		System.out.println("rewardController Reward : " + reward);
 		
 		
 		//포인트사용내역 model addAttribute
 		
 		System.out.println("price : " + price);
 		
 		purchaseMap.put("resultPage", purchaseResultPage);
 		purchaseMap.put("search", search);
 		purchaseMap.put("list", list);
 		
 		System.out.println("rewardController temList : " + list);
 		System.out.println("rewardController purchaseMap.get(\"list\") : " + purchaseMap.get("list"));
 		System.out.println("rewardController purchaseMap.get(\"list\") : " + purchaseMap);
 		
 		return purchaseMap;
 		
 	}
	
	
	
	
	

}
