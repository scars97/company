package sample.spring.yes;

import java.util.Map;

public interface BookService {

	String create(Map<String, Object> map);

	Map<String, Object> detail(Map<String, Object> map);
	
}