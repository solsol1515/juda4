package middleProject.dao;

import java.util.List;
import java.util.Map;

public interface SalesDAO {
	
	List<Map<String, Object>> getSalesListBy(String year);

}
