package unpre.project.first;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProjectServiceImpl implements ProjectService{
	
	@Autowired
	ProjectDAO projectdao;
	
	@Override
	public String create(Map<String, Object> map) {
	    int affectRowCount = this.projectdao.insert(map);
	    if (affectRowCount ==  1) {
	        return map.get("user_id").toString();
	    }
	    return null;
	}
	
	@Override
	public Map<String, Object> check(Map<String, Object> map){
	    return this.projectdao.select(map);
	}
	
}
