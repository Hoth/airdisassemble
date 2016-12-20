package bitcom.air.search;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class SearchService {
	@RequestMapping(value="/viewExchangeRate.do")
	ModelAndView viewExchangeRate() throws Exception{
		ModelAndView mav = new ModelAndView();
		// 환율처리 어디서 할지 몰라~
		
		mav.setViewName("/Search/viewExchangeRate.jsp");
		return mav;
		
	}
		
	@RequestMapping(value="/viewExchange.do")
	ModelAndView viewExchange(@RequestParam(value="exchangerate")String exchangerate) throws Exception{
		ModelAndView mav = new ModelAndView();
		// 환율처리 어디서 할지 몰라~
		String inputtext = exchangerate;
		//System.out.println(inputtext+"!");
		ArrayList<String> arr = crawler.exchange(inputtext);
		System.out.println(arr.get(0));
		System.out.println(arr.get(1));
		System.out.println(arr.get(2));
		mav.addObject("exarr",arr);
		mav.setViewName("/Search/viewExchangeRate.jsp");
		return mav;
		
	}
		
		
	@RequestMapping(value="/search.do")
	ModelAndView search() throws Exception{
		ModelAndView mav = new ModelAndView();
		// 환율처리 어디서 할지 몰라~
		
		mav.setViewName("/Search/search.jsp");
		return mav;
		
	}
}
