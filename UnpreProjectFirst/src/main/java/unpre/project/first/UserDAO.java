package unpre.project.first;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAO {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public int insert(Map<String, Object> map) {
		  return this.sqlSessionTemplate.insert("user.insert", map);
		}
	
	public Map<String, Object> select(Map<String, Object> map) {
		  return this.sqlSessionTemplate.selectOne("user.logincheck", map);
		}
	
	//마이페이지 정보변경
	public int userupdate(Map<String, Object> map) {
		  return this.sqlSessionTemplate.update("user.userupdate", map);
		}
	
	//내 게시글 목록 메소드
	public List<Map<String, Object>> selectMyList(Map<String, Object> map) {
		return this.sqlSessionTemplate.selectList("board.myboardlist", map);
	}
	
}
