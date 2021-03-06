package bitcom.air.community;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class CommunityDAO {
	private  static String resource= "sqlmap-config.xml";
	private static Reader sqlReader=null;
	static{
		try {
			sqlReader=Resources.getResourceAsReader(resource);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}				
	private static SqlSessionFactory sqlMapper =
			new SqlSessionFactoryBuilder().build(sqlReader);
	
	
	public static ArrayList<Review> selectReviewList() throws Exception{
		SqlSession sqlSession = sqlMapper.openSession(true);
		ArrayList<Review> reviewList = null;
		reviewList = (ArrayList)sqlSession.selectList("selectReviewList");
		sqlSession.close();
		return reviewList;
	}
	
	public static Review selectReview(int r_Num) throws Exception{
		SqlSession sqlSession = sqlMapper.openSession(true);
		ArrayList<Review> r = null;
		r = (ArrayList) sqlSession.selectList("selectReview",r_Num);
		Review rev = null;
		if(r!=null&&r.size()>0){
			rev = r.get(0);
		}
		sqlSession.close();
		return rev;
	}
	public static void deleteReview(int r_Num) throws Exception{
		SqlSession sqlSession = sqlMapper.openSession(true);
		sqlSession.delete("deleteReview",r_Num);
		sqlSession.close();
	}
}
