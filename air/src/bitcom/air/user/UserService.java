package bitcom.air.user;

import java.io.File;
import java.io.FileWriter;
import java.io.PrintWriter;

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
	public ModelAndView generateDestination(@RequestParam(value="age")String age,@RequestParam(value="gender")String gender,
			@RequestParam(value="day")String day,@RequestParam(value="cost")String cost,@RequestParam(value="whom")String whom,@RequestParam(value="season")String season) throws Exception{
		ModelAndView mav = new ModelAndView();
		System.out.println(gender);
		String base = "\'"+gender+"\',"+"\'"+age+"\',"+"\'"+season+"\',"+"\'"+cost+"\',"+"\'"+day+"\',"+"\'"+whom+"\',";
		String text=base+" ?";
		System.out.println(text);
		PrintWriter  fw=new PrintWriter(new FileWriter("C:/data/continent.arff",true));
		fw.print(text);
		fw.close();
		
	
		WekaService service=new WekaService();
		String dest = service.wekaRun();
		System.out.println(dest);
		
		String text2 = base+"\'"+dest+"\'";
		PrintWriter  fw2=new PrintWriter(new FileWriter("C:/data/data_continent.arff",true));
		fw2.println();
		fw2.print(text2);
		fw2.close();
		
		String country=generateCountry(dest);
		String city=generateCity(country);
	
		FileUtils.copyFile(new File("C:/data/spec.arff"),new File("C:/data/continent.arff"));
		mav.addObject("age", age);
		mav.addObject("gender", gender);
		mav.addObject("day", day);
		mav.addObject("cost", cost);
		mav.addObject("whom", whom);
		mav.addObject("season", season);
		mav.addObject("dest", dest);
		mav.addObject("country", country);
		mav.addObject("city", city);

		mav.setViewName("/user/recommend.jsp"); 
		return mav;
	}
	

	public String generateCountry(String dest) throws Exception{

		String base = "\'"+dest+"\',";
		String text=base+" ?";
		System.out.println(text);
		PrintWriter  fw=new PrintWriter(new FileWriter("C:/data/country.arff",true));
		fw.print(text);
		fw.close();
		
	
		WekaService service=new WekaService();
		String country = service.wekaRun2();
		System.out.println(country);
		
		String text2 = base+"\'"+country+"\'";
		PrintWriter  fw2=new PrintWriter(new FileWriter("C:/data/data_country.arff",true));
		fw2.println();
		fw2.print(text2);
		fw2.close();
	
		FileUtils.copyFile(new File("C:/data/spec2.arff"),new File("C:/data/country.arff"));
	
		return country;
	}
	
	public String generateCity(String country) throws Exception{

		String base = "\'"+country+"\',";
		String text=base+" ?";
		System.out.println(text);
		PrintWriter  fw=new PrintWriter(new FileWriter("C:/data/city.arff",true));
		fw.print(text);
		fw.close();
		
	
		WekaService service=new WekaService();
		String city = service.wekaRun3();
		System.out.println(city);
		
		String text2 = base+"\'"+city+"\'";
		PrintWriter  fw2=new PrintWriter(new FileWriter("C:/data/data_city.arff",true));
		fw2.println();
		fw2.print(text2);
		fw2.close();
	
		FileUtils.copyFile(new File("C:/data/spec3.arff"),new File("C:/data/city.arff"));
	
		return city;
	}
	
	@RequestMapping(value="/start.do")
	public ModelAndView goindex() throws Exception{
		ModelAndView mav = new ModelAndView();
		
//		ArrayList<String> topN=bestlist_crawler.top();
//		mav.addObject("top",topN);
		
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
