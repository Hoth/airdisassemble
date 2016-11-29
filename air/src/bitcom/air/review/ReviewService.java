package bitcom.air.review;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class ReviewService {
	@RequestMapping(value="/viewReviewList.do")
	public ModelAndView viewReviewList() throws Exception{
		ModelAndView mav = new ModelAndView();
		ArrayList<Review> reviewList = ReviewDAO.selectReviewList();
		mav.addObject("rv",reviewList);
		mav.setViewName("/community/viewReviewList.jsp");
		return mav;
	}
	@RequestMapping(value="/viewReview.do")
	public ModelAndView viewReview(@RequestParam(value="r_Num")int r_Num) throws Exception{
		ModelAndView mav = new ModelAndView();
		Review r = ReviewDAO.selectReview(r_Num);
		mav.addObject("r",r);
		mav.setViewName("/community/viewReview.jsp");
		return mav;
	}
	@RequestMapping(value="/addReviewForm.do")
	public ModelAndView addReviewForm() throws Exception{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/community/addReviewForm.jsp");
		return mav;
	}
	@RequestMapping(value="/addReview.do")
	public ModelAndView addReview(@RequestParam(value="Review")Review review)throws Exception{
		ModelAndView mav=new ModelAndView();
		if(review.r_Title==null){
			mav.addObject("ERROR","제목을 입력하세요.");
			mav.setViewName("/forward:/addReviewForm.do");
		}
		ReviewDAO.insertReview(review);
		mav.setViewName("forward:/viewReviewList.do");
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

}
