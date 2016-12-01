package bitcom.air.safety.controller;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLEncoder;



import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import bitcom.air.safety.Item;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;



@Controller
public class SafetyService {
	@Resource
	ModelAndView mav;
	@RequestMapping("/getCountrySafetyListForm.do")
	public ModelAndView getCountrySafetyListForm(){
		mav.setViewName("/country1/viewCountrySafetyList.jsp");
		return mav;
		}
	@RequestMapping("/getCountrySafetyList.do")
	public ModelAndView getCountrySafetyList(String keyword)throws Exception{
		String change = URLEncoder.encode(keyword,"UTF-8");
		URL url = new URL("http://apis.data.go.kr/1262000/CountrySafetyService/getCountrySafetyList?ServiceKey=4Ms%2Fb80vhu9ll1bRY4SbEPzUD4nmB0pOTDjqu%2BSQHfzfzRkgPZBXyfz5%2F0SEtR%2B5j9Sx5W71vchAkJ9lQwPQKw%3D%3D&_type=json&title="+change+"&output=json");
		
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
		   
		// System.out.println(xml);
		   
		   JsonObject root = new JsonParser().parse(xml.toString()).getAsJsonObject();
		   JsonObject response=root.getAsJsonObject("response");
		   JsonObject body=response.getAsJsonObject("body");
		   JsonObject items=body.getAsJsonObject("items");
		   //JsonObject item=items.getAsJsonObject("item");
		   JsonArray subnode=items.getAsJsonArray("item");
		   
		   Gson gson = new Gson();
		   ArrayList <Item>itemList=new ArrayList<Item>();
		   for(int i=0;i<subnode.size();i++){
			   Item item=gson.fromJson(subnode.get(i),Item.class);
			   itemList.add(item);
		   }
		   
		  
		   
		 //  Item item1 = gson.fromJson(item,Item.class);
		   
		   
		   mav.addObject("ITEM",itemList);
		   mav.setViewName("/country1/viewCountrySafetyList.jsp");
		   return mav;
		   }

}
