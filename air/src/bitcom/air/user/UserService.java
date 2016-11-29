package bitcom.air.user;

import java.io.File;
import java.io.FileWriter;
import java.io.PrintWriter;

import org.apache.commons.io.FileUtils;
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

		String base = "\'"+user.gender+"\',"+"\'"+user.age+"\',"+"\'"+user.season+"\',"+"\'"+user.cost+"\',"+"\'"+user.day+"\',"+"\'"+user.whom+"\',";
		String text=base+" ?";
		System.out.println(text);
		PrintWriter  fw=new PrintWriter(new FileWriter("C:\\Users\\bit-user\\git\\airdisassemble\\air\\newperson.arff",true));
		fw.print(text);
		fw.close();
		
	
		WekaService service=new WekaService();
		String dest = service.wekaRun();
		System.out.println(dest);
		
		String text2 = base+"\'"+dest+"\'";
		PrintWriter  fw2=new PrintWriter(new FileWriter("C:\\Users\\bit-user\\git\\airdisassemble\\air\\data3.arff",true));
		fw2.println();
		fw2.print(text2);
		fw2.close();
		
		FileUtils.copyFile(new File("C:\\Users\\bit-user\\git\\airdisassemble\\air\\spec.arff"),new File("C:\\Users\\bit-user\\git\\airdisassemble\\air\\newperson.arff"));
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
