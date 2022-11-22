package middleProject.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import middleProject.domain.GoodsTypeVO;
import middleProject.domain.GoodsVO;
import middleProject.domain.LoginVO;
import middleProject.domain.MemberVO;

@Repository("judaDAO")
public class JudaDAOImpl implements JudaDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	// 구경하기
	public List<GoodsVO> getGoodsList(GoodsTypeVO vo) {
		System.out.println(vo);
		return mybatis.selectList("JudaMap.getGoodsList", vo);
	}

	// 가입하기
	public Integer insertMember(MemberVO vo) {
		return mybatis.insert("JudaMap.insertMember", vo);
	}

	// 로그인
	@Override
	public int selectAllLogin(LoginVO vo) {
		return mybatis.selectOne("JudaMap.selectAllLogin", vo);
	}

	@Override
	public LoginVO idCheck(LoginVO vo) {
		return null;
	}
	// 상세 페이지 (수량 증감)
	public GoodsVO getGoods(String goods_id) {
	      return mybatis.selectOne("JudaMap.getGoods", goods_id);
	   }
	
}
