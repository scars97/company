package unpre.project.first;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	UserDAO userdao;
	
	@Override
	public String create(Map<String, Object> map) {
	    int affectRowCount = this.userdao.insert(map);
	    if (affectRowCount ==  1) {
	        return map.get("user_id").toString();
	    }
	    return null;
	}
	
	@Override
	public Map<String, Object> check(Map<String, Object> map){
	    return this.userdao.select(map);
	}
	
	@Override
	public boolean edit(Map<String, Object> map) {
	    int affectRowCount = this.userdao.userupdate(map);
	    return affectRowCount == 1;
	}
}
