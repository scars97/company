package unpre.project.first;

import java.util.Map;

public interface ProjectService {

	String create(Map<String, Object> map);

	Map<String, Object> check(Map<String, Object> map);
	
	String boardcreate(Map<String, Object> map);

	boolean edit(Map<String, Object> map);
	
//	Map<String, Object> load(Map<String, Object> map);

}
