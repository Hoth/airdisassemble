package bitcom.air.user;

import java.io.FileWriter;
import java.io.PrintWriter;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import bitcom.air.weka.WekaService;

@Controller
public class UserService {
	@RequestMapping(value="/getUserInfo.do")
	public ModelAndView getUserInfo() throws Exception{
		ModelAndView mav = new ModelAndView();
		//mav.setViewName("/user/recommend.jsp");
		// 수정해야되
		
		return mav;
	}
	@RequestMapping(value="/generateDestination.do")
	public ModelAndView generateDestination(User user) throws Exception{
		ModelAndView mav = new ModelAndView();

		String text = "\'"+user.sex+"\',"+"\'"+user.age+"\',"+"\'"+user.length+"\',"+"\'"+user.cost+"\',"+"\'"+user.company+"\',"+"\'"+user.season+"\',"+"?";
		System.out.println(text);
		PrintWriter  fw=new PrintWriter(new FileWriter("c:/data/newperson.arff",true));
		fw.println();
		fw.print(text);
		fw.close();
		WekaService service=new WekaService();
		String dest = service.wekaRun();
		System.out.println(dest);
		
		mav.addObject("dest", dest);
		mav.setViewName("/user/recommend.jsp"); 
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
		
		return mav;
	}
}
