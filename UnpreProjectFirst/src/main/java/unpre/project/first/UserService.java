package unpre.project.first;

import java.util.List;
import java.util.Map;

public interface UserService {

	String create(Map<String, Object> map);

	Map<String, Object> check(Map<String, Object> map);
	
	//마이페이지 정보변경
	boolean edit(Map<String, Object> map);

	//내 게시글 목록
	List<Map<String, Object>> myList(Map<String, Object> map);

}
