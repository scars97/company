package unpre.project.first;

import java.util.Map;

public interface UserService {

	String create(Map<String, Object> map);

	Map<String, Object> check(Map<String, Object> map);
	
	boolean edit(Map<String, Object> map);

}
