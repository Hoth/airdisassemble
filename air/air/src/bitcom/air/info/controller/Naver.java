package bitcom.air.info.controller;

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

import bitcom.air.info.Item;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
@Controller
public class Naver {
   @Resource
   ModelAndView mav;
   @RequestMapping("/getNewsListForm.do")
   public ModelAndView getNewsListForm(){
      mav.setViewName("/news/viewNewsList.jsp");
      return mav;
      }
   @RequestMapping("/getNewsList.do")
   public ModelAndView getNewsList() throws Exception {
      // TODO Auto-generated method stub
          ArrayList<Item> itemList = getNews.get("트럼프");
            mav.addObject("ITEM",itemList);
            ArrayList<Item> itemList2 = getNews.get("국제신문");
            mav.addObject("ITEM2",itemList2);
            mav.setViewName("/news/viewNewsList.jsp");
            return mav;
           } 

   }

