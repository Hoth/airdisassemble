package bitcom.air.review;

import java.io.File;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class ReviewService {
	@RequestMapping(value="/viewReviewList.do")
	public ModelAndView viewReviewList(@RequestParam(value="order",defaultValue="1")int order) throws Exception{
		ModelAndView mav = new ModelAndView();
		ArrayList<Review> reviewList=null;
		if(order==1){
			reviewList= ReviewDAO.selectReviewList();
		}else if(order==3){
			reviewList= ReviewDAO.selectReviewList_Star();
		}else
			reviewList= ReviewDAO.selectReviewList_Star_Desc();
		
		mav.addObject("rv",reviewList);
		mav.setViewName("/review/viewReviewList.jsp");
		return mav;
	}

	@RequestMapping(value="/viewReviewList_Star.do")
	public ModelAndView viewReviewList_Star() throws Exception{
		ModelAndView mav = new ModelAndView();
		ArrayList<Review> reviewList = ReviewDAO.selectReviewList_Star();
		mav.addObject("rv",reviewList);
		mav.setViewName("/review/viewReviewList.jsp");
		return mav;
	}
	@RequestMapping(value="/viewReviewList_Star_Desc.do")
	public ModelAndView viewReviewList_Star_Desc() throws Exception{
		ModelAndView mav = new ModelAndView();
		ArrayList<Review> reviewList = ReviewDAO.selectReviewList_Star();
		mav.addObject("rv",reviewList);
	
		mav.setViewName("/review/viewReviewList.jsp");
		return mav;
	}
	@RequestMapping(value="/viewReview.do")
	public ModelAndView viewReview(@RequestParam(value="r_Num")int r_Num) throws Exception{
		ModelAndView mav = new ModelAndView();
		Review r = ReviewDAO.selectReview(r_Num);
		mav.addObject("r",r);
		mav.setViewName("/review/viewReview.jsp");
		return mav;
	}
	@RequestMapping(value="/addReviewForm.do")
	public ModelAndView addReviewForm() throws Exception{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/review/addReviewForm.jsp");
		return mav;
	}
	@RequestMapping(value="/addReview.do")
	   public ModelAndView addReview(Review review,@RequestParam(value="file") MultipartFile file)throws Exception{
	      ModelAndView mav=new ModelAndView();
	      if(review.r_Title==null){
	         mav.addObject("ERROR","제목을 입력하세요.");
	         mav.setViewName("/forward:/addReviewForm.do");
	      }
	      
	      String uploadPath = "C:/Users/bit-user/git/airdisassemble/air/WebContent/photo";
	      File destFile=new File(uploadPath+"/"+file.getOriginalFilename());
	      file.transferTo(destFile);
	      review.r_Image = file.getOriginalFilename();
	      ReviewDAO.insertReview(review);
	      String season=null;
	      switch(review.r_Season){
	      case "spring":{
	    	  season="881";
	      }
	      case "summer":{
	    	  season="882";
	      }
	      case "fall":{
	    	  season="883";
	      }
	      case "winter":{
	    	  season="884";
	      }
	      }
	      String data="\'"+review.r_Gender+"\',"+"\'"+review.r_Age+"\',"+"\'"+season+"\',"+" ? ,"+"? , ? ,\'"+review.r_Continent+"\'\n";
	      String data2="\'"+review.r_Continent+"\',\'"+review.r_Location+"\'\n";
	      System.out.println(data);
	      PrintWriter fw=new PrintWriter(new FileWriter("C:/data/data_continent.arff",true));
	      fw.print(data);
	      fw.close();
	      PrintWriter fw2=new PrintWriter(new FileWriter("C:/data/data_country.arff",true));
	      fw2.print(data2);
	      fw2.close();
	      mav.setViewName("/review/addsuccess.jsp");
	      return mav;
	      
	   }
	@RequestMapping(value="/addsuccess.do")
	public ModelAndView addsuccess() throws Exception{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/review/addsuccess.jsp");
		return mav;
	}
	@RequestMapping(value="/viewHot.do")
	public ModelAndView viewHot() throws Exception{
		ModelAndView mav = new ModelAndView();
		
		ArrayList best = hana.run();
		mav.addObject("best",best);
		
		mav.setViewName("/review/viewHot.jsp");
		return mav;
	}
	@RequestMapping(value="/viewStar.do")
	public ModelAndView viewStar() throws Exception{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/review/viewStar.jsp");
		return mav;
	}

}
