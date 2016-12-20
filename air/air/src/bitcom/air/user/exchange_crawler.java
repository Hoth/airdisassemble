
package bitcom.air.user;


import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.ArrayList;

public class exchange_crawler {
		
	public static ArrayList<String> top() {
		
		ArrayList<String> topN = new ArrayList<String>();
        try{
          //example.com은 연습으로 사용하기 위한 페이지이다. 간단한 페이지로 소스코드의 양도 적다.
            String urlstr = "https://www.airbnb.co.kr/";
            //URL 문자열을 처리하기 위해 URL클래스를 이용한다.
            URL url = new URL(urlstr);

            //소스코드를 가져오기 위한 스트림을 선언한다.
            BufferedReader bf;
            String line;
            String html= "";
            

      //URL클래스의 openStream()함수로 지정한 웹주소의 소스코드를 받아올 수 있다.
            bf = new BufferedReader(new InputStreamReader(url.openStream()));

            while((line=bf.readLine())!=null){
            	System.out.println(line);
               html+=line;
            }
            
            //스트림을 닫아준다.
            bf.close();
           
         
           
            String city;
            String startTag = "background-image:url(";
            String endTag = ");\" data-reactid=";
            String breakPoint = "\"image_1kryhnd\" style=\"background";
            
            int count=0;
            
            html = html.substring(html.indexOf(breakPoint)+breakPoint.length(),html.length());
            while(true){
           
            int vacationIndex=html.indexOf(startTag);

            if(vacationIndex==-1||count>=12){
            	
                  	break;
            }
       

            String img=html.substring(vacationIndex+startTag.length(),html.indexOf(endTag));
           System.out.println(img);
           topN.add(img);
           count++;
            }
            
        }catch(Exception e){
            System.out.println(e.getMessage());
        }
    
        return topN;
	}
	
	
}