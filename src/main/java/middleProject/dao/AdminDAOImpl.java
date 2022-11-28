//package middleProject.dao;
//
//import org.apache.ibatis.session.SqlSession;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Repository;
//
//import middleProject.domain.AdminVO;
//
//@Repository
//public class AdminDAOImpl {
//
//	@Autowired       //sql쿼리를 사용하기 위해서 의존성을 주입함
//    SqlSession sqlSession;
//	
//	//로그인 체크
//    //id가 null이면 false를 리턴하고 값이 있으면 true를 리턴한다.
//    public boolean loginCheck(AdminVO vo) throws Exception{
//        
//        String name = sqlSession.selectOne("judaMap.adminLoginCheck", vo);
//        
//        //조건식 ? true일때의 값 : false일때의 값
//       return (name==null) ? false : true;
//        
//    }
//	
//}
