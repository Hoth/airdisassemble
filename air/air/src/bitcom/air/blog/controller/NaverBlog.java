package bitcom.air.blog.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import bitcom.air.blog.Item;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
@Controller
public class NaverBlog {
	@Resource
	ModelAndView mav;
	@RequestMapping("/getBlogListForm.do")
	public ModelAndView getBlogListForm(){
		mav.setViewName("/blog/viewBlogList.jsp");
		return mav;
		}
	@RequestMapping("/getBlogList.do")
	public ModelAndView getBlogList(String keyword) throws Exception {
		// TODO Auto-generated method stub
		 String clientId = "eHYOfpZR4LeJ0nWtLYfl";//���ø����̼� Ŭ���̾�Ʈ ���̵�";
	        String clientSecret = "k6Ku9x8l_O";//���ø����̼� Ŭ���̾�Ʈ ��ũ����";
	        
	            String text = URLEncoder.encode(keyword+"여행","UTF-8");
	            String apiURL = "https://openapi.naver.com/v1/search/blog.json?query="+text+"&display=100";
	            URL url = new URL(apiURL);
	            HttpURLConnection con = (HttpURLConnection)url.openConnection();
	            con.setRequestMethod("GET");
	            con.setRequestProperty("X-Naver-Client-Id", clientId);
	            con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
	            int responseCode = con.getResponseCode();
	            BufferedReader br;
	            if(responseCode==200) { // ���� ȣ��
	                br = new BufferedReader(new InputStreamReader(con.getInputStream(),"UTF-8"));
	            } else {  // ���� �߻�
	                br = new BufferedReader(new InputStreamReader(con.getErrorStream(),"UTF-8"));
	            }
	            String inputLine;
	            StringBuffer response = new StringBuffer();
	            while ((inputLine = br.readLine()) != null) {
	                response.append(inputLine);
	            }
	            
	         
	            JsonObject root = new JsonParser().parse(response.toString()).getAsJsonObject();
	 		   
	       
	            JsonArray subnode=root.getAsJsonArray("items");
	         
	 		  Gson gson = new Gson();
	 		  
	 		 ArrayList <Item>itemList=new ArrayList<Item>();
			   for(int i=0;i<subnode.size();i++){
				   Item item=gson.fromJson(subnode.get(i),Item.class);
				   itemList.add(item);
			   }
			   
			   mav.addObject("ITEM5",itemList);
			   mav.setViewName("/country/viewCountryList.jsp");
			   return mav;
	        } 

}
