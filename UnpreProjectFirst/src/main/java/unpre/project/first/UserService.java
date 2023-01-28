package unpre.project.first;

import java.util.List;
import java.util.Map;

public interface UserService {
	
	//회원가입 인터페이스
	String create(Map<String, Object> map);

	//로그인 인터페이스
	Map<String, Object> check(Map<String, Object> map);
	
	//마이페이지 정보변경
	boolean edit(Map<String, Object> map);

	//내 게시글 목록
	List<Map<String, Object>> myList(Map<String, Object> map);

//	//마이페이지 정보변경 게시글 닉네임 변경
//	boolean boardNicknameEdit(Map<String, Object> map);

}
