package bitcom.air.community;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.Scanner;

public class hana {
		
	public static void main(String[] args) {
        try{
          //example.com은 연습으로 사용하기 위한 페이지이다. 간단한 페이지로 소스코드의 양도 적다.
            String urlstr = "http://www.hanatour.com/asp/contents/vote_tour/index.html?hanacode=main_vote_tour";
            //URL 문자열을 처리하기 위해 URL클래스를 이용한다.
            URL url = new URL(urlstr);
            
            
            BufferedReader bf;
            String line;
            String html= "";
           
            
            
            bf = new BufferedReader(new InputStreamReader(url.openStream(),"euc-kr"));
            
            while((line = bf.readLine())!=null){
            	html+=line;
            }
            bf.close();
            

            String startTag = "<strong>";
            String endTag = "</strong>";
            String div="<div class=\"recommandPlace\">";
            int divIndex=html.indexOf(div);
            html=html.substring(divIndex);
            System.out.println("html:"+html);
            		
            while(true){
            	int ccIndex=html.indexOf(startTag);
            	if(ccIndex==-1){
            		break;
            	}
                html=html.substring(ccIndex+startTag.length());
                
                
                int aIndex=html.indexOf("</strong>");
               
                
                String nation=html.substring(0,aIndex);
                System.out.println(nation);
                
                String img="<img src=\"";
                int imgIndex=html.indexOf(img);
                String alt="alt=\"\" />";
                int algIndex=html.indexOf(alt);
                String imgSrc=html.substring(imgIndex, algIndex+alt.length());
                System.out.println(imgSrc);
                
            	
            }
		
   
            
            
	}catch(Exception e){
        System.out.println(e.getMessage());
	}
}
}