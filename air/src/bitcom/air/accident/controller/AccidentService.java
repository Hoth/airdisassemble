package bitcom.air.accident.controller;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLEncoder;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import bitcom.air.accident.Item;
import com.google.gson.Gson;

import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

@Controller
public class AccidentService {
	@Resource
	ModelAndView mav;
	@RequestMapping("/getAccidentListForm.do")
	public ModelAndView getAccidentListForm(){
		mav.setViewName("/country/viewAccidentList.jsp");
		return mav;
		}
	@RequestMapping("/getAccidentList.do")
	public ModelAndView getAccidentList(String keywordd)throws Exception{
		String change = URLEncoder.encode(keywordd,"UTF-8");
		URL url = new URL("http://apis.data.go.kr/1262000/AccidentService/getAccidentList?ServiceKey=4Ms%2Fb80vhu9ll1bRY4SbEPzUD4nmB0pOTDjqu%2BSQHfzfzRkgPZBXyfz5%2F0SEtR%2B5j9Sx5W71vchAkJ9lQwPQKw%3D%3D&_type=json&countryName="+change+"&output=json");
		System.out.println("http://apis.data.go.kr/1262000/AccidentService/getAccidentList?ServiceKey=4Ms%2Fb80vhu9ll1bRY4SbEPzUD4nmB0pOTDjqu%2BSQHfzfzRkgPZBXyfz5%2F0SEtR%2B5j9Sx5W71vchAkJ9lQwPQKw%3D%3D&_type=json&countryName="+change+"&output=json");
		InputStream in = url.openConnection().getInputStream();
		 BufferedReader br=new BufferedReader(new InputStreamReader(in,"UTF-8"));
		 StringBuffer xml=new StringBuffer();
		
		 
		   String line;
		   while(true){
			   line=br.readLine();
			 
			   if(line==null){
		    	   break;
		   }
			   xml.append(line);
		   }
		   
		   
		   System.out.println(xml);
		   JsonObject root = new JsonParser().parse(xml.toString()).getAsJsonObject();
		   JsonObject response=root.getAsJsonObject("response");
		   JsonObject body=response.getAsJsonObject("body");
		   JsonObject items=body.getAsJsonObject("items");
		   JsonObject item=items.getAsJsonObject("item");
		   
           Gson gson = new Gson();
		   
		   Item item1 = gson.fromJson(item,Item.class);
		   
		   mav.addObject("ACCIDENT",item1);
		   mav.setViewName("/country1/viewCountryAccidentList.jsp");
		   return mav;
		   }
	}
		   
		 

		   
		   

