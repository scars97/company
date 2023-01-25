package unpre.project.first.write;



import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class WriteDao {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public int insert(Map<String, Object> map) {
		return this.sqlSessionTemplate.insert("board.boardinsert", map);

	}


	// 게시글 상세 메소드
	public Map<String, Object> selectDetail(Map<String, Object> map) {
		return this.sqlSessionTemplate.selectOne("board.select_detail", map);
	}

	// 게시글 수정 메소드
	public int update(Map<String, Object> map) {
		return this.sqlSessionTemplate.update("board.update", map);
	}

	// 게시글 삭제 메소드
	public int delete(Map<String, Object> map) {
		return this.sqlSessionTemplate.delete("board.delete", map);
	}

	// 게시글 목록 메소드
	public List<Map<String, Object>> selectList(Map<String, Object> map) {
		return this.sqlSessionTemplate.selectList("board.select_list", map);
	}
}
