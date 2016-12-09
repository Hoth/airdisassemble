package bitcom.air.user;

import java.io.File;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.util.ArrayList;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
	public ModelAndView generateDestination(@RequestParam(value="age")String age,@RequestParam(value="gender")String gender) throws Exception{
		ModelAndView mav = new ModelAndView();

		String base = "\'"+user.gender+"\',"+"\'"+user.age+"\',"+"\'"+user.season+"\',"+"\'"+user.cost+"\',"+"\'"+user.day+"\',"+"\'"+user.whom+"\',";
		String text=base+" ?";
		System.out.println(text);
		PrintWriter  fw=new PrintWriter(new FileWriter("C:/data/newperson.arff",true));
		fw.print(text);
		fw.close();
		
	
		WekaService service=new WekaService();
		String dest = service.wekaRun();
		System.out.println(dest);
		
		String text2 = base+"\'"+dest+"\'";
		PrintWriter  fw2=new PrintWriter(new FileWriter("C:/data/data3.arff",true));
		fw2.println();
		fw2.print(text2);
		fw2.close();
		
		FileUtils.copyFile(new File("C:/data/spec.arff"),new File("C:/data/newperson.arff"));
		user.dest=dest;
		mav.addObject("USER", user);
		mav.setViewName("/user/recommend.jsp"); 
		return mav;
	}
	
	
	@RequestMapping(value="/start.do")
	public ModelAndView goindex() throws Exception{
		ModelAndView mav = new ModelAndView();
		
		ArrayList<String> topN=bestlist_crawler.top();
		mav.addObject("top",topN);
		
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
