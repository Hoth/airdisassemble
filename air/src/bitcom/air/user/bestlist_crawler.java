package bitcom.air.user;


import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.ArrayList;

public class bestlist_crawler {
		
	public static ArrayList<String> top() {
		
		ArrayList<String> topN = new ArrayList<String>();
        try{
          //example.com은 연습으로 사용하기 위한 페이지이다. 간단한 페이지로 소스코드의 양도 적다.
            String urlstr = "https://www.tripadvisor.co.kr/";
            //URL 문자열을 처리하기 위해 URL클래스를 이용한다.
            URL url = new URL(urlstr);

            //소스코드를 가져오기 위한 스트림을 선언한다.
            BufferedReader bf;
            String line;
            String html= "";
            

      //URL클래스의 openStream()함수로 지정한 웹주소의 소스코드를 받아올 수 있다.
            bf = new BufferedReader(new InputStreamReader(url.openStream()));

            while((line=bf.readLine())!=null){
               html+=line;
            }
            
            //스트림을 닫아준다.
            bf.close();
           
         
           
            String city;
            String startTag = "-Vacations.html\">";
            String endTag = "</a></span>";
            String breakPoint = "인기 도시 Top 10";
            int count=0;
            while(true){
            	count++;
            int vacationIndex=html.indexOf(startTag);
            //System.out.println("vacationIndex:"+vacationIndex);
            if(vacationIndex==-1||count>=11){
            	
                  	break;
            }
       
//            html = html.substring(html.indexOf(breakPoint),html.length()-1);
//            city = html.substring(html.indexOf(startTag)+(startTag.length()+2), html.indexOf(endTag));
//            html = html.substring(html.indexOf(endTag)+endTag.length(), html.length()-1);
//            
//            System.out.println(city);
            

            html=html.substring(vacationIndex+startTag.length());
          //  System.out.println("html:"+html);
            int aIndex=html.indexOf("</a>");
            //System.out.println("aIndex:"+aIndex);
//            
            String nation=html.substring(0,aIndex);
           System.out.println(count+"."+nation);
           topN.add(nation);
            }
            
        }catch(Exception e){
            System.out.println(e.getMessage());
        }
    
        return topN;
	}
	
	
}
