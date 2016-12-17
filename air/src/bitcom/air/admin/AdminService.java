package bitcom.air.admin;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import bitcom.air.review.Review;
import bitcom.air.review.ReviewDAO;
@Controller
public class AdminService {

	@RequestMapping(value="/viewReviewListAdmin.do")
	public ModelAndView viewReviewListAdmin() throws Exception{
		ModelAndView mav = new ModelAndView();
		ArrayList<Review> reviewList = ReviewDAO.selectReviewList();
		mav.addObject("rv",reviewList);
		mav.setViewName("/admin/viewReviewListAdmin.jsp");
		return mav;
	}
	
	@RequestMapping(value="/viewReviewAdmin.do")
	public ModelAndView viewReviewAdmin(@RequestParam(value="r_Num")int r_Num) throws Exception{
		ModelAndView mav = new ModelAndView();
		Review r = ReviewDAO.selectReview(r_Num);
		mav.addObject("r",r);
		mav.setViewName("/admin/viewReviewAdmin.jsp");
		return mav;
	}
	
	@RequestMapping(value="/deleteReview.do")
	public ModelAndView deleteReview(@RequestParam(value="r_Num")int r_Num) throws Exception{
		ModelAndView mav = new ModelAndView();
		// 삭제
		ReviewDAO.deleteReview(r_Num);
		System.out.println("ok");
		mav.setViewName("/air/viewReviewListAdmin.do");
		System.out.println("ok");
		return mav;
	}
}
