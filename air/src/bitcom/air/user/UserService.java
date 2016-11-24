package bitcom.air.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserService {
	@RequestMapping(value="/getUserInfo.do")
	public ModelAndView getUserInfo() throws Exception{
		ModelAndView mav = new ModelAndView();
		//mav.setViewName("/user/recommend.jsp");
		// 수정해야되
		System.out.println("why");
		return mav;
	}
	@RequestMapping(value="/generateDestination.do")
	public ModelAndView generateDestination() throws Exception{
		ModelAndView mav = new ModelAndView();
		//mav.setViewName("/user/recommend.jsp");
		// 수정해야되 
		System.out.println("why");
		return mav;
	}
	
	
	
	@RequestMapping(value="/start.do")
	public ModelAndView goindex() throws Exception{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/intro.jsp");
		return mav;
	}
	@RequestMapping(value="/main.do")
	public ModelAndView viewMain() throws Exception{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/user/recommend.jsp");
		System.out.println("why");
		return mav;
	}
}
