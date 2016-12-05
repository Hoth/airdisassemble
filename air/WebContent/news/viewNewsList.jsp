<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
</head>
<body>
 <h1>국가 검색</h1>
<%--    <form action="/student1/getNewsList.do" method="post">
      검색어<input type="text"  name="keyword"/>
      <input type="submit"  value="검색"/>
   </form>--%>
   
   <c:choose>
      <c:when test="${ITEM!=null}">
         <table width="600" align="center" border="1">
            <tr>
               <td>번호</td>
               <td>제목</td>
               <td>오리지날링크</td>
               
               <td>설명</td>
               <td>발행일</td>
            
               
            </tr>
            
            <c:forEach items="${ITEM}" var="item" 
             varStatus="i">
             <tr>
                <td>${i.count}</td>
                <td>${item.title}</td>
                <td><a href="${item.originallink}">뉴스자세히보기</a></td>
                
                
             
                <td>
                
                ${item.description}
                
                </td>
                <td>${item.pubDate}</td>
                
                   
             </tr>   
             </c:forEach>   
             <c:forEach items="${ITEM2}" var="item2" 
             varStatus="i2">
             <tr>
                <td>${i2.count}</td>
                <td>${item2.title}</td>
                <td><a href="${item2.originallink}">뉴스자세히보기</a></td>
                
                
             
                <td>
                
                ${item2.description}
                
                </td>
                <td>${item2.pubDate}</td>
                
                   
             </tr>   
             </c:forEach>   
                
         </table>
      </c:when>
      <c:otherwise>
         검색 결과가 없습니다.
      </c:otherwise>
   </c:choose>
</body>
</html>