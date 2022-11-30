package middleProject.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import middleProject.dao.SalesDAO;

@Service
public class SalesServiceImpl implements SalesService {
	
	@Autowired
	private SalesDAO salesDAO; 

	public List<Map<String, Object>> getSalesListBy(String year) {
		return salesDAO.getSalesListBy(year);
	}

}

