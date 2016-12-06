package bitcom.air.nation.controller;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLEncoder;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import bitcom.air.nation.Item;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

@Controller
public class CountryBasicService {
	@Resource
	ModelAndView mav;
	@RequestMapping("/getCountryBasicListForm.do")
	public ModelAndView getCountryBasicListForm(){
		mav.setViewName("/country/viewCountryList.jsp");
		return mav;
		}
	@RequestMapping("/getCountryBasicList.do")
	public ModelAndView getCountryBasicList(@RequestParam(value="keyword")String keyword)throws Exception{
		String change = URLEncoder.encode(keyword,"UTF-8");
		URL url = new URL("http://apis.data.go.kr/1262000/CountryBasicService/getCountryBasicList?ServiceKey=4Ms%2Fb80vhu9ll1bRY4SbEPzUD4nmB0pOTDjqu%2BSQHfzfzRkgPZBXyfz5%2F0SEtR%2B5j9Sx5W71vchAkJ9lQwPQKw%3D%3D&_type=json&countryName="+change+"&output=json");
		//System.out.println(change);
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
		   
		   //ArrayList<Item> itemList = new ArrayList<Item>();
		  // for(int i=0;i<subnode.size();i++){
			 //  Item item=gson.fromJson(subnode.get(i),Item.class);   
			//   itemList.add(item);
			//}
		   
		   mav.addObject("ITEM",item1);
		   mav.setViewName("/country/viewCountryList.jsp");
		   return mav;
		   }
	}

	







