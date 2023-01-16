package sample.spring.yes;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BookServiceImpl implements BookService{
	
	@Autowired
	BookDao bookdao;
	
	@Override
	public String create(Map<String, Object> map) {
		int affectRowCount = this.bookdao.insert(map);
		if(affectRowCount == 1) {
			return map.get("book_id").toString();
		}
		return null;
	}
	
	@Override
	public Map<String, Object> detail(Map<String, Object> map){
		return this.bookdao.selectDetail(map);
	}
}
