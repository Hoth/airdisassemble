package bitcom.air.search;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
	@RequestMapping(value="/search.do")
	ModelAndView search() throws Exception{
		ModelAndView mav = new ModelAndView();
		// 환율처리 어디서 할지 몰라~
		
		mav.setViewName("/Search/search.jsp");
		return mav;
		
	}
}
