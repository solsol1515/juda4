package middleProject.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ResponseBody;

@Repository
public class SalesDAOImpl implements SalesDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;

	public List<Map<String, Object>> getSalesListBy(String year) {
		return mybatis.selectList("Sales.getSalesListBy", year);
	}
	
	

}


/*
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class SalesMapperTests {
	
	@Autowired
	@Setter
	private SalesMapper mapper;

	@Test public void testExist(){ 
		assertNotNull(mapper); log.info(mapper);
	}

	@Test public void testGetSalesList(){
		mapper.getSalesListBy("2021").forEach(log::info);
	}
}
*/