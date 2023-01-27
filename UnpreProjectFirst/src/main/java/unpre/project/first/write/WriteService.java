package unpre.project.first.write;

import java.util.List;
import java.util.Map;

public interface WriteService {

	String create(Map<String, Object> map);
	
	
	// 게시글 상세 인터페이스
	Map<String, Object> detail(Map<String, Object> map);
	
	// 게시글 수정 인터페이스
	boolean edit(Map<String, Object> map);

	// 게시글 삭제 인터페이스
	boolean remove(Map<String, Object> map);

	// 게시글 목록 인터페이스
	List<Map<String, Object>> list(Map<String, Object> map);

	//내 게시글 목록 업데이트 인터페이스
	List<Map<String, Object>> updateMyBoardList(Map<String, Object> map);
	
}
