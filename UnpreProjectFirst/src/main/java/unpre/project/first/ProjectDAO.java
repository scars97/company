package unpre.project.first;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProjectDAO {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public int insert(Map<String, Object> map) {
		  return this.sqlSessionTemplate.insert("user.insert", map);
		}
	
	public Map<String, Object> select(Map<String, Object> map) {
		  return this.sqlSessionTemplate.selectOne("user.logincheck", map);
		}
}
