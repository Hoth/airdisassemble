package bitcom.air.community;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class CommunityService {
	@RequestMapping(value="/viewReviewList.do")
	public ModelAndView viewReviewList() throws Exception{
		ModelAndView mav = new ModelAndView();
		ArrayList<Review> reviewList = CommunityDAO.selectReviewList();
		mav.addObject("rv",reviewList);
		mav.setViewName("/community/viewReviewList.jsp");
		return mav;
	}
	@RequestMapping(value="/viewReview.do")
	public ModelAndView viewReview(@RequestParam(value="r_Num")int r_Num) throws Exception{
		ModelAndView mav = new ModelAndView();
		Review r = CommunityDAO.selectReview(r_Num);
		mav.addObject("r",r);
		mav.setViewName("/community/viewReview.jsp");
		return mav;
	}
	@RequestMapping(value="/viewHot.do")
	public ModelAndView viewHot() throws Exception{
		ModelAndView mav = new ModelAndView();
		
		
		mav.setViewName("/community/viewHot.jsp");
		return mav;
	}
	@RequestMapping(value="/viewStar.do")
	public ModelAndView viewStar() throws Exception{
		ModelAndView mav = new ModelAndView();
		
		
		mav.setViewName("/community/viewStar.jsp");
		return mav;
	}
	@RequestMapping(value="/enrollReview.do")
	public ModelAndView enrollReview() throws Exception{
		ModelAndView mav = new ModelAndView();
		
		
		mav.setViewName("/community/EnrollReviewForm.jsp");
		return mav;
	}
}
