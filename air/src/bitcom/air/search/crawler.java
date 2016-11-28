package bitcom.air.search;


import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.Scanner;

public class crawler {
		
	public static void main(String[] args) {
        try{
          //example.com은 연습으로 사용하기 위한 페이지이다. 간단한 페이지로 소스코드의 양도 적다.
            String urlstr = "http://fx.kebhana.com/fxportal/jsp/RS/DEPLOY_EXRATE/23559_0.html";
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
           
            
//            var sentence = "This is one sentence. This is a sentence with a list of items:cherries, oranges, apples, bananas.";
            String nation;
            String sell;
            String buy;
            Scanner scan = new Scanner(System.in);
            String input = scan.nextLine();
            String buyTag = "<td class='buy'>";
            String sellTag = "<td class='sell'>";
            
            
            while(true){
            int start = html.indexOf(input);
            if(html.indexOf(input)==-1){
            	break;
            }
            int end=start;
            end = end + 4;
                        
            nation = html.substring(start, end);
            System.out.println(nation);
            
            html = html.substring(end+4, html.length()-1);
            
            buy= html.substring(html.indexOf(buyTag)+buyTag.length(), html.indexOf("</td>"));
            System.out.println("buy = " + buy);
            
            html = html.substring(html.indexOf("</td>")+4, html.length()-1);
                       
            sell = html.substring(html.indexOf(sellTag)+sellTag.length(), html.indexOf("</td>"));
            System.out.println("sell = " + sell); // 
            
            html = html.substring(end,html.length()-1);
            
            }
           
            
            
            
            
        }catch(Exception e){
            System.out.println(e.getMessage());
        }
    }

	
}
